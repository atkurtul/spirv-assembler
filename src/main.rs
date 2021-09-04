use spirvasm::*;

fn test_bin(src: &str) {

    let module = Module::new(src);

    let mut bin = vec![];

    for inst in module.instr.iter() {
        inst.write_word(&module, &mut bin);
    }

    let module2 = Module::new_code(module.header, &bin);

    assert_eq!(module2.instr.len(), module.instr.len());
    assert_eq!(module2.instr, module.instr);

    // println!("{:#?}", module);
}

fn main() {
    let f = std::env::args().collect::<Vec<_>>();
    test_bin(&f[1]);
}
