#![allow(non_camel_case_types, dead_code, non_upper_case_globals)]
#![feature(type_name_of_val, or_patterns)]
extern crate pest;
#[macro_use]
extern crate pest_derive;

use pest::*;
pub type sstr = &'static str;
#[derive(Parser)]
#[grammar = "grammar.pest"]
struct Asm;

pub mod opcode;
use opcode::*;

use pest::iterators::Pairs;
use std::slice::Iter;

pub type Map<K, V> = fxhash::FxHashMap<K, V>;
pub type Set<K> = fxhash::FxHashSet<K>;

#[derive(Debug, Copy, Clone)]
pub enum Operand {
    Enum(OpKind, u32),
    ID(OpKind, ID),
    Integer(OpKind, u32),
    String(sstr),
    IDInt(ID, u32),
    IntID(u32, ID),
    IDID(ID, ID),
}

#[derive(Debug, Copy, Clone)]
pub enum Token {
    ID(ID),
    Num(u32),
    String(sstr),
    Ident(sstr),
}

impl Operand {
    pub fn params(&self) -> &'static [OpKind] {
        match self {
            Operand::Enum(en, i) => en.get_params(*i),

            _ => &[],
        }
    }

    pub fn get_enum_value(self) -> u32 {
        match self {
            Self::Enum(_, i) => i,
            _ => unreachable!(),
        }
    }

    pub fn get_str(self) -> sstr {
        match self {
            Self::String(s) => s,
            _ => unreachable!(),
        }
    }

    pub fn unwrap_int(self) -> (OpKind, u32) {
        match self {
            Self::Integer(o, i) => (o, i),
            _ => unreachable!(),
        }
    }
    pub fn unwrap_id(self) -> (OpKind, ID) {
        match self {
            Self::ID(o, i) => (o, i),
            _ => unreachable!(),
        }
    }
}

#[derive(Debug, Clone)]
struct Instruction<T = Operand> {
    opc: Opcode,
    ops: Vec<T>,
    res: Option<ID>,
}

#[derive(Debug, Copy, Clone, Hash, PartialEq, Eq)]
pub enum ID {
    Str(&'static str),
    Id(u32),
}

impl ID {
    pub fn new(s: sstr) -> Option<ID> {
        if s.starts_with("%") {
            Some(match s[1..].parse::<u32>() {
                Ok(i) => ID::Id(i),
                _ => ID::Str(&s[1..]),
            })
        } else {
            None
        }
    }
}

#[derive(Debug, Default)]
struct Module {
    ids: Map<ID, (u32, Instruction)>,
    ext: Set<sstr>,
    caps: Set<Capability>,
    vers: sstr,
    insts: Vec<Instruction>,
}

impl Module {
    fn add_capability(&mut self, cap: Capability) {
        self.caps.insert(cap);
        let req = cap.get_requirements();
        for cap in req.capabilities {
            self.add_capability(*cap);
        }
        for ext in req.extensions {
            self.ext.insert(ext);
        }
    }

    fn new(insts: Vec<Instruction<Token>>) -> Self {
        let mut m = Self::default();
        for i in insts.iter() {
            let i = m.map_instruction(i);
            match i.opc {
                Opcode::Capability => {
                    let cap = i.ops[0].get_enum_value();
                    let cap = unsafe { std::mem::transmute(cap) };
                    m.add_capability(cap);
                }
                Opcode::SourceExtension => {
                    m.ext.insert(i.ops[0].get_str());
                }
                _ => (),
            }
            m.insts.push(i);
        }

        for i in m.insts.iter() {
            let req = i.opc.get_requirements();

            let mut ok = req.capabilities.len() == 0;
            for cap in req.capabilities {
                if (m.caps.get(&cap)).is_some() {
                    ok = true;
                    break;
                }
            }

            if !ok {
                panic!(
                    "{:?} requires either of following capabilities: {:?}",
                    i.opc, req.capabilities
                );
            }

            for ext in req.extensions {
                m.ext.get(ext).expect(&format!(
                    "{:?} requires extension {:?}\n{:?}",
                    i.opc, ext, m.ext
                ));
            }
        }

        return m;
    }

    fn map_operand(
        &self,
        op: OpKind,
        tokens: &[Token],
        tokens_idx: usize,
        insert: &mut Vec<Operand>,
    ) -> usize {
        let tok = tokens[tokens_idx];
        let mut bump = 1;
        match (op, tok) {
            (
                OpKind::IdMemorySemantics | OpKind::IdScope | OpKind::IdRef | OpKind::IdResultType,
                Token::ID(id),
            ) => insert.push(Operand::ID(op, id)),

            (OpKind::LiteralExtInstInteger, Token::Ident(s)) => match tokens[tokens_idx - 1] {
                Token::ID(id) => match self.ids.get(&id).unwrap() {
                    (
                        _,
                        Instruction {
                            opc: Opcode::ExtInstImport,
                            ops,
                            ..
                        },
                    ) => insert.push(match ops.as_slice() {
                        [Operand::String("GLSL.std.450")] => {
                            Operand::Integer(op, GLSL450::from_str(s).expect(s) as u32)
                        }
                        [Operand::String("OpenCL.std")] => {
                            Operand::Integer(op, OpenCL::from_str(s).unwrap() as u32)
                        }
                        what => unreachable!("{:?}", what),
                    }),
                    what => unreachable!(),
                },
                _ => panic!(),
            },

            (OpKind::LiteralString, Token::String(s)) => insert.push(Operand::String(s)),

            (OpKind::PairLiteralIntegerIdRef, _) => {
                self.map_operand(OpKind::LiteralInteger, tokens, tokens_idx, insert);
                self.map_operand(OpKind::IdRef, tokens, tokens_idx + 1, insert);
                let (_, r) = insert.pop().unwrap().unwrap_id();
                let (_, l) = insert.pop().unwrap().unwrap_int();
                insert.push(Operand::IntID(l, r));
                bump += 1;
            }

            (OpKind::PairIdRefLiteralInteger, _) => {
                self.map_operand(OpKind::IdRef, tokens, tokens_idx, insert);
                self.map_operand(OpKind::LiteralInteger, tokens, tokens_idx + 1, insert);
                let (_, r) = insert.pop().unwrap().unwrap_int();
                let (_, l) = insert.pop().unwrap().unwrap_id();
                insert.push(Operand::IDInt(l, r));
                bump += 1;
            }

            (OpKind::PairIdRefIdRef, _) => {
                self.map_operand(OpKind::IdRef, tokens, tokens_idx, insert);
                self.map_operand(OpKind::IdRef, tokens, tokens_idx + 1, insert);
                let (_, r) = insert.pop().unwrap().unwrap_id();
                let (_, l) = insert.pop().unwrap().unwrap_id();
                insert.push(Operand::IDID(l, r));
                bump += 1;
            }

            (OpKind::LiteralSpecConstantOpInteger, Token::Ident(s)) => {
                let opc = Opcode::from_str(s).expect(&format!("{:?} {}", op, s));
                insert.push(Operand::Integer(op, opc as u32));
                let it = opc.get_operands()[2..].iter(); // trim result id and result type
                bump += self.map_inst(it, tokens, tokens_idx + 1, insert);
            }

            (op, Token::Ident(s)) => {
                let val = op.from_str(s).expect(&format!("{:?} {}", op, s));
                insert.push(Operand::Enum(op, val))
            }

            (op, Token::Num(i)) => insert.push(Operand::Integer(op, i)),

            what => unreachable!("{:?}", what),
        }
        return bump;
    }

    fn map_inst<'a>(
        &self,
        operands: impl Iterator<Item = &'a (OpKind, Quantifier)>,
        tokens: &[Token],
        mut tokens_idx: usize,
        insert: &mut Vec<Operand>,
    ) -> usize {
        let mark = tokens_idx;
        let mut last = None;
        for (j, q) in operands.cloned() {
            last = Some((j, q));
            if tokens_idx >= tokens.len() {
                if q != Quantifier::None {
                    break;
                }
            }
            tokens_idx += self.map_operand(j, tokens, tokens_idx, insert);
            let params = insert.last().unwrap().params();
            for param in params {
                tokens_idx += self.map_operand(*param, tokens, tokens_idx, insert);
            }
        }

        if let Some((j, Quantifier::List)) = last {
            while tokens_idx != tokens.len() {
                tokens_idx += self.map_operand(j, tokens, tokens_idx, insert);
                let params = insert.last().unwrap().params();
                for param in params {
                    tokens_idx += self.map_operand(*param, tokens, tokens_idx, insert);
                }
            }
        }

        return tokens_idx - mark;
    }

    fn map_instruction(&mut self, inst: &Instruction<Token>) -> Instruction {
        let mut re = Instruction {
            opc: inst.opc,
            ops: vec![],
            res: inst.res,
        };

        let operands = inst.opc.get_operands();
        let mut it = operands.iter().filter(|(o, _)| *o != OpKind::IdResult);

        let idx = self.map_inst(it, &inst.ops, 0, &mut re.ops);

        assert_eq!(idx, inst.ops.len(), "{:?}", inst);

        if let Some(res) = inst.res {
            self.ids
                .insert(res, (self.ids.len() as u32 + 1, re.clone()));
        }

        return re;
    }

    fn encode_opcodes(&self) -> Vec<u32> {
        let mut bin = vec![0x07230203, 0x00010500, 0, self.ids.len() as u32 + 1, 0];
        for inst in self.insts.iter() {
            let mark = bin.len();
            bin.push(0);
            inst.ops
                .iter()
                .for_each(|op| self.encode_operand(*op, &mut bin));
            if let Some(i) = inst.res {
                let idx = mark
                    + if let Some(Operand::ID(OpKind::IdResultType, _)) = inst.ops.get(0) {
                        2
                    } else {
                        1
                    };
                bin.insert(idx, self.get_id_int(i));
            }

            let len = (bin.len() - mark) as u32;
            bin[mark] = (inst.opc as u32) | len << 16;
        }
        bin
    }

    pub fn get_id_int(&self, id: ID) -> u32 {
        self.ids.get(&id).unwrap().0
    }

    pub fn encode_operand(&self, op: Operand, code: &mut Vec<u32>) {
        match op {
            Operand::Enum(_, val) => {
                code.push(val);
            }
            Operand::ID(_, i) => code.push(self.get_id_int(i)),
            Operand::Integer(_, i) => code.push(i),
            Operand::IDID(i, j) => {
                code.push(self.get_id_int(i));
                code.push(self.get_id_int(j));
            }
            Operand::IntID(i, j) => {
                code.push(i);
                code.push(self.get_id_int(j));
            }
            Operand::IDInt(i, j) => {
                code.push(self.get_id_int(i));
                code.push(j);
            }
            Operand::String(s) => {
                let mark = code.len();
                let strlen = (s.len() >> 2) + 1;
                code.resize(mark + strlen, 0);
                unsafe {
                    std::ptr::copy_nonoverlapping(
                        s.as_ptr(),
                        code.as_mut_ptr().offset(mark as isize) as *mut u8,
                        s.len(),
                    );
                }
            }
        }
    }
}

fn parse_source_file(src: sstr) -> Vec<Instruction<Token>> {
    let pairs: Pairs<'static, Rule> =
        Asm::parse(Rule::grammar, src).unwrap_or_else(|e| panic!("{}", e));

    let mut instructions = vec![];

    for pair in pairs {
        if pair.as_rule() == Rule::instruction {
            let mut inst = Instruction {
                opc: Opcode::Nop,
                ops: vec![],
                res: None,
            };

            for (i, pair) in pair.into_inner().into_iter().enumerate() {
                match pair.as_rule() {
                    Rule::id if i == 0 => inst.res = ID::new(pair.as_str()),
                    Rule::id => inst.ops.push(Token::ID(ID::new(pair.as_str()).unwrap())),
                    Rule::num => inst.ops.push(Token::Num(pair.as_str().parse().unwrap())),
                    Rule::neg => inst.ops.push(Token::Num(u32::from_ne_bytes(
                        pair.as_str().parse::<i32>().unwrap().to_ne_bytes(),
                    ))),
                    Rule::float => inst
                        .ops
                        .push(Token::Num(pair.as_str().parse::<f32>().unwrap().to_bits())),
                    Rule::string => {
                        let s = pair.as_str();
                        inst.ops.push(Token::String(&s[1..s.len() - 1]))
                    }
                    Rule::ident | Rule::dim => inst.ops.push(Token::Ident(pair.as_str())),
                    Rule::opcode => inst.opc = Opcode::from_str(&pair.as_str()[2..]).unwrap(),
                    what => unreachable!("{:?}", what),
                }
            }

            instructions.push(inst);
        }
    }
    return instructions;
}

fn assemble_from_str(src: sstr, output: &str) {
    let module = Module::new(parse_source_file(src));

    let bin = module.encode_opcodes();
    let bytes = unsafe { std::slice::from_raw_parts(bin.as_ptr() as *const u8, bin.len() * 4) };

    std::fs::write(output, bytes).unwrap();
}

fn assemble(input: &str, output: &str) {
    let src = std::fs::read_to_string(input).unwrap();
    assemble_from_str(unsafe { std::mem::transmute(src.as_str()) }, output);
}

mod test {
    use crate::*;
    #[test]
    fn test() {
        "-3.50000009e-05".parse::<f32>().unwrap();
        std::fs::create_dir("bin");
        std::fs::create_dir("asm");
        visit_dirs(Path::new("glsl"), &|dir| {
            let file = dir.file_name();
            let path = dir.path();

            let path: String = path.to_str().unwrap().replace("\\", "/");
            let file: &str = file.to_str().unwrap();

            if file.ends_with(".spv") {
                let input = format!("{}", path);
                let src = String::from_utf8(
                    std::process::Command::new("spirv-dis")
                        .arg(&input)
                        .output()
                        .unwrap()
                        .stdout,
                )
                .unwrap();
                let output = format!("bin/{}", path.replace("/", ""));
                let srcc = format!("asm/{}", path.replace("/", "").replace(".spv", ".s"));
                std::fs::write(&srcc, &src);
                assemble_from_str(unsafe { std::mem::transmute(src.as_str()) }, &output);
            }
        });
    }
    use std::fs::{self, DirEntry};
    use std::io;
    use std::path::Path;

    fn visit_dirs(dir: &Path, cb: &dyn Fn(&DirEntry)) -> io::Result<()> {
        if dir.is_dir() {
            for entry in fs::read_dir(dir)? {
                let entry = entry?;
                let path = entry.path();
                if path.is_dir() {
                    visit_dirs(&path, cb)?;
                } else {
                    cb(&entry);
                }
            }
        }
        Ok(())
    }
}

fn main() {

}
