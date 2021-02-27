use fxhash::FxHashMap;
use proc_macro2::TokenStream;
use quote::{format_ident, quote};
use serde::{Deserialize, Serialize};
use serde_json::Value;

pub type Map<K, V> = FxHashMap<K, V>;

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

#[derive(Default, Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
struct Operand {
    category: String,
    kind: String,
    #[serde(default)]
    enumerants: Vec<Enumerant>,
}

#[derive(Default, Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
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

fn parse_instruction_set(
    name: &str,
    prefix: &str,
    cut: usize,
    insts: &[Instruction],
) -> TokenStream {
    let mut keys = vec![];
    let mut values = vec![];
    let mut idents = vec![];
    let mut operands = vec![];
    let mut reqs = vec![];
    let mut map = Map::<u32, String>::default();
    for inst in insts {
        let opc = inst.opcode;
        let key = &inst.opname.as_str()[cut..];
        if let Some(_) = map.get(&opc) {
            continue;
        }
        map.insert(opc, key.to_owned());
        keys.push(key);
        idents.push(format_ident!("{}{}", prefix, key));
        values.push(quote! { #opc });

        let mut ops = vec![];
        let mut caps = vec![];

        for cap in inst.capabilities.iter() {
            let cap = format_ident!("{}", cap);
            caps.push(quote! {
              Capability::#cap
            });
        }

        let vers = &inst.version;
        let ext = &inst.extensions;
        reqs.push(quote! {
          Requirements {
            extensions: &[#(#ext),*],
            capabilities:  &[#(#caps),*],
            version: #vers
          }
        });
        for op in inst.operands.iter() {
            let q = match op.quantifier.as_str() {
                "*" => quote! { List },
                "?" => quote! { Opt },
                _ => quote! { None },
            };
            let op = format_ident!("{}", op.kind);

            ops.push(quote! {
              (OpKind::#op, Quantifier::#q)
            });
        }
        operands.push(quote! { #(#ops),* })
    }

    let name = format_ident!("{}", name);

    quote! {
      #[repr(u32)]
      #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
      pub enum #name {
        #(#idents = #values,)*
      }

      impl #name {

        pub fn from_str(tok: &str)  -> Option<#name>  {
          match tok {
            #(#keys => Some(#name::#idents),)*
            _ => None,
          }
        }

        pub fn get_operands(self) -> &'static [(OpKind, Quantifier)] {
          match self {
            #(#name::#idents => &[#operands]),*
          }
        }

        pub fn get_requirements(self) -> Requirements {
          match self {
            #(#name::#idents => #reqs),*
          }
        }
      }
    }
}

const JSON_SOURCE: &str = "SPIRV-Headers/include/spirv/unified1";
const CORE_GRAMMAR: &str = "spirv.core.grammar.json";
const GLSL450: &str = "extinst.glsl.std.450.grammar.json";
const OPENCL100: &str = "extinst.opencl.std.100.grammar.json";

fn main() {
    let grammar: Grammar = serde_json::from_str(
        &std::fs::read_to_string(&format!("{}/{}", JSON_SOURCE, CORE_GRAMMAR)).unwrap(),
    )
    .unwrap();

    let glsl450: Grammar = serde_json::from_str(
        &std::fs::read_to_string(&format!("{}/{}", JSON_SOURCE, GLSL450)).unwrap(),
    )
    .unwrap();
    let opencl: Grammar = serde_json::from_str(
        &std::fs::read_to_string(&format!("{}/{}", JSON_SOURCE, OPENCL100)).unwrap(),
    )
    .unwrap();
    let insts = parse_instruction_set("Opcode", "", 2, &grammar.instructions);
    let glsl = parse_instruction_set("GLSL450", "", 0, &glsl450.instructions);
    let opencl = parse_instruction_set("OpenCL", "", 0, &opencl.instructions);

    let mut st = quote! {
      #insts
      #glsl
      #opencl
      #[derive(Debug, Copy, Clone, Eq, PartialEq)]
      pub enum Quantifier {
        None, Opt, List
      }

      #[derive(Debug, Copy, Clone, Eq, PartialEq)]
      pub struct Requirements {
        pub extensions:   &'static [&'static str],
        pub capabilities: &'static [Capability],
        pub version:      &'static str,
      }

    };

    let mut operand_kinds = vec![];
    let mut operand_kinds2 = vec![];

    for kind in grammar.operand_kinds {
        let name = format_ident!("{}", kind.kind);
        let mut keys = vec![];
        let mut values = vec![];
        let mut idents = vec![];
        let mut map = Map::<u32, String>::default();
        let mut params = vec![];
        let mut reqs = vec![];
        let mut dupes = vec![];
        for en in kind.enumerants {
            if !kind.category.contains("Enum") && !en.parameters.is_empty() {
                panic!();
            }
            let val = match &en.value {
                Value::String(s) => u32::from_str_radix(&s[2..], 16).expect(s),
                Value::Number(n) => n.as_u64().unwrap() as u32,
                _ => panic!(),
            };
            let key = en.enumerant.clone();
            if let Some(op) = map.get(&val) {
              let key = format_ident!("{}", key);
              let val = format_ident!("{}", op);
                dupes.push(quote! {
                  const #key: #name = #name :: #val;
                });
                continue;
            }
            map.insert(val, key.to_owned());
            idents.push(if (48..58).contains(&en.enumerant.as_bytes()[0]) {
                format_ident!("_{}", en.enumerant)
            } else {
                format_ident!("{}", en.enumerant)
            });
            let param = en.parameters.iter().map(|c| format_ident!("{}", c.kind));

            let mut caps = vec![];

            for cap in en.capabilities.iter() {
                let cap = format_ident!("{}", cap);
                caps.push(quote! {
                  Capability::#cap
                });
            }
            let ext = &en.extensions;
            let vers = en.version;
            reqs.push(quote! {
              Requirements {
                extensions: &[#(#ext),*],
                capabilities:  &[#(#caps),*],
                version: #vers
              }
            });

            keys.push(key);
            values.push(val);
            params.push(quote! { #(OpKind::#param),*});
        }

        operand_kinds.push(format_ident!("{}", kind.kind));
        st = match kind.category.as_str() {
            "Id" | "Literal" | "Composite" => {
                continue;
            }
            _ => quote! {
              #st
              #[repr(u32)]
              #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
              pub enum #name {
                #(#idents = #values),*
              }

              impl #name {
                #(#dupes)*
              }

              impl #name {
                pub fn params(self) -> &'static [OpKind] {
                  match self {
                    #(#name :: #idents => &[#params]),*
                  }
                }

                pub fn get_requirements(self) -> Requirements {
                  match self {
                    #(#name::#idents => #reqs),*
                  }
                }

              }

              impl EnumValue for #name {
                fn from_str(tok: &str) -> Option<#name> {
                  match tok {
                    #(#keys => Some(#name::#idents),)*
                    _ => None,
                  }
                }
              }
            },
        };
        operand_kinds2.push(format_ident!("{}", kind.kind));
    }

    let st = quote! {
      #st
      pub trait EnumValue: Sized {
        pub fn from_str(tok: &str) -> Option<Self>;
      }

      #[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
      pub enum OpKind {
        #(#operand_kinds,)*
      }

      impl OpKind {
        pub fn from_str(self, s: &str) -> Option<u32> {
          match self {
            #(OpKind:: #operand_kinds2 => #operand_kinds2 ::from_str(s).map(|r| r as u32),)*
            _ => None
          }
        }

        pub fn get_params(self, val: u32) -> &'static [OpKind] {
          match self {
            #(OpKind:: #operand_kinds2 => unsafe { std::mem::transmute::<u32, #operand_kinds2>(val) }.params(),)*
            _ => &[]
          }
        }
      }
    };

    std::fs::write("src/opcode.rs", st.to_string()).unwrap();
    std::process::Command::new("rustfmt")
        .arg("src/opcode.rs")
        .output()
        .unwrap();
    println!("cargo:rerun-if-changed=src/build.rs");
}
