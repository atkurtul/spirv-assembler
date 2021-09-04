#![feature(drain_filter)]
#![allow(warnings)]
use fxhash::FxHashMap;
use fxhash::FxHashSet;
use proc_macro2::{Ident, Literal, TokenStream};
use quote::{format_ident, quote};
use serde::{Deserialize, Serialize};
use serde_json::Value;

pub type Map<K, V> = FxHashMap<K, V>;
pub type Set<K> = FxHashSet<K>;

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Parameter {
    kind: String,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Enumerant {
    enumerant: String,
    value: Value,
    #[serde(default)]
    version: String,
    #[serde(default)]
    extensions: Vec<String>,
    #[serde(default)]
    capabilities: Vec<String>,
    #[serde(default)]
    doc: String,
    #[serde(default)]
    parameters: Vec<Parameter>,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Operand {
    category: String,
    kind: String,
    #[serde(default)]
    enumerants: Vec<Enumerant>,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct OperandRef {
    kind: String,
    #[serde(default)]
    quantifier: String,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Instruction {
    opname: String,
    #[serde(default)]
    class: String,
    opcode: u32,
    #[serde(default)]
    operands: Vec<OperandRef>,
    #[serde(default)]
    version: String,
    #[serde(default)]
    extensions: Vec<String>,
    #[serde(default)]
    capabilities: Vec<String>,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Grammar {
    instructions: Vec<Instruction>,
    #[serde(default)]
    operand_kinds: Vec<Operand>,
}

fn filter_kind(kind: &str, q: &str) -> TokenStream {
    let mut str = kind.replace("LiteralString", "String");
    if str.starts_with("Literal") {
        str = "u32".to_owned();
    };
    let t = format_ident!("{}", str);
    let t = match kind {
        "PairIdRefIdRef" => quote! { (ID, ID) },
        "PairIdRefLiteralInteger" => quote! { (ID, u32) },
        "PairLiteralIntegerIdRef" => quote! { (u32, ID) },
        "IdRef" => quote! { ID },
        "IdResult" => quote! { ResultID },
        "IdResultType" => quote! { TypeID },
        "IdScope" => quote! { ScopeID },
        "IdMemorySemantics" => quote! { MemorySemanticsID },
        _ => quote! { #t },
    };
    match q {
        "?" => quote! { Option<#t> },
        "*" => quote! { Vec<#t> },
        _ => quote! { #t },
    }
}

impl Instruction {
    pub fn id(&self, trim: bool) -> TokenStream {
        let id = format_ident!(
            "{}",
            if trim {
                &self.opname[2..]
            } else {
                self.opname.as_str()
            }
        );
        quote! { #id }
    }

    pub fn get_args<'a>(&'a self) -> Box<Iterator<Item = TokenStream> + 'a> {
        let re = self
            .operands
            .iter()
            .map(|e| filter_kind(&e.kind, &e.quantifier));
        Box::new(re)
    }

    pub fn write_match(&self, vars: &[Ident], trim: bool) -> TokenStream {
        let id = self.id(trim);
        let args = &vars[..self.operands.len()];
        quote! {
          #id(#(#args,)*) => {
            #(#args.write_word(env, sink);)*
          }
        }
    }

    pub fn write_spec(&self, vars: &[Ident], trim: bool) -> TokenStream {
        let id = self.id(trim);
        let opc = Literal::u32_unsuffixed(self.opcode);
        let args = &vars[..self.operands.len() - 2];
        quote! {
          #id(_,_,#(#args,)*) => {
            #(#args.write_word(env, sink);)*
          }
        }
    }

    pub fn write_read(&self, vars: &[Ident], trim: bool, insert: bool) -> TokenStream {
        let id = self.id(trim);
        let opc = Literal::u32_unsuffixed(self.opcode);
        let args = &vars[..self.operands.len()];

        let returns = if !insert {
            quote! { #id(#(#args,)*) }
        } else {
            quote! { env.insert_op(#id(#(#args,)*)) }
        };

        let produced_id = match &self.operands[..] {
            [OperandRef { ref kind, .. }, ..] if kind == "IdResult" => {
                quote! {
                  env.insert_id(x0);
                }
            }
            [_, OperandRef { ref kind, .. }, ..] if kind == "IdResult" => {
                quote! {
                  env.insert_id(x1);
                }
            }
            _ => quote! {},
        };

        quote! {
          #opc => {
            #(let #args = Writer::read_word(chunk, env, idx); )*
            #produced_id
            #returns
          }
        }
    }

    pub fn write_read_spec(&self, vars: &[Ident], trim: bool) -> TokenStream {
        let id = self.id(trim);
        let opc = Literal::u32_unsuffixed(self.opcode);
        let args = &vars[..self.operands.len() - 2];
        quote! {
          #opc => {
            #(let #args = Writer::read_word(chunk, env, idx); )*
            #id(ty, id, #(#args,)*)
          }
        }
    }

    pub fn write_as_enum(&self, trim: bool) -> TokenStream {
        if self.opname.as_str() == "OpSpecConstantOp" {
            return quote! {
              SpecConstantOp(TypeID, ResultID, Box<Opcode>) = 52
            };
        }

        let id = self.id(trim);
        let args = self.get_args();
        let opc = Literal::u32_unsuffixed(self.opcode);
        quote! {  #id (#(#args,)*) = #opc }
    }

    pub fn write_test(&self, vars: &[Ident], trim: bool) -> TokenStream {
        let id = self.id(trim);
        let opc = Literal::u32_unsuffixed(self.opcode);
        let args = &vars[..self.operands.len()];
        quote! {
          unsafe {
            #(let #args = transmute_copy(&[0u8;size_of::<Self>()]); )*
            let variant = #id(#(#args,)*);
            let disc: u32 = transmute(discriminant(&variant));
            assert_eq!(disc, #opc);
          }
        }
    }
}

impl Enumerant {
    pub fn id(&self) -> TokenStream {
        let p = if self.enumerant.chars().nth(0).unwrap().is_digit(10) {
            "_"
        } else {
            ""
        };
        let id = format_ident!("{}{}", p, self.enumerant);
        quote! { #id }
    }

    pub fn get_args<'a>(&'a self) -> Box<Iterator<Item = TokenStream> + 'a> {
        let re = self.parameters.iter().map(|p| filter_kind(&p.kind, ""));
        Box::new(re)
    }

    pub fn value(&self) -> u32 {
        match &self.value {
            Value::String(s) => u32::from_str_radix(&s[2..], 16).expect(s),
            Value::Number(n) => n.as_u64().unwrap() as u32,
            _ => panic!(),
        }
    }

    pub fn write_as_enum(&self) -> TokenStream {
        let id = self.id();
        let args = self.get_args();
        let opc = Literal::u32_unsuffixed(self.value());
        quote! {  #id (#(#args,)*) = #opc }
    }

    pub fn write_test(&self, vars: &[Ident]) -> TokenStream {
        let id = self.id();
        let opc = Literal::u32_unsuffixed(self.value());
        let args = &vars[..self.parameters.len()];
        quote! {
          unsafe {
            #(let #args = transmute_copy(&[0u8;size_of::<Self>()]); )*
            let variant = #id(#(#args,)*);
            let disc: u32 = transmute(discriminant(&variant));
            assert_eq!(disc, #opc);
          }
        }
    }

    pub fn write_read(&self, vars: &[Ident]) -> TokenStream {
        let id = self.id();
        let opc = Literal::u32_unsuffixed(self.value());
        let args = &vars[..self.parameters.len()];
        quote! {
          #opc => {
            #(let #args = Writer::read_word(chunk, env, idx); )*
            #id(#(#args,)*)
          }
        }
    }

    pub fn write_match(&self, vars: &[Ident]) -> TokenStream {
        let id = self.id();
        let args = &vars[..self.parameters.len()];
        quote! {
          #id(#(#args,)*) => {
            #(#args.write_word(env, sink);)*
          }
        }
    }
}

impl Operand {
    pub fn id(&self) -> TokenStream {
        let id = format_ident!("{}", self.kind);
        quote! { #id }
    }
    pub fn write_enumerants(&mut self, vars: &[Ident]) -> TokenStream {
        let mut opc = Set::default();
        let dups: Vec<_> = self
            .enumerants
            .drain_filter(|i| !opc.insert(i.value()))
            .collect();
        let inst = self.enumerants.iter().map(|i| i.write_as_enum());
        let id = self.id();

        let reader = self.enumerants.iter().map(|e| e.write_read(&vars));

        let matcher = self
            .enumerants
            .iter()
            .filter(|i| !i.parameters.is_empty())
            .map(|i| i.write_match(&vars));

        quote! {
          #[repr(u32)]
          #[derive(Debug, Clone, Eq, PartialEq)]
          pub enum #id {
            #(#inst),*
          }

          impl #id {
            pub fn opcode(&self) -> u32 {
              unsafe { std::mem::transmute_copy(self) }
            }
          }

          impl<Env: Environ> Writer<Env> for #id {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              use #id :: *;
              sink.push(self.opcode());
              match self {
                #(#matcher,)*
                _ => ()
              }
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {

              use #id ::*;
              *idx += 1;
              match chunk[*idx as usize - 1] {
                #(#reader,)*
                _ => panic!()
              }
            }
          }
        }
    }

    pub fn write_test(&self, vars: &[Ident]) -> TokenStream {
        let name = format_ident!("test_{}", self.kind);
        let id = self.id();
        let tester = self.enumerants.iter().map(|e| e.write_test(&vars));
        quote! {
          #[test]
          pub fn #name() {
            use #id ::*;
            use std::mem::*;
            #(#tester)*
          }
        }
    }
}

fn write_ext(name: &str, src: &str) -> TokenStream {
    let mut ext: Grammar = serde_json::from_str(&std::fs::read_to_string(src).unwrap()).unwrap();

    let vars: Vec<_> = (0..30usize).map(|i| format_ident!("x{}", i)).collect();
    let mut opc = Set::default();

    let dups: Vec<_> = ext
        .instructions
        .drain_filter(|i| !opc.insert(i.opcode))
        .collect();

    let inst = ext.instructions.iter().map(|i| i.write_as_enum(false));
    let matcher = ext.instructions.iter().map(|i| i.write_match(&vars, false));
    let reader = ext
        .instructions
        .iter()
        .map(|i| i.write_read(&vars, false, false));

    let name = format_ident!("{}", name);

    quote! {
      pub use crate::*;

      #[repr(u32)]
      #[derive(Debug, Clone, Eq, PartialEq)]
      pub enum #name {
        #(#inst),*
      }

      impl #name {
        pub fn opcode(&self) -> u32 {
          unsafe { std::mem::transmute_copy(self) }
        }

        pub fn read_word<Env: Environ + std::fmt::Debug>(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
          use #name::*;
  
          let mask = u16::MAX as usize;
          let len = (chunk[*idx] >> 16) as usize & mask;
          let opc = chunk[*idx] as usize & mask;
          let chunk = &chunk[..*idx + len];
          let mark = *idx;
          *idx += 1;
          let re = match opc {
            #(#reader,)*
            wtf => panic!("{}", wtf)
          };
          assert_eq!(*idx - mark, len);
          re
        }

        pub fn write_word<Env: Environ>(&self, env: &Env, sink: &mut Vec<u32>) {
            use #name::*;
            let mark = sink.len();
            sink.push(self.opcode());
            match self {
              #(#matcher,)*
            }
            sink[mark] |= ((sink.len() - mark) as u32) << 16;
        }
      }

    }
}

fn main() {
    let mut grammar: Grammar =
        serde_json::from_str(&std::fs::read_to_string("src/spirv.core.grammar.json").unwrap())
            .unwrap();

    let specops_set = get_specops();

    let mut opc = Set::default();

    let dups: Vec<_> = grammar
        .instructions
        .drain_filter(|i| !opc.insert(i.opcode))
        .collect();

    let vars: Vec<_> = (0..30usize).map(|i| format_ident!("x{}", i)).collect();
    let inst = grammar.instructions.iter().map(|i| i.write_as_enum(true));
    let filter0 = grammar
        .instructions
        .iter()
        .filter(|i| i.opname.as_str() != "OpSpecConstantOp");
    let filter1 = grammar
        .instructions
        .iter()
        .filter(|i| specops_set.get(&i.opname.as_str()[2..]).is_some());

    let matcher = filter0.clone().map(|i| i.write_match(&vars, true));
    let spec_matcher = filter1.clone().map(|i| i.write_spec(&vars, true));

    let reader = filter0.clone().map(|i| i.write_read(&vars, true, true));
    let specops = filter1.clone().map(|i| i.write_read_spec(&vars, true));

    let ops = grammar
        .operand_kinds
        .iter_mut()
        .filter(|i| i.category.contains("Enum"))
        .map(|i| i.write_enumerants(&vars));

    std::fs::write(
        "src/opcode.rs",
        quote! {
          #![feature(arbitrary_enum_discriminant)]

          #[repr(u32)]
          #[derive(Debug, Clone, Eq, PartialEq)]
          pub enum Opcode {
            #(#inst),*
          }

          impl Opcode {
            pub fn opcode(&self) -> u32 {
              unsafe { std::mem::transmute_copy(self) }
            }

            fn read_as_spec_op<Env: Environ>(ty: TypeID, id: ResultID, chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              use Opcode::*;
              let i = *idx as usize;
              let mask = u16::MAX as u32;;
              let opc = chunk[i] & mask;
              *idx += 1;
              match opc {
                #(#specops,)*
                wtf => panic!("{}", wtf)
              }
            }

            pub fn read_word<Env: Environ + std::fmt::Debug>(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              use Opcode::*;
              let mask = u16::MAX as usize;
              let len = (chunk[*idx] >> 16) as usize & mask;
              let opc = chunk[*idx] as usize & mask;
              let chunk = &chunk[..*idx + len];
              let mark = *idx;
              *idx += 1;
              let re = match opc {
                #(#reader,)*
                52 => {
                  let x0 = Writer::read_word(chunk, env, idx);
                  let x1 = Writer::read_word(chunk, env, idx);
                  let x2 = Opcode::read_as_spec_op(x0, x1, chunk, env, idx);
                  env.insert_op(SpecConstantOp(x0, x1, Box::new(x2)))
                }
                wtf => panic!("{}", wtf)
              };
              assert_eq!(*idx - mark, len, "{:?}", env);
              re
            }

            pub fn write_as_spec_op<Env: Environ>(&self, env: &Env, sink: &mut Vec<u32>) {
              use Opcode::*;
              let mark = sink.len();
              sink.push(self.opcode());
              match self {
                #(#spec_matcher,)*
                _ => panic!()
              }
            }

            pub fn write_word<Env: Environ>(&self, env: &Env, sink: &mut Vec<u32>) {
                use Opcode::*;
                let mark = sink.len();
                sink.push(self.opcode());
                match self {
                  #(#matcher,)*
                  SpecConstantOp(x0, x1, x2) => {
                    x0.write_word(env, sink);
                    x1.write_word(env, sink);
                    x2.write_as_spec_op(env, sink);
                  }
                }
                sink[mark] |= ((sink.len() - mark) as u32) << 16;
            }
          }

          #(#ops)*

          pub trait Environ {
            fn insert_id(&mut self, i: ResultID);
            fn insert_op(&mut self, opc: Opcode) -> Opcode;
          }

          pub trait Writer<Env: Environ> {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {}
            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self;
          }

          impl<Env: Environ, T: Writer<Env>> Writer<Env> for Option<T> {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              self.as_ref().map(|t| t.write_word(env, sink));
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              if *idx < chunk.len() {
                Some(T::read_word(chunk, env, idx))
              } else {
                None
              }
            }
          }

          impl<Env: Environ, T: Writer<Env>, U: Writer<Env>> Writer<Env> for (T, U) {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              self.0.write_word(env, sink);
              self.1.write_word(env, sink);
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              let t = T::read_word(chunk, env, idx);
              let u = U::read_word(chunk, env, idx);
              (t,u)
            }

          }

          impl<Env: Environ, T: Writer<Env>> Writer<Env> for Vec<T> {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              self.iter().for_each(|t| t.write_word(env, sink));
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              let mut re = vec![];
              while *idx < chunk.len() {
                re.push(T::read_word(chunk, env, idx));
              }
              re
            }
          }

          impl<Env: Environ> Writer<Env> for u32 {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              sink.push(*self);
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              *idx += 1;
              chunk[*idx as usize - 1]
            }
          }

          impl<Env: Environ> Writer<Env> for String {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              let mark = sink.len();
              let strlen = (self.len() >> 2) + 1;
              sink.resize(mark + strlen, 0);
              unsafe {
                  std::ptr::copy_nonoverlapping(
                      self.as_ptr(),
                      sink.as_mut_ptr().offset(mark as isize) as *mut u8,
                      self.len(),
                  );
              }
            }

            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              let chunk = &chunk[*idx as usize..];
              let mut len = 0;
              'outer: for u in chunk {
                for u in u.to_le_bytes().iter() {
                  if *u == 0 {
                    break 'outer;
                  }
                  len += 1;
                }
              }
              let offset = (len >> 2) + 1;
              *idx += offset;
              unsafe {
                let s = std::slice::from_raw_parts((chunk.as_ptr() as * const u8), len as usize);
                std::str::from_utf8(s).unwrap().to_owned()
              }
            }
          }


          impl<Env: Environ, T: From<ID> + Into<ID> + Copy> Writer<Env> for T {
            fn write_word(&self, env: &Env, sink: &mut Vec<u32>) {
              let word: ID = (*self).into();
              sink.push(word.0);
            }
            fn read_word(chunk: &[u32], env: &mut Env, idx: &mut usize) -> Self {
              let id = ID(chunk[*idx as usize]);
              *idx += 1;
              Self::from(id)
            }
          }
          impl From<ID> for ResultID { fn from(id: ID) -> Self { Self(id) }}
          impl From<ID> for TypeID { fn from(id: ID) -> Self { Self(id) }}
          impl From<ID> for ScopeID { fn from(id: ID) -> Self { Self(id) }}
          impl From<ID> for MemorySemanticsID { fn from(id: ID) -> Self { Self(id) }}

          impl Into<ID> for ResultID { fn into(self) -> ID { self.0 }}
          impl Into<ID> for TypeID { fn into(self) -> ID { self.0 }}
          impl Into<ID> for ScopeID { fn into(self) -> ID { self.0 }}
          impl Into<ID> for MemorySemanticsID { fn into(self) -> ID { self.0 }}

          #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash, Default, Ord, PartialOrd)]  pub struct ID(u32);
          #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash, Default, Ord, PartialOrd)]  pub struct ScopeID(ID);
          #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash, Default, Ord, PartialOrd)]  pub struct MemorySemanticsID(ID);
          #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash, Default, Ord, PartialOrd)]  pub struct TypeID(ID);
          #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash, Default, Ord, PartialOrd)]  pub struct ResultID(ID);

        }
        .to_string(),
    )
    .unwrap();

    let tester = grammar
        .instructions
        .iter()
        .map(|i| i.write_test(&vars, true));
    let tester2 = grammar.operand_kinds.iter().map(|i| i.write_test(&vars));

    let tests = quote! {
      use crate::opcode::*;
      #[test]
      pub fn test() {
        use Opcode::*;
        use std::mem::*;
        #(#tester)*
      }

      #(#tester2)*
    }
    .to_string();

    std::fs::write("src/test.rs", &tests);

    std::fs::write(
        "src/glsl450.rs",
        &write_ext("GLSL450", "src/extinst.glsl.std.450.grammar.json").to_string(),
    );

    std::fs::write(
        "src/opencl100.rs",
        &write_ext("OpenCL100", "src/extinst.opencl.std.100.grammar.json").to_string(),
    );

    std::process::Command::new("rustfmt")
        .arg("src/opcode.rs")
        .arg("src/test.rs")
        .arg("src/glsl450.rs")
        .arg("src/opencl100.rs")
        .output()
        .unwrap();

    println!("cargo:rerun-if-changed=src/build.rs");
}

pub fn get_specops() -> Set<&'static str> {
    vec![
        "SConvert",
        "UConvert",
        "FConvert",
        "SNegate",
        "Not",
        "IAdd",
        "ISub",
        "IMul",
        "UDiv",
        "SDiv",
        "UMod",
        "SRem",
        "SMod",
        "ShiftRightLogical",
        "ShiftRightArithmetic",
        "ShiftLeftLogical",
        "BitwiseOr",
        "BitwiseXor",
        "BitwiseAnd",
        "VectorShuffle",
        "CompositeExtract",
        "CompositeInsert",
        "LogicalOr",
        "LogicalAnd",
        "LogicalNot",
        "LogicalEqual",
        "LogicalNotEqual",
        "Select",
        "IEqual",
        "INotEqual",
        "ULessThan",
        "SLessThan",
        "UGreaterThan",
        "SGreaterThan",
        "ULessThanEqual",
        "SLessThanEqual",
        "UGreaterThanEqual",
        "SGreaterThanEqual",
        "QuantizeToF16",
        "ConvertFToS",
        "ConvertSToF",
        "ConvertFToU",
        "ConvertUToF",
        "UConvert",
        "ConvertPtrToU",
        "ConvertUToPtr",
        "GenericCastToPtr",
        "PtrCastToGeneric",
        "Bitcast",
        "FNegate",
        "FAdd",
        "FSub",
        "FMul",
        "FDiv",
        "FRem",
        "FMod",
        "AccessChain",
        "InBoundsAccessChain",
        "PtrAccessChain",
        "InBoundsPtrAccessChain",
    ]
    .into_iter()
    .collect()
}
