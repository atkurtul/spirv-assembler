use spirvasm::*;


fn test_bin(src: &str) {
  let mut module = Module::new(src);
  let mut bin = vec![];
  let mut ops = vec![];
  for inst in module.instr.iter() {
      inst.write_word(&module, &mut bin);
  }
  let mut idx = 0;
  while idx < bin.len() as u32 {
      ops.push(Opcode::read_word(&bin, &mut module, &mut idx));
  }
  assert_eq!(ops, module.instr);
}


fn main() {
  let f = std::env::args().collect::<Vec<_>>();
  test_bin(&f[1]);
}