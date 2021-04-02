#![allow(non_camel_case_types, dead_code, non_upper_case_globals)]
#![allow(warnings)]
#![feature(arbitrary_enum_discriminant, core_intrinsics)]
pub mod opcode;
pub mod glsl450;
pub mod opencl100;

use std::{env::Args, fs::read};

pub use opcode::*;
pub type Sstr = &'static str;

fn read_spirv(src: &str) -> Box<[u32]> {
    let mut src = std::fs::read(src).unwrap();
    src.shrink_to_fit();
    let mut src = unsafe {
        let v = Vec::from_raw_parts(src.as_ptr() as *mut u32, src.len() >> 2, src.len() >> 2);
        std::mem::forget(src);
        v
    };

    if src[0] != 0x07230203 {
        for word in src.iter_mut() {
            *word = word.swap_bytes();
        }
    }

    assert_eq!(src[0], 0x07230203);

    src.into_boxed_slice()
}

impl Environ for Module {
    fn get_id_word(&self, id: ID) -> u32 {
        match id {
            ID::Int(i) => i,
            _ => 0,
        }
    }
    fn insert_id(&mut self, id: u32) -> u32 {
        id
    }
}

#[derive(Default, Debug, Clone)]
pub struct Header {
    pub magic: u32,
    pub version: u32,
    pub generator: u32,
    pub bound: u32,
    pub schema: u32,
}

impl Header {
    pub fn new(bin: &[u32]) -> Header {
        Header {
            magic: bin[0],
            version: bin[1],
            generator: bin[2],
            bound: bin[3],
            schema: bin[4],
        }
    }
}

#[derive(Default, Debug, Clone)]
pub struct Module {
    pub src: Box<[u32]>,
    pub header: Header,
    pub instr: Vec<Opcode>,
}

impl Module {
    pub fn new(src: &str) -> Module {
        let src = read_spirv(src);
        let header = Header::new(&src[..5]);
        let mut instr = vec![];
        let chunk = &src[5..];
        let mut idx = 0;
        let mut module = Module::default();
        while idx < chunk.len() as u32 {
          let opc = Opcode::read_word(chunk, &mut module, &mut idx);
          instr.push(opc);
        }
        Module {src, header, instr}
    }
}
