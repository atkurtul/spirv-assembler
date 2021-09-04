use crate::opcode::*;
#[test]
pub fn test() {
    use std::mem::*;
    use Opcode::*;
    unsafe {
        let variant = Nop();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Undef(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SourceContinued(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Source(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SourceExtension(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Name(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemberName(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = String(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Line(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Extension(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExtInstImport(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExtInst(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemoryModel(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = EntryPoint(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExecutionMode(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Capability(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeVoid(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeBool(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeInt(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 21);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeFloat(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeVector(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeMatrix(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeImage(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeSampler(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 26);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeSampledImage(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeArray(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeRuntimeArray(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeStruct(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeOpaque(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypePointer(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeFunction(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeEvent(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeDeviceEvent(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 35);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeReserveId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeQueue(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypePipe(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeForwardPointer(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantTrue(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 41);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantFalse(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 42);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Constant(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 43);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantComposite(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 44);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantSampler(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 45);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantNull(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 46);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstantTrue(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 48);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstantFalse(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 49);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstant(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 50);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstantComposite(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 51);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstantOp(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 52);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Function(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 54);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionParameter(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 55);
    }
    unsafe {
        let variant = FunctionEnd();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 56);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionCall(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 57);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Variable(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 59);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageTexelPointer(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 60);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Load(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 61);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Store(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 62);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CopyMemory(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 63);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CopyMemorySized(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AccessChain(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 65);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = InBoundsAccessChain(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 66);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrAccessChain(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 67);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArrayLength(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 68);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GenericPtrMemSemantics(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 69);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = InBoundsPtrAccessChain(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 70);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Decorate(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 71);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemberDecorate(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 72);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DecorationGroup(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 73);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupDecorate(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 74);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupMemberDecorate(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 75);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VectorExtractDynamic(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 77);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VectorInsertDynamic(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 78);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VectorShuffle(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 79);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CompositeConstruct(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 80);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CompositeExtract(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 81);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CompositeInsert(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 82);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CopyObject(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 83);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Transpose(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 84);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SampledImage(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 86);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleImplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 87);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleExplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 88);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleDrefImplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 89);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleDrefExplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 90);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleProjImplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 91);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleProjExplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 92);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleProjDrefImplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 93);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleProjDrefExplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 94);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageFetch(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 95);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageGather(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 96);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageDrefGather(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 97);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageRead(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 98);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageWrite(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 99);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Image(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 100);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQueryFormat(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 101);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQueryOrder(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 102);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQuerySizeLod(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 103);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQuerySize(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 104);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQueryLod(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 105);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQueryLevels(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 106);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageQuerySamples(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 107);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertFToU(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 109);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertFToS(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 110);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertSToF(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 111);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertUToF(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 112);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UConvert(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 113);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SConvert(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 114);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FConvert(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 115);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = QuantizeToF16(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 116);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertPtrToU(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 117);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SatConvertSToU(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 118);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SatConvertUToS(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 119);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertUToPtr(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 120);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrCastToGeneric(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 121);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GenericCastToPtr(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 122);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GenericCastToPtrExplicit(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 123);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Bitcast(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 124);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SNegate(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 126);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FNegate(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 127);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IAdd(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 128);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FAdd(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 129);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ISub(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 130);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FSub(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 131);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IMul(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 132);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FMul(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 133);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UDiv(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 134);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SDiv(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 135);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FDiv(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 136);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UMod(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 137);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SRem(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 138);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SMod(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 139);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FRem(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 140);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FMod(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 141);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VectorTimesScalar(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 142);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MatrixTimesScalar(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 143);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VectorTimesMatrix(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 144);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MatrixTimesVector(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 145);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MatrixTimesMatrix(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 146);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = OuterProduct(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 147);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Dot(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 148);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IAddCarry(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 149);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ISubBorrow(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 150);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UMulExtended(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 151);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SMulExtended(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 152);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Any(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 154);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = All(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 155);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsNan(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 156);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsInf(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 157);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsFinite(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 158);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsNormal(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 159);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SignBitSet(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 160);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LessOrGreater(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 161);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Ordered(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 162);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Unordered(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 163);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LogicalEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 164);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LogicalNotEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 165);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LogicalOr(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 166);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LogicalAnd(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 167);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LogicalNot(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 168);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Select(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 169);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 170);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = INotEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 171);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UGreaterThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 172);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SGreaterThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 173);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UGreaterThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 174);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SGreaterThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 175);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ULessThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 176);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SLessThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 177);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ULessThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 178);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SLessThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 179);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 180);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 181);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdNotEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 182);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordNotEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 183);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdLessThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 184);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordLessThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 185);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdGreaterThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 186);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordGreaterThan(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 187);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdLessThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 188);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordLessThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 189);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FOrdGreaterThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 190);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FUnordGreaterThanEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 191);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ShiftRightLogical(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 194);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ShiftRightArithmetic(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 195);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ShiftLeftLogical(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 196);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitwiseOr(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 197);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitwiseXor(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 198);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitwiseAnd(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 199);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Not(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 200);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitFieldInsert(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 201);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitFieldSExtract(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 202);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitFieldUExtract(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 203);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitReverse(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 204);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BitCount(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 205);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdx(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 207);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdy(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 208);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Fwidth(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 209);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdxFine(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 210);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdyFine(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 211);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FwidthFine(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 212);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdxCoarse(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 213);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DPdyCoarse(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 214);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FwidthCoarse(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 215);
    }
    unsafe {
        let variant = EmitVertex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 218);
    }
    unsafe {
        let variant = EndPrimitive();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 219);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = EmitStreamVertex(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 220);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = EndStreamPrimitive(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 221);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ControlBarrier(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 224);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemoryBarrier(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 225);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicLoad(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 227);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicStore(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 228);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicExchange(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 229);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicCompareExchange(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 230);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicCompareExchangeWeak(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 231);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicIIncrement(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 232);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicIDecrement(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 233);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicIAdd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 234);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicISub(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 235);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicSMin(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 236);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicUMin(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 237);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicSMax(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 238);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicUMax(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 239);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicAnd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 240);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicOr(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 241);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicXor(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 242);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Phi(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 245);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LoopMerge(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 246);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SelectionMerge(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 247);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Label(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 248);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Branch(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 249);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BranchConditional(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 250);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Switch(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 251);
    }
    unsafe {
        let variant = Kill();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 252);
    }
    unsafe {
        let variant = Return();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 253);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReturnValue(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 254);
    }
    unsafe {
        let variant = Unreachable();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 255);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LifetimeStart(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 256);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LifetimeStop(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 257);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupAsyncCopy(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 259);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupWaitEvents(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 260);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupAll(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 261);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupAny(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 262);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupBroadcast(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 263);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupIAdd(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 264);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFAdd(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 265);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFMin(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 266);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupUMin(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 267);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupSMin(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 268);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFMax(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 269);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupUMax(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 270);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupSMax(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 271);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReadPipe(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 274);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = WritePipe(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 275);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReservedReadPipe(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 276);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReservedWritePipe(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 277);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReserveReadPipePackets(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 278);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReserveWritePipePackets(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 279);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CommitReadPipe(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 280);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CommitWritePipe(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 281);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsValidReserveId(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 282);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetNumPipePackets(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 283);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetMaxPipePackets(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 284);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupReserveReadPipePackets(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 285);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupReserveWritePipePackets(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 286);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupCommitReadPipe(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 287);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupCommitWritePipe(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 288);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = EnqueueMarker(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 291);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x11 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x12 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = EnqueueKernel(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 292);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelNDrangeSubGroupCount(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 293);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelNDrangeMaxSubGroupSize(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 294);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelWorkGroupSize(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 295);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelPreferredWorkGroupSizeMultiple(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 296);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RetainEvent(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 297);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReleaseEvent(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 298);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CreateUserEvent(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 299);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsValidEvent(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 300);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SetUserEventStatus(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 301);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CaptureEventProfilingInfo(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 302);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetDefaultQueue(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 303);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BuildNDRange(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 304);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleImplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 305);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleExplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 306);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleDrefImplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 307);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleDrefExplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 308);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleProjImplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 309);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleProjExplicitLod(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 310);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleProjDrefImplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 311);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseSampleProjDrefExplicitLod(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 312);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseFetch(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 313);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseGather(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 314);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseDrefGather(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 315);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseTexelsResident(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 316);
    }
    unsafe {
        let variant = NoLine();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 317);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicFlagTestAndSet(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 318);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicFlagClear(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 319);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSparseRead(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 320);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SizeOf(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 321);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypePipeStorage(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 322);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantPipeStorage(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 323);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CreatePipeFromPipeStorage(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 324);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelLocalSizeForSubgroupCount(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 325);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GetKernelMaxNumSubgroups(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 326);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeNamedBarrier(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 327);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = NamedBarrierInitialize(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 328);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemoryNamedBarrier(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 329);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ModuleProcessed(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 330);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExecutionModeId(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 331);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DecorateId(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 332);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformElect(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 333);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformAll(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 334);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformAny(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 335);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformAllEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 336);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBroadcast(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 337);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBroadcastFirst(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 338);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBallot(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 339);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformInverseBallot(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 340);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBallotBitExtract(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 341);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBallotBitCount(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 342);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBallotFindLSB(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 343);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBallotFindMSB(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 344);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformShuffle(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 345);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformShuffleXor(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 346);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformShuffleUp(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 347);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformShuffleDown(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 348);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformIAdd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 349);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformFAdd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 350);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformIMul(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 351);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformFMul(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 352);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformSMin(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 353);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformUMin(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 354);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformFMin(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 355);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformSMax(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 356);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformUMax(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 357);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformFMax(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 358);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBitwiseAnd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 359);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBitwiseOr(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 360);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformBitwiseXor(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 361);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformLogicalAnd(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 362);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformLogicalOr(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 363);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformLogicalXor(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 364);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformQuadBroadcast(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 365);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformQuadSwap(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 366);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CopyLogical(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 400);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 401);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrNotEqual(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 402);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrDiff(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 403);
    }
    unsafe {
        let variant = TerminateInvocation();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4416);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupBallotKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4421);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupFirstInvocationKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4422);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAllKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4428);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAnyKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4429);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAllEqualKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4430);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupReadInvocationKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4432);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TraceRayKHR(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4445);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExecuteCallableKHR(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4446);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConvertUToAccelerationStructureKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4447);
    }
    unsafe {
        let variant = IgnoreIntersectionKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4448);
    }
    unsafe {
        let variant = TerminateRayKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4449);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SDotKHR(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4450);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UDotKHR(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4451);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SUDotKHR(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4452);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SDotAccSatKHR(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4453);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UDotAccSatKHR(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4454);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SUDotAccSatKHR(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4455);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeRayQueryKHR(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4472);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryInitializeKHR(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4473);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryTerminateKHR(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4474);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGenerateIntersectionKHR(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4475);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryConfirmIntersectionKHR(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4476);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryProceedKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4477);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionTypeKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4479);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupIAddNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5000);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFAddNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5001);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFMinNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5002);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupUMinNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5003);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupSMinNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5004);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupFMaxNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5005);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupUMaxNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5006);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupSMaxNonUniformAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5007);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FragmentMaskFetchAMD(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5011);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FragmentFetchAMD(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5012);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReadClockKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5056);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ImageSampleFootprintNV(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5283);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GroupNonUniformPartitionNV(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5296);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = WritePackedPrimitiveIndices4x8NV(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5299);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReportIntersectionNV(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5334);
    }
    unsafe {
        let variant = IgnoreIntersectionNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5335);
    }
    unsafe {
        let variant = TerminateRayNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5336);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TraceNV(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5337);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x11 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TraceMotionNV(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5338);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x11 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TraceRayMotionNV(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5339);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAccelerationStructureNV(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5341);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExecuteCallableNV(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5344);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeCooperativeMatrixNV(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5358);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CooperativeMatrixLoadNV(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5359);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CooperativeMatrixStoreNV(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5360);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CooperativeMatrixMulAddNV(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5361);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CooperativeMatrixLengthNV(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5362);
    }
    unsafe {
        let variant = BeginInvocationInterlockEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5364);
    }
    unsafe {
        let variant = EndInvocationInterlockEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5365);
    }
    unsafe {
        let variant = DemoteToHelperInvocationEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5380);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IsHelperInvocationEXT(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5381);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupShuffleINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5571);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupShuffleDownINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5572);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupShuffleUpINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5573);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupShuffleXorINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5574);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupBlockReadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5575);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupBlockWriteINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5576);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupImageBlockReadINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5577);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupImageBlockWriteINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5578);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupImageMediaBlockReadINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5580);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupImageMediaBlockWriteINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5581);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UCountLeadingZerosINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5585);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UCountTrailingZerosINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5586);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AbsISubINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5587);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AbsUSubINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5588);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IAddSatINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5589);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UAddSatINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5590);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IAverageINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5591);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UAverageINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5592);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IAverageRoundedINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5593);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UAverageRoundedINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5594);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ISubSatINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5595);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = USubSatINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5596);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IMul32x16INTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5597);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UMul32x16INTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5598);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstFunctionPointerINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5600);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionPointerCallINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5601);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AsmTargetINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5609);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AsmINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5610);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AsmCallINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5611);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicFMinEXT(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5614);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicFMaxEXT(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5615);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AssumeTrueKHR(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5630);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ExpectKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5631);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DecorateString(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5632);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemberDecorateString(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5633);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VmeImageINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5699);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeVmeImageINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5700);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImePayloadINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5701);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcRefPayloadINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5702);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcSicPayloadINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5703);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcMcePayloadINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5704);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcMceResultINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5705);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImeResultINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5706);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImeResultSingleReferenceStreamoutINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5707);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImeResultDualReferenceStreamoutINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5708);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImeSingleReferenceStreaminINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5709);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcImeDualReferenceStreaminINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5710);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcRefResultINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5711);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeAvcSicResultINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5712);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5713);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5714);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultInterShapePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5715);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetInterShapePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5716);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5717);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetInterDirectionPenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5718);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5719);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5720);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5721);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5722);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5723);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetMotionVectorCostFunctionINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5724);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5725);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5726);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5727);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetAcOnlyHaarINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5728);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5729);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5730);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5731);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToImePayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5732);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToImeResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5733);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToRefPayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5734);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToRefResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5735);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToSicPayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5736);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceConvertToSicResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5737);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetMotionVectorsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5738);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterDistortionsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5739);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetBestInterDistortionsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5740);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterMajorShapeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5741);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterMinorShapeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5742);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterDirectionsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5743);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterMotionVectorCountINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5744);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcMceGetInterReferenceIdsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5745);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5746);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeInitializeINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5747);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetSingleReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5748);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetDualReferenceINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5749);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeRefWindowSizeINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5750);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeAdjustRefOffsetINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5751);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeConvertToMcePayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5752);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetMaxMotionVectorCountINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5753);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetUnidirectionalMixDisableINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5754);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5755);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeSetWeightedSadINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5756);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeEvaluateWithSingleReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5757);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeEvaluateWithDualReferenceINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5758);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5759);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5760);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5761);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5762);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5763);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5764);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeConvertToMceResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5765);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetSingleReferenceStreaminINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5766);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetDualReferenceStreaminINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5767);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeStripSingleReferenceStreamoutINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5768);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeStripDualReferenceStreamoutINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5769);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5770);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5771);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5772);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5773);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5774);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5775);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetBorderReachedINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5776);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetTruncatedSearchIndicationINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5777);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5778);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5779);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5780);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcFmeInitializeINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5781);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcBmeInitializeINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5782);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefConvertToMcePayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5783);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefSetBidirectionalMixDisableINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5784);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefSetBilinearFilterEnableINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5785);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefEvaluateWithSingleReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5786);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefEvaluateWithDualReferenceINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5787);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefEvaluateWithMultiReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5788);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5789);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcRefConvertToMceResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5790);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicInitializeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5791);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicConfigureSkcINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5792);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicConfigureIpeLumaINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5793);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x10 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x11 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x12 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicConfigureIpeLumaChromaINTEL(
            x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12,
        );
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5794);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetMotionVectorMaskINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5795);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicConvertToMcePayloadINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5796);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetIntraLumaShapePenaltyINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5797);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5798);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5799);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetBilinearFilterEnableINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5800);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetSkcForwardTransformEnableINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5801);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicSetBlockBasedRawSkipSadINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5802);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicEvaluateIpeINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5803);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicEvaluateWithSingleReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5804);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicEvaluateWithDualReferenceINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5805);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicEvaluateWithMultiReferenceINTEL(x0, x1, x2, x3, x4);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5806);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5807);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicConvertToMceResultINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5808);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetIpeLumaShapeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5809);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetBestIpeLumaDistortionINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5810);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetBestIpeChromaDistortionINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5811);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetPackedIpeLumaModesINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5812);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetIpeChromaModeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5813);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5814);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5815);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupAvcSicGetInterRawSadsINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5816);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VariableLengthArrayINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5818);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SaveMemoryINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5819);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RestoreMemoryINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5820);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSinCosPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5840);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCastINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5841);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCastFromIntINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5842);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCastToIntINTEL(x0, x1, x2, x3, x4, x5, x6);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5843);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatAddINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5846);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSubINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5847);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatMulINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5848);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatDivINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5849);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatGTINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5850);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatGEINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5851);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLTINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5852);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLEINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5853);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatEQINTEL(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5854);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatRecipINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5855);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatRSqrtINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5856);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCbrtINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5857);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatHypotINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5858);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSqrtINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5859);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLogINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5860);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLog2INTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5861);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLog10INTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5862);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatLog1pINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5863);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatExpINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5864);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatExp2INTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5865);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatExp10INTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5866);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatExpm1INTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5867);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSinINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5868);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCosINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5869);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSinCosINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5870);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatSinPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5871);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatCosPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5872);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatASinINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5873);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatASinPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5874);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatACosINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5875);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatACosPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5876);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatATanINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5877);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatATanPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5878);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatATan2INTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5879);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatPowINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5880);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x9 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatPowRINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5881);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArbitraryFloatPowNINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5882);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LoopControlINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5887);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedSqrtINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5923);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedRecipINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5924);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedRsqrtINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5925);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedSinINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5926);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedCosINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5927);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedSinCosINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5928);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedSinPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5929);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedCosPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5930);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedSinCosPiINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5931);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedLogINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5932);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x6 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x7 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x8 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FixedExpINTEL(x0, x1, x2, x3, x4, x5, x6, x7, x8);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5933);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PtrCastToCrossWorkgroupINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5934);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CrossWorkgroupCastToPtrINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5938);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ReadPipeBlockingINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5946);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = WritePipeBlockingINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5947);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FPGARegINTEL(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5949);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetRayTMinKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6016);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetRayFlagsKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6017);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionTKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6018);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionInstanceCustomIndexKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6019);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionInstanceIdKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6020);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant =
            RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6021);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionGeometryIndexKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6022);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionPrimitiveIndexKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6023);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionBarycentricsKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6024);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionFrontFaceKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6025);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionCandidateAABBOpaqueKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6026);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionObjectRayDirectionKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6027);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionObjectRayOriginKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6028);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetWorldRayDirectionKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6029);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetWorldRayOriginKHR(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6030);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionObjectToWorldKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6031);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RayQueryGetIntersectionWorldToObjectKHR(x0, x1, x2, x3);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6032);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x3 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x4 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x5 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AtomicFAddEXT(x0, x1, x2, x3, x4, x5);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6035);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeBufferSurfaceINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6086);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = TypeStructContinuedINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6090);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstantCompositeContinuedINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6091);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecConstantCompositeContinuedINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6092);
    }
}
#[test]
pub fn test_ImageOperands() {
    use std::mem::*;
    use ImageOperands::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Bias(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Lod(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Grad(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstOffset(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Offset(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ConstOffsets(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Sample(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MinLod(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 128);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MakeTexelAvailable(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 256);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MakeTexelVisible(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 512);
    }
    unsafe {
        let variant = NonPrivateTexel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1024);
    }
    unsafe {
        let variant = VolatileTexel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2048);
    }
    unsafe {
        let variant = SignExtend();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4096);
    }
    unsafe {
        let variant = ZeroExtend();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8192);
    }
}
#[test]
pub fn test_FPFastMathMode() {
    use std::mem::*;
    use FPFastMathMode::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = NotNaN();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = NotInf();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = NSZ();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = AllowRecip();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = Fast();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = AllowContractFastINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 65536);
    }
    unsafe {
        let variant = AllowReassocINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 131072);
    }
}
#[test]
pub fn test_SelectionControl() {
    use std::mem::*;
    use SelectionControl::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Flatten();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = DontFlatten();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
}
#[test]
pub fn test_LoopControl() {
    use std::mem::*;
    use LoopControl::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Unroll();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = DontUnroll();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = DependencyInfinite();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DependencyLength(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MinIterations(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxIterations(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IterationMultiple(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PeelCount(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 128);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PartialCount(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 256);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = InitiationIntervalINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 65536);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxConcurrencyINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 131072);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DependencyArrayINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 262144);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PipelineEnableINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 524288);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LoopCoalesceINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1048576);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxInterleavingINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2097152);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpeculatedIterationsINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4194304);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = NoFusionINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8388608);
    }
}
#[test]
pub fn test_FunctionControl() {
    use std::mem::*;
    use FunctionControl::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Inline();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = DontInline();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Pure();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = Const();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = OptNoneINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 65536);
    }
}
#[test]
pub fn test_MemorySemantics() {
    use std::mem::*;
    use MemorySemantics::*;
    unsafe {
        let variant = Relaxed();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Acquire();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Release();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = AcquireRelease();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = SequentiallyConsistent();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = UniformMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let variant = SubgroupMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 128);
    }
    unsafe {
        let variant = WorkgroupMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 256);
    }
    unsafe {
        let variant = CrossWorkgroupMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 512);
    }
    unsafe {
        let variant = AtomicCounterMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1024);
    }
    unsafe {
        let variant = ImageMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2048);
    }
    unsafe {
        let variant = OutputMemory();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4096);
    }
    unsafe {
        let variant = MakeAvailable();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8192);
    }
    unsafe {
        let variant = MakeVisible();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16384);
    }
    unsafe {
        let variant = Volatile();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32768);
    }
}
#[test]
pub fn test_MemoryAccess() {
    use std::mem::*;
    use MemoryAccess::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Volatile();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Aligned(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Nontemporal();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MakePointerAvailable(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MakePointerVisible(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = NonPrivatePointer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
}
#[test]
pub fn test_KernelProfilingInfo() {
    use std::mem::*;
    use KernelProfilingInfo::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = CmdExecTime();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_RayFlags() {
    use std::mem::*;
    use RayFlags::*;
    unsafe {
        let variant = NoneKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = OpaqueKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = NoOpaqueKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = TerminateOnFirstHitKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = SkipClosestHitShaderKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = CullBackFacingTrianglesKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = CullFrontFacingTrianglesKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let variant = CullOpaqueKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let variant = CullNoOpaqueKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 128);
    }
    unsafe {
        let variant = SkipTrianglesKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 256);
    }
    unsafe {
        let variant = SkipAABBsKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 512);
    }
}
#[test]
pub fn test_FragmentShadingRate() {
    use std::mem::*;
    use FragmentShadingRate::*;
    unsafe {
        let variant = Vertical2Pixels();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Vertical4Pixels();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Horizontal2Pixels();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = Horizontal4Pixels();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
}
#[test]
pub fn test_SourceLanguage() {
    use std::mem::*;
    use SourceLanguage::*;
    unsafe {
        let variant = Unknown();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = ESSL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = GLSL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = OpenCL_C();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = OpenCL_CPP();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = HLSL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = CPP_for_OpenCL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
}
#[test]
pub fn test_ExecutionModel() {
    use std::mem::*;
    use ExecutionModel::*;
    unsafe {
        let variant = Vertex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = TessellationControl();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = TessellationEvaluation();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Geometry();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Fragment();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = GLCompute();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = Kernel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = TaskNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5267);
    }
    unsafe {
        let variant = MeshNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5268);
    }
    unsafe {
        let variant = RayGenerationNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5313);
    }
    unsafe {
        let variant = IntersectionNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5314);
    }
    unsafe {
        let variant = AnyHitNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5315);
    }
    unsafe {
        let variant = ClosestHitNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5316);
    }
    unsafe {
        let variant = MissNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5317);
    }
    unsafe {
        let variant = CallableNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5318);
    }
}
#[test]
pub fn test_AddressingModel() {
    use std::mem::*;
    use AddressingModel::*;
    unsafe {
        let variant = Logical();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Physical32();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Physical64();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = PhysicalStorageBuffer64();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5348);
    }
}
#[test]
pub fn test_MemoryModel() {
    use std::mem::*;
    use MemoryModel::*;
    unsafe {
        let variant = Simple();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = GLSL450();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = OpenCL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Vulkan();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
}
#[test]
pub fn test_ExecutionMode() {
    use std::mem::*;
    use ExecutionMode::*;
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Invocations(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = SpacingEqual();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = SpacingFractionalEven();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = SpacingFractionalOdd();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = VertexOrderCw();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = VertexOrderCcw();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = PixelCenterInteger();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = OriginUpperLeft();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = OriginLowerLeft();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = EarlyFragmentTests();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = PointMode();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = Xfb();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = DepthReplacing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = DepthGreater();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = DepthLess();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = DepthUnchanged();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LocalSize(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LocalSizeHint(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = InputPoints();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let variant = InputLines();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let variant = InputLinesAdjacency();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 21);
    }
    unsafe {
        let variant = Triangles();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let variant = InputTrianglesAdjacency();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let variant = Quads();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let variant = Isolines();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = OutputVertices(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 26);
    }
    unsafe {
        let variant = OutputPoints();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let variant = OutputLineStrip();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let variant = OutputTriangleStrip();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = VecTypeHint(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let variant = ContractionOff();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let variant = Initializer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let variant = Finalizer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupSize(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 35);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupsPerWorkgroup(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SubgroupsPerWorkgroupId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LocalSizeId(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LocalSizeHintId(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let variant = SubgroupUniformControlFlowKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4421);
    }
    unsafe {
        let variant = PostDepthCoverage();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4446);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DenormPreserve(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4459);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DenormFlushToZero(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4460);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SignedZeroInfNanPreserve(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4461);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RoundingModeRTE(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4462);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RoundingModeRTZ(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4463);
    }
    unsafe {
        let variant = StencilRefReplacingEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5027);
    }
    unsafe {
        let variant = OutputLinesNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5269);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = OutputPrimitivesNV(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5270);
    }
    unsafe {
        let variant = DerivativeGroupQuadsNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5289);
    }
    unsafe {
        let variant = DerivativeGroupLinearNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5290);
    }
    unsafe {
        let variant = OutputTrianglesNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5298);
    }
    unsafe {
        let variant = PixelInterlockOrderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5366);
    }
    unsafe {
        let variant = PixelInterlockUnorderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5367);
    }
    unsafe {
        let variant = SampleInterlockOrderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5368);
    }
    unsafe {
        let variant = SampleInterlockUnorderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5369);
    }
    unsafe {
        let variant = ShadingRateInterlockOrderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5370);
    }
    unsafe {
        let variant = ShadingRateInterlockUnorderedEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5371);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SharedLocalMemorySizeINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5618);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RoundingModeRTPINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5620);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = RoundingModeRTNINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5621);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FloatingPointModeALTINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5622);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FloatingPointModeIEEEINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5623);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x2 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxWorkgroupSizeINTEL(x0, x1, x2);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5893);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxWorkDimINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5894);
    }
    unsafe {
        let variant = NoGlobalOffsetINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5895);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = NumSIMDWorkitemsINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5896);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SchedulerTargetFmaxMhzINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5903);
    }
}
#[test]
pub fn test_StorageClass() {
    use std::mem::*;
    use StorageClass::*;
    unsafe {
        let variant = UniformConstant();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Input();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Uniform();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Output();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Workgroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = CrossWorkgroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = Private();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = Function();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = Generic();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = PushConstant();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = AtomicCounter();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = Image();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = StorageBuffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = CallableDataNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5328);
    }
    unsafe {
        let variant = IncomingCallableDataNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5329);
    }
    unsafe {
        let variant = RayPayloadNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5338);
    }
    unsafe {
        let variant = HitAttributeNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5339);
    }
    unsafe {
        let variant = IncomingRayPayloadNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5342);
    }
    unsafe {
        let variant = ShaderRecordBufferNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5343);
    }
    unsafe {
        let variant = PhysicalStorageBuffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5349);
    }
    unsafe {
        let variant = CodeSectionINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5605);
    }
    unsafe {
        let variant = DeviceOnlyINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5936);
    }
    unsafe {
        let variant = HostOnlyINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5937);
    }
}
#[test]
pub fn test_Dim() {
    use std::mem::*;
    use Dim::*;
    unsafe {
        let variant = _1D();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = _2D();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = _3D();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Cube();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Rect();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = Buffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = SubpassData();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
}
#[test]
pub fn test_SamplerAddressingMode() {
    use std::mem::*;
    use SamplerAddressingMode::*;
    unsafe {
        let variant = None();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = ClampToEdge();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Clamp();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Repeat();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = RepeatMirrored();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
}
#[test]
pub fn test_SamplerFilterMode() {
    use std::mem::*;
    use SamplerFilterMode::*;
    unsafe {
        let variant = Nearest();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Linear();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_ImageFormat() {
    use std::mem::*;
    use ImageFormat::*;
    unsafe {
        let variant = Unknown();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Rgba32f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Rgba16f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = R32f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Rgba8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = Rgba8Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = Rg32f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = Rg16f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = R11fG11fB10f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = R16f();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = Rgba16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = Rgb10A2();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = Rg16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = Rg8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = R16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = R8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = Rgba16Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = Rg16Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let variant = Rg8Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = R16Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let variant = R8Snorm();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let variant = Rgba32i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 21);
    }
    unsafe {
        let variant = Rgba16i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let variant = Rgba8i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let variant = R32i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let variant = Rg32i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let variant = Rg16i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 26);
    }
    unsafe {
        let variant = Rg8i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let variant = R16i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let variant = R8i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let variant = Rgba32ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let variant = Rgba16ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let variant = Rgba8ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let variant = R32ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let variant = Rgb10a2ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let variant = Rg32ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 35);
    }
    unsafe {
        let variant = Rg16ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let variant = Rg8ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let variant = R16ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let variant = R8ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let variant = R64ui();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 40);
    }
    unsafe {
        let variant = R64i();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 41);
    }
}
#[test]
pub fn test_ImageChannelOrder() {
    use std::mem::*;
    use ImageChannelOrder::*;
    unsafe {
        let variant = R();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = A();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = RG();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = RA();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = RGB();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = RGBA();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = BGRA();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = ARGB();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = Intensity();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = Luminance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = Rx();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = RGx();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = RGBx();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = Depth();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = DepthStencil();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = sRGB();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = sRGBx();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = sRGBA();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let variant = sBGRA();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = ABGR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
}
#[test]
pub fn test_ImageChannelDataType() {
    use std::mem::*;
    use ImageChannelDataType::*;
    unsafe {
        let variant = SnormInt8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = SnormInt16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = UnormInt8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = UnormInt16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = UnormShort565();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = UnormShort555();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = UnormInt101010();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = SignedInt8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = SignedInt16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = SignedInt32();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = UnsignedInt8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = UnsignedInt16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = UnsignedInt32();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = HalfFloat();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = Float();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = UnormInt24();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = UnormInt101010_2();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
}
#[test]
pub fn test_FPRoundingMode() {
    use std::mem::*;
    use FPRoundingMode::*;
    unsafe {
        let variant = RTE();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = RTZ();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = RTP();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = RTN();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
}
#[test]
pub fn test_FPDenormMode() {
    use std::mem::*;
    use FPDenormMode::*;
    unsafe {
        let variant = Preserve();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = FlushToZero();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_QuantizationModes() {
    use std::mem::*;
    use QuantizationModes::*;
    unsafe {
        let variant = TRN();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = TRN_ZERO();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = RND();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = RND_ZERO();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = RND_INF();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = RND_MIN_INF();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = RND_CONV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = RND_CONV_ODD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
}
#[test]
pub fn test_FPOperationMode() {
    use std::mem::*;
    use FPOperationMode::*;
    unsafe {
        let variant = IEEE();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = ALT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_OverflowModes() {
    use std::mem::*;
    use OverflowModes::*;
    unsafe {
        let variant = WRAP();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = SAT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = SAT_ZERO();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = SAT_SYM();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
}
#[test]
pub fn test_LinkageType() {
    use std::mem::*;
    use LinkageType::*;
    unsafe {
        let variant = Export();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Import();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = LinkOnceODR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
}
#[test]
pub fn test_AccessQualifier() {
    use std::mem::*;
    use AccessQualifier::*;
    unsafe {
        let variant = ReadOnly();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = WriteOnly();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = ReadWrite();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
}
#[test]
pub fn test_FunctionParameterAttribute() {
    use std::mem::*;
    use FunctionParameterAttribute::*;
    unsafe {
        let variant = Zext();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Sext();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = ByVal();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Sret();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = NoAlias();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = NoCapture();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = NoWrite();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = NoReadWrite();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
}
#[test]
pub fn test_Decoration() {
    use std::mem::*;
    use Decoration::*;
    unsafe {
        let variant = RelaxedPrecision();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SpecId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Block();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = BufferBlock();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = RowMajor();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = ColMajor();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ArrayStride(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MatrixStride(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = GLSLShared();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = GLSLPacked();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = CPacked();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BuiltIn(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = NoPerspective();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = Flat();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = Patch();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = Centroid();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = Sample();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let variant = Invariant();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = Restrict();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let variant = Aliased();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let variant = Volatile();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 21);
    }
    unsafe {
        let variant = Constant();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let variant = Coherent();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let variant = NonWritable();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let variant = NonReadable();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let variant = Uniform();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 26);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UniformId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let variant = SaturatedConversion();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Stream(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Location(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Component(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Index(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Binding(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = DescriptorSet(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Offset(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 35);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = XfbBuffer(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = XfbStride(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FuncParamAttr(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FPRoundingMode(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FPFastMathMode(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 40);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = LinkageAttributes(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 41);
    }
    unsafe {
        let variant = NoContraction();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 42);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = InputAttachmentIndex(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 43);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = Alignment(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 44);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxByteOffset(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 45);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = AlignmentId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 46);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxByteOffsetId(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 47);
    }
    unsafe {
        let variant = NoSignedWrap();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4469);
    }
    unsafe {
        let variant = NoUnsignedWrap();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4470);
    }
    unsafe {
        let variant = ExplicitInterpAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4999);
    }
    unsafe {
        let variant = OverrideCoverageNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5248);
    }
    unsafe {
        let variant = PassthroughNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5250);
    }
    unsafe {
        let variant = ViewportRelativeNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5252);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SecondaryViewportRelativeNV(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5256);
    }
    unsafe {
        let variant = PerPrimitiveNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5271);
    }
    unsafe {
        let variant = PerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5272);
    }
    unsafe {
        let variant = PerTaskNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5273);
    }
    unsafe {
        let variant = PerVertexNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5285);
    }
    unsafe {
        let variant = NonUniform();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5300);
    }
    unsafe {
        let variant = RestrictPointer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5355);
    }
    unsafe {
        let variant = AliasedPointer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5356);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = SIMTCallINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5599);
    }
    unsafe {
        let variant = ReferencedIndirectlyINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5602);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ClobberINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5607);
    }
    unsafe {
        let variant = SideEffectsINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5608);
    }
    unsafe {
        let variant = VectorComputeVariableINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5624);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FuncParamIOKindINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5625);
    }
    unsafe {
        let variant = VectorComputeFunctionINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5626);
    }
    unsafe {
        let variant = StackCallINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5627);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = GlobalVariableOffsetINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5628);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CounterBuffer(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5634);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UserSemantic(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5635);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = UserTypeGOOGLE(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5636);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionRoundingModeINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5822);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionDenormModeINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5823);
    }
    unsafe {
        let variant = RegisterINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5825);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MemoryINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5826);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = NumbanksINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5827);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BankwidthINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5828);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxPrivateCopiesINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5829);
    }
    unsafe {
        let variant = SinglepumpINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5830);
    }
    unsafe {
        let variant = DoublepumpINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5831);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MaxReplicatesINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5832);
    }
    unsafe {
        let variant = SimpleDualPortINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5833);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = MergeINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5834);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BankBitsINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5835);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = ForcePow2DepthINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5836);
    }
    unsafe {
        let variant = BurstCoalesceINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5899);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = CacheSizeINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5900);
    }
    unsafe {
        let variant = DontStaticallyCoalesceINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5901);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = PrefetchINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5902);
    }
    unsafe {
        let variant = StallEnableINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5905);
    }
    unsafe {
        let variant = FuseLoopsInFunctionINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5907);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = BufferLocationINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5921);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = IOPipeStorageINTEL(x0);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5944);
    }
    unsafe {
        let x0 = transmute_copy(&[0u8; size_of::<Self>()]);
        let x1 = transmute_copy(&[0u8; size_of::<Self>()]);
        let variant = FunctionFloatingPointModeINTEL(x0, x1);
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6080);
    }
    unsafe {
        let variant = SingleElementVectorINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6085);
    }
    unsafe {
        let variant = VectorComputeCallableFunctionINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6087);
    }
}
#[test]
pub fn test_BuiltIn() {
    use std::mem::*;
    use BuiltIn::*;
    unsafe {
        let variant = Position();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = PointSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = ClipDistance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = CullDistance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = VertexId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = InstanceId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = PrimitiveId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = InvocationId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = Layer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = ViewportIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = TessLevelOuter();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = TessLevelInner();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = TessCoord();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = PatchVertices();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = FragCoord();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = PointCoord();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 16);
    }
    unsafe {
        let variant = FrontFacing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let variant = SampleId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = SamplePosition();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let variant = SampleMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let variant = FragDepth();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let variant = HelperInvocation();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let variant = NumWorkgroups();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let variant = WorkgroupSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let variant = WorkgroupId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 26);
    }
    unsafe {
        let variant = LocalInvocationId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let variant = GlobalInvocationId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let variant = LocalInvocationIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let variant = WorkDim();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let variant = GlobalSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let variant = EnqueuedWorkgroupSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let variant = GlobalOffset();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let variant = GlobalLinearId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let variant = SubgroupSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let variant = SubgroupMaxSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let variant = NumSubgroups();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let variant = NumEnqueuedSubgroups();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let variant = SubgroupId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 40);
    }
    unsafe {
        let variant = SubgroupLocalInvocationId();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 41);
    }
    unsafe {
        let variant = VertexIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 42);
    }
    unsafe {
        let variant = InstanceIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 43);
    }
    unsafe {
        let variant = SubgroupEqMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4416);
    }
    unsafe {
        let variant = SubgroupGeMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4417);
    }
    unsafe {
        let variant = SubgroupGtMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4418);
    }
    unsafe {
        let variant = SubgroupLeMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4419);
    }
    unsafe {
        let variant = SubgroupLtMask();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4420);
    }
    unsafe {
        let variant = BaseVertex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4424);
    }
    unsafe {
        let variant = BaseInstance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4425);
    }
    unsafe {
        let variant = DrawIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4426);
    }
    unsafe {
        let variant = PrimitiveShadingRateKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4432);
    }
    unsafe {
        let variant = DeviceIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4438);
    }
    unsafe {
        let variant = ViewIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4440);
    }
    unsafe {
        let variant = ShadingRateKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4444);
    }
    unsafe {
        let variant = BaryCoordNoPerspAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4992);
    }
    unsafe {
        let variant = BaryCoordNoPerspCentroidAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4993);
    }
    unsafe {
        let variant = BaryCoordNoPerspSampleAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4994);
    }
    unsafe {
        let variant = BaryCoordSmoothAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4995);
    }
    unsafe {
        let variant = BaryCoordSmoothCentroidAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4996);
    }
    unsafe {
        let variant = BaryCoordSmoothSampleAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4997);
    }
    unsafe {
        let variant = BaryCoordPullModelAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4998);
    }
    unsafe {
        let variant = FragStencilRefEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5014);
    }
    unsafe {
        let variant = ViewportMaskNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5253);
    }
    unsafe {
        let variant = SecondaryPositionNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5257);
    }
    unsafe {
        let variant = SecondaryViewportMaskNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5258);
    }
    unsafe {
        let variant = PositionPerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5261);
    }
    unsafe {
        let variant = ViewportMaskPerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5262);
    }
    unsafe {
        let variant = FullyCoveredEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5264);
    }
    unsafe {
        let variant = TaskCountNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5274);
    }
    unsafe {
        let variant = PrimitiveCountNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5275);
    }
    unsafe {
        let variant = PrimitiveIndicesNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5276);
    }
    unsafe {
        let variant = ClipDistancePerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5277);
    }
    unsafe {
        let variant = CullDistancePerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5278);
    }
    unsafe {
        let variant = LayerPerViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5279);
    }
    unsafe {
        let variant = MeshViewCountNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5280);
    }
    unsafe {
        let variant = MeshViewIndicesNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5281);
    }
    unsafe {
        let variant = BaryCoordNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5286);
    }
    unsafe {
        let variant = BaryCoordNoPerspNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5287);
    }
    unsafe {
        let variant = FragSizeEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5292);
    }
    unsafe {
        let variant = FragInvocationCountEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5293);
    }
    unsafe {
        let variant = LaunchIdNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5319);
    }
    unsafe {
        let variant = LaunchSizeNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5320);
    }
    unsafe {
        let variant = WorldRayOriginNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5321);
    }
    unsafe {
        let variant = WorldRayDirectionNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5322);
    }
    unsafe {
        let variant = ObjectRayOriginNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5323);
    }
    unsafe {
        let variant = ObjectRayDirectionNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5324);
    }
    unsafe {
        let variant = RayTminNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5325);
    }
    unsafe {
        let variant = RayTmaxNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5326);
    }
    unsafe {
        let variant = InstanceCustomIndexNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5327);
    }
    unsafe {
        let variant = ObjectToWorldNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5330);
    }
    unsafe {
        let variant = WorldToObjectNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5331);
    }
    unsafe {
        let variant = HitTNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5332);
    }
    unsafe {
        let variant = HitKindNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5333);
    }
    unsafe {
        let variant = CurrentRayTimeNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5334);
    }
    unsafe {
        let variant = IncomingRayFlagsNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5351);
    }
    unsafe {
        let variant = RayGeometryIndexKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5352);
    }
    unsafe {
        let variant = WarpsPerSMNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5374);
    }
    unsafe {
        let variant = SMCountNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5375);
    }
    unsafe {
        let variant = WarpIDNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5376);
    }
    unsafe {
        let variant = SMIDNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5377);
    }
}
#[test]
pub fn test_Scope() {
    use std::mem::*;
    use Scope::*;
    unsafe {
        let variant = CrossDevice();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Device();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Workgroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Subgroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Invocation();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = QueueFamily();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = ShaderCallKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
}
#[test]
pub fn test_GroupOperation() {
    use std::mem::*;
    use GroupOperation::*;
    unsafe {
        let variant = Reduce();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = InclusiveScan();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = ExclusiveScan();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = ClusteredReduce();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = PartitionedReduceNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = PartitionedInclusiveScanNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = PartitionedExclusiveScanNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
}
#[test]
pub fn test_KernelEnqueueFlags() {
    use std::mem::*;
    use KernelEnqueueFlags::*;
    unsafe {
        let variant = NoWait();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = WaitKernel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = WaitWorkGroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
}
#[test]
pub fn test_Capability() {
    use std::mem::*;
    use Capability::*;
    unsafe {
        let variant = Matrix();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = Shader();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = Geometry();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
    unsafe {
        let variant = Tessellation();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 3);
    }
    unsafe {
        let variant = Addresses();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4);
    }
    unsafe {
        let variant = Linkage();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5);
    }
    unsafe {
        let variant = Kernel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6);
    }
    unsafe {
        let variant = Vector16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 7);
    }
    unsafe {
        let variant = Float16Buffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 8);
    }
    unsafe {
        let variant = Float16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 9);
    }
    unsafe {
        let variant = Float64();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 10);
    }
    unsafe {
        let variant = Int64();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 11);
    }
    unsafe {
        let variant = Int64Atomics();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 12);
    }
    unsafe {
        let variant = ImageBasic();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 13);
    }
    unsafe {
        let variant = ImageReadWrite();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 14);
    }
    unsafe {
        let variant = ImageMipmap();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 15);
    }
    unsafe {
        let variant = Pipes();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 17);
    }
    unsafe {
        let variant = Groups();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 18);
    }
    unsafe {
        let variant = DeviceEnqueue();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 19);
    }
    unsafe {
        let variant = LiteralSampler();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 20);
    }
    unsafe {
        let variant = AtomicStorage();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 21);
    }
    unsafe {
        let variant = Int16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 22);
    }
    unsafe {
        let variant = TessellationPointSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 23);
    }
    unsafe {
        let variant = GeometryPointSize();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 24);
    }
    unsafe {
        let variant = ImageGatherExtended();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 25);
    }
    unsafe {
        let variant = StorageImageMultisample();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 27);
    }
    unsafe {
        let variant = UniformBufferArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 28);
    }
    unsafe {
        let variant = SampledImageArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 29);
    }
    unsafe {
        let variant = StorageBufferArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 30);
    }
    unsafe {
        let variant = StorageImageArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 31);
    }
    unsafe {
        let variant = ClipDistance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 32);
    }
    unsafe {
        let variant = CullDistance();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 33);
    }
    unsafe {
        let variant = ImageCubeArray();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 34);
    }
    unsafe {
        let variant = SampleRateShading();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 35);
    }
    unsafe {
        let variant = ImageRect();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 36);
    }
    unsafe {
        let variant = SampledRect();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 37);
    }
    unsafe {
        let variant = GenericPointer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 38);
    }
    unsafe {
        let variant = Int8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 39);
    }
    unsafe {
        let variant = InputAttachment();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 40);
    }
    unsafe {
        let variant = SparseResidency();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 41);
    }
    unsafe {
        let variant = MinLod();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 42);
    }
    unsafe {
        let variant = Sampled1D();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 43);
    }
    unsafe {
        let variant = Image1D();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 44);
    }
    unsafe {
        let variant = SampledCubeArray();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 45);
    }
    unsafe {
        let variant = SampledBuffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 46);
    }
    unsafe {
        let variant = ImageBuffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 47);
    }
    unsafe {
        let variant = ImageMSArray();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 48);
    }
    unsafe {
        let variant = StorageImageExtendedFormats();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 49);
    }
    unsafe {
        let variant = ImageQuery();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 50);
    }
    unsafe {
        let variant = DerivativeControl();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 51);
    }
    unsafe {
        let variant = InterpolationFunction();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 52);
    }
    unsafe {
        let variant = TransformFeedback();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 53);
    }
    unsafe {
        let variant = GeometryStreams();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 54);
    }
    unsafe {
        let variant = StorageImageReadWithoutFormat();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 55);
    }
    unsafe {
        let variant = StorageImageWriteWithoutFormat();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 56);
    }
    unsafe {
        let variant = MultiViewport();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 57);
    }
    unsafe {
        let variant = SubgroupDispatch();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 58);
    }
    unsafe {
        let variant = NamedBarrier();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 59);
    }
    unsafe {
        let variant = PipeStorage();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 60);
    }
    unsafe {
        let variant = GroupNonUniform();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 61);
    }
    unsafe {
        let variant = GroupNonUniformVote();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 62);
    }
    unsafe {
        let variant = GroupNonUniformArithmetic();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 63);
    }
    unsafe {
        let variant = GroupNonUniformBallot();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 64);
    }
    unsafe {
        let variant = GroupNonUniformShuffle();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 65);
    }
    unsafe {
        let variant = GroupNonUniformShuffleRelative();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 66);
    }
    unsafe {
        let variant = GroupNonUniformClustered();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 67);
    }
    unsafe {
        let variant = GroupNonUniformQuad();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 68);
    }
    unsafe {
        let variant = ShaderLayer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 69);
    }
    unsafe {
        let variant = ShaderViewportIndex();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 70);
    }
    unsafe {
        let variant = FragmentShadingRateKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4422);
    }
    unsafe {
        let variant = SubgroupBallotKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4423);
    }
    unsafe {
        let variant = DrawParameters();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4427);
    }
    unsafe {
        let variant = WorkgroupMemoryExplicitLayoutKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4428);
    }
    unsafe {
        let variant = WorkgroupMemoryExplicitLayout8BitAccessKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4429);
    }
    unsafe {
        let variant = WorkgroupMemoryExplicitLayout16BitAccessKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4430);
    }
    unsafe {
        let variant = SubgroupVoteKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4431);
    }
    unsafe {
        let variant = StorageBuffer16BitAccess();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4433);
    }
    unsafe {
        let variant = UniformAndStorageBuffer16BitAccess();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4434);
    }
    unsafe {
        let variant = StoragePushConstant16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4435);
    }
    unsafe {
        let variant = StorageInputOutput16();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4436);
    }
    unsafe {
        let variant = DeviceGroup();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4437);
    }
    unsafe {
        let variant = MultiView();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4439);
    }
    unsafe {
        let variant = VariablePointersStorageBuffer();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4441);
    }
    unsafe {
        let variant = VariablePointers();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4442);
    }
    unsafe {
        let variant = AtomicStorageOps();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4445);
    }
    unsafe {
        let variant = SampleMaskPostDepthCoverage();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4447);
    }
    unsafe {
        let variant = StorageBuffer8BitAccess();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4448);
    }
    unsafe {
        let variant = UniformAndStorageBuffer8BitAccess();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4449);
    }
    unsafe {
        let variant = StoragePushConstant8();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4450);
    }
    unsafe {
        let variant = DenormPreserve();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4464);
    }
    unsafe {
        let variant = DenormFlushToZero();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4465);
    }
    unsafe {
        let variant = SignedZeroInfNanPreserve();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4466);
    }
    unsafe {
        let variant = RoundingModeRTE();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4467);
    }
    unsafe {
        let variant = RoundingModeRTZ();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4468);
    }
    unsafe {
        let variant = RayQueryProvisionalKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4471);
    }
    unsafe {
        let variant = RayQueryKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4472);
    }
    unsafe {
        let variant = RayTraversalPrimitiveCullingKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4478);
    }
    unsafe {
        let variant = RayTracingKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 4479);
    }
    unsafe {
        let variant = Float16ImageAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5008);
    }
    unsafe {
        let variant = ImageGatherBiasLodAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5009);
    }
    unsafe {
        let variant = FragmentMaskAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5010);
    }
    unsafe {
        let variant = StencilExportEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5013);
    }
    unsafe {
        let variant = ImageReadWriteLodAMD();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5015);
    }
    unsafe {
        let variant = Int64ImageEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5016);
    }
    unsafe {
        let variant = ShaderClockKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5055);
    }
    unsafe {
        let variant = SampleMaskOverrideCoverageNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5249);
    }
    unsafe {
        let variant = GeometryShaderPassthroughNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5251);
    }
    unsafe {
        let variant = ShaderViewportIndexLayerEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5254);
    }
    unsafe {
        let variant = ShaderViewportMaskNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5255);
    }
    unsafe {
        let variant = ShaderStereoViewNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5259);
    }
    unsafe {
        let variant = PerViewAttributesNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5260);
    }
    unsafe {
        let variant = FragmentFullyCoveredEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5265);
    }
    unsafe {
        let variant = MeshShadingNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5266);
    }
    unsafe {
        let variant = ImageFootprintNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5282);
    }
    unsafe {
        let variant = FragmentBarycentricNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5284);
    }
    unsafe {
        let variant = ComputeDerivativeGroupQuadsNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5288);
    }
    unsafe {
        let variant = FragmentDensityEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5291);
    }
    unsafe {
        let variant = GroupNonUniformPartitionedNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5297);
    }
    unsafe {
        let variant = ShaderNonUniform();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5301);
    }
    unsafe {
        let variant = RuntimeDescriptorArray();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5302);
    }
    unsafe {
        let variant = InputAttachmentArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5303);
    }
    unsafe {
        let variant = UniformTexelBufferArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5304);
    }
    unsafe {
        let variant = StorageTexelBufferArrayDynamicIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5305);
    }
    unsafe {
        let variant = UniformBufferArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5306);
    }
    unsafe {
        let variant = SampledImageArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5307);
    }
    unsafe {
        let variant = StorageBufferArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5308);
    }
    unsafe {
        let variant = StorageImageArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5309);
    }
    unsafe {
        let variant = InputAttachmentArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5310);
    }
    unsafe {
        let variant = UniformTexelBufferArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5311);
    }
    unsafe {
        let variant = StorageTexelBufferArrayNonUniformIndexing();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5312);
    }
    unsafe {
        let variant = RayTracingNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5340);
    }
    unsafe {
        let variant = RayTracingMotionBlurNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5341);
    }
    unsafe {
        let variant = VulkanMemoryModel();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5345);
    }
    unsafe {
        let variant = VulkanMemoryModelDeviceScope();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5346);
    }
    unsafe {
        let variant = PhysicalStorageBufferAddresses();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5347);
    }
    unsafe {
        let variant = ComputeDerivativeGroupLinearNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5350);
    }
    unsafe {
        let variant = RayTracingProvisionalKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5353);
    }
    unsafe {
        let variant = CooperativeMatrixNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5357);
    }
    unsafe {
        let variant = FragmentShaderSampleInterlockEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5363);
    }
    unsafe {
        let variant = FragmentShaderShadingRateInterlockEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5372);
    }
    unsafe {
        let variant = ShaderSMBuiltinsNV();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5373);
    }
    unsafe {
        let variant = FragmentShaderPixelInterlockEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5378);
    }
    unsafe {
        let variant = DemoteToHelperInvocationEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5379);
    }
    unsafe {
        let variant = SubgroupShuffleINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5568);
    }
    unsafe {
        let variant = SubgroupBufferBlockIOINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5569);
    }
    unsafe {
        let variant = SubgroupImageBlockIOINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5570);
    }
    unsafe {
        let variant = SubgroupImageMediaBlockIOINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5579);
    }
    unsafe {
        let variant = RoundToInfinityINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5582);
    }
    unsafe {
        let variant = FloatingPointModeINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5583);
    }
    unsafe {
        let variant = IntegerFunctions2INTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5584);
    }
    unsafe {
        let variant = FunctionPointersINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5603);
    }
    unsafe {
        let variant = IndirectReferencesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5604);
    }
    unsafe {
        let variant = AsmINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5606);
    }
    unsafe {
        let variant = AtomicFloat32MinMaxEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5612);
    }
    unsafe {
        let variant = AtomicFloat64MinMaxEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5613);
    }
    unsafe {
        let variant = AtomicFloat16MinMaxEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5616);
    }
    unsafe {
        let variant = VectorComputeINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5617);
    }
    unsafe {
        let variant = VectorAnyINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5619);
    }
    unsafe {
        let variant = ExpectAssumeKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5629);
    }
    unsafe {
        let variant = SubgroupAvcMotionEstimationINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5696);
    }
    unsafe {
        let variant = SubgroupAvcMotionEstimationIntraINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5697);
    }
    unsafe {
        let variant = SubgroupAvcMotionEstimationChromaINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5698);
    }
    unsafe {
        let variant = VariableLengthArrayINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5817);
    }
    unsafe {
        let variant = FunctionFloatControlINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5821);
    }
    unsafe {
        let variant = FPGAMemoryAttributesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5824);
    }
    unsafe {
        let variant = FPFastMathModeINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5837);
    }
    unsafe {
        let variant = ArbitraryPrecisionIntegersINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5844);
    }
    unsafe {
        let variant = ArbitraryPrecisionFloatingPointINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5845);
    }
    unsafe {
        let variant = UnstructuredLoopControlsINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5886);
    }
    unsafe {
        let variant = FPGALoopControlsINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5888);
    }
    unsafe {
        let variant = KernelAttributesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5892);
    }
    unsafe {
        let variant = FPGAKernelAttributesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5897);
    }
    unsafe {
        let variant = FPGAMemoryAccessesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5898);
    }
    unsafe {
        let variant = FPGAClusterAttributesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5904);
    }
    unsafe {
        let variant = LoopFuseINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5906);
    }
    unsafe {
        let variant = FPGABufferLocationINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5920);
    }
    unsafe {
        let variant = ArbitraryPrecisionFixedPointINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5922);
    }
    unsafe {
        let variant = USMStorageClassesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5935);
    }
    unsafe {
        let variant = IOPipesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5943);
    }
    unsafe {
        let variant = BlockingPipesINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5945);
    }
    unsafe {
        let variant = FPGARegINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 5948);
    }
    unsafe {
        let variant = DotProductInputAllKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6016);
    }
    unsafe {
        let variant = DotProductInput4x8BitKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6017);
    }
    unsafe {
        let variant = DotProductInput4x8BitPackedKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6018);
    }
    unsafe {
        let variant = DotProductKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6019);
    }
    unsafe {
        let variant = BitInstructions();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6025);
    }
    unsafe {
        let variant = AtomicFloat32AddEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6033);
    }
    unsafe {
        let variant = AtomicFloat64AddEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6034);
    }
    unsafe {
        let variant = LongConstantCompositeINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6089);
    }
    unsafe {
        let variant = OptNoneINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6094);
    }
    unsafe {
        let variant = AtomicFloat16AddEXT();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6095);
    }
    unsafe {
        let variant = DebugInfoModuleINTEL();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 6114);
    }
}
#[test]
pub fn test_RayQueryIntersection() {
    use std::mem::*;
    use RayQueryIntersection::*;
    unsafe {
        let variant = RayQueryCandidateIntersectionKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = RayQueryCommittedIntersectionKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_RayQueryCommittedIntersectionType() {
    use std::mem::*;
    use RayQueryCommittedIntersectionType::*;
    unsafe {
        let variant = RayQueryCommittedIntersectionNoneKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = RayQueryCommittedIntersectionTriangleKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
    unsafe {
        let variant = RayQueryCommittedIntersectionGeneratedKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 2);
    }
}
#[test]
pub fn test_RayQueryCandidateIntersectionType() {
    use std::mem::*;
    use RayQueryCandidateIntersectionType::*;
    unsafe {
        let variant = RayQueryCandidateIntersectionTriangleKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
    unsafe {
        let variant = RayQueryCandidateIntersectionAABBKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 1);
    }
}
#[test]
pub fn test_PackedVectorFormat() {
    use std::mem::*;
    use PackedVectorFormat::*;
    unsafe {
        let variant = PackedVectorFormat4x8BitKHR();
        let disc: u32 = transmute(discriminant(&variant));
        assert_eq!(disc, 0);
    }
}
#[test]
pub fn test_IdResultType() {
    use std::mem::*;
    use IdResultType::*;
}
#[test]
pub fn test_IdResult() {
    use std::mem::*;
    use IdResult::*;
}
#[test]
pub fn test_IdMemorySemantics() {
    use std::mem::*;
    use IdMemorySemantics::*;
}
#[test]
pub fn test_IdScope() {
    use std::mem::*;
    use IdScope::*;
}
#[test]
pub fn test_IdRef() {
    use std::mem::*;
    use IdRef::*;
}
#[test]
pub fn test_LiteralInteger() {
    use std::mem::*;
    use LiteralInteger::*;
}
#[test]
pub fn test_LiteralString() {
    use std::mem::*;
    use LiteralString::*;
}
#[test]
pub fn test_LiteralContextDependentNumber() {
    use std::mem::*;
    use LiteralContextDependentNumber::*;
}
#[test]
pub fn test_LiteralExtInstInteger() {
    use std::mem::*;
    use LiteralExtInstInteger::*;
}
#[test]
pub fn test_LiteralSpecConstantOpInteger() {
    use std::mem::*;
    use LiteralSpecConstantOpInteger::*;
}
#[test]
pub fn test_PairLiteralIntegerIdRef() {
    use std::mem::*;
    use PairLiteralIntegerIdRef::*;
}
#[test]
pub fn test_PairIdRefLiteralInteger() {
    use std::mem::*;
    use PairIdRefLiteralInteger::*;
}
#[test]
pub fn test_PairIdRefIdRef() {
    use std::mem::*;
    use PairIdRefIdRef::*;
}
