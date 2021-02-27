#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum Opcode {
    Nop = 0u32,
    Undef = 1u32,
    SourceContinued = 2u32,
    Source = 3u32,
    SourceExtension = 4u32,
    Name = 5u32,
    MemberName = 6u32,
    String = 7u32,
    Line = 8u32,
    Extension = 10u32,
    ExtInstImport = 11u32,
    ExtInst = 12u32,
    MemoryModel = 14u32,
    EntryPoint = 15u32,
    ExecutionMode = 16u32,
    Capability = 17u32,
    TypeVoid = 19u32,
    TypeBool = 20u32,
    TypeInt = 21u32,
    TypeFloat = 22u32,
    TypeVector = 23u32,
    TypeMatrix = 24u32,
    TypeImage = 25u32,
    TypeSampler = 26u32,
    TypeSampledImage = 27u32,
    TypeArray = 28u32,
    TypeRuntimeArray = 29u32,
    TypeStruct = 30u32,
    TypeOpaque = 31u32,
    TypePointer = 32u32,
    TypeFunction = 33u32,
    TypeEvent = 34u32,
    TypeDeviceEvent = 35u32,
    TypeReserveId = 36u32,
    TypeQueue = 37u32,
    TypePipe = 38u32,
    TypeForwardPointer = 39u32,
    ConstantTrue = 41u32,
    ConstantFalse = 42u32,
    Constant = 43u32,
    ConstantComposite = 44u32,
    ConstantSampler = 45u32,
    ConstantNull = 46u32,
    SpecConstantTrue = 48u32,
    SpecConstantFalse = 49u32,
    SpecConstant = 50u32,
    SpecConstantComposite = 51u32,
    SpecConstantOp = 52u32,
    Function = 54u32,
    FunctionParameter = 55u32,
    FunctionEnd = 56u32,
    FunctionCall = 57u32,
    Variable = 59u32,
    ImageTexelPointer = 60u32,
    Load = 61u32,
    Store = 62u32,
    CopyMemory = 63u32,
    CopyMemorySized = 64u32,
    AccessChain = 65u32,
    InBoundsAccessChain = 66u32,
    PtrAccessChain = 67u32,
    ArrayLength = 68u32,
    GenericPtrMemSemantics = 69u32,
    InBoundsPtrAccessChain = 70u32,
    Decorate = 71u32,
    MemberDecorate = 72u32,
    DecorationGroup = 73u32,
    GroupDecorate = 74u32,
    GroupMemberDecorate = 75u32,
    VectorExtractDynamic = 77u32,
    VectorInsertDynamic = 78u32,
    VectorShuffle = 79u32,
    CompositeConstruct = 80u32,
    CompositeExtract = 81u32,
    CompositeInsert = 82u32,
    CopyObject = 83u32,
    Transpose = 84u32,
    SampledImage = 86u32,
    ImageSampleImplicitLod = 87u32,
    ImageSampleExplicitLod = 88u32,
    ImageSampleDrefImplicitLod = 89u32,
    ImageSampleDrefExplicitLod = 90u32,
    ImageSampleProjImplicitLod = 91u32,
    ImageSampleProjExplicitLod = 92u32,
    ImageSampleProjDrefImplicitLod = 93u32,
    ImageSampleProjDrefExplicitLod = 94u32,
    ImageFetch = 95u32,
    ImageGather = 96u32,
    ImageDrefGather = 97u32,
    ImageRead = 98u32,
    ImageWrite = 99u32,
    Image = 100u32,
    ImageQueryFormat = 101u32,
    ImageQueryOrder = 102u32,
    ImageQuerySizeLod = 103u32,
    ImageQuerySize = 104u32,
    ImageQueryLod = 105u32,
    ImageQueryLevels = 106u32,
    ImageQuerySamples = 107u32,
    ConvertFToU = 109u32,
    ConvertFToS = 110u32,
    ConvertSToF = 111u32,
    ConvertUToF = 112u32,
    UConvert = 113u32,
    SConvert = 114u32,
    FConvert = 115u32,
    QuantizeToF16 = 116u32,
    ConvertPtrToU = 117u32,
    SatConvertSToU = 118u32,
    SatConvertUToS = 119u32,
    ConvertUToPtr = 120u32,
    PtrCastToGeneric = 121u32,
    GenericCastToPtr = 122u32,
    GenericCastToPtrExplicit = 123u32,
    Bitcast = 124u32,
    SNegate = 126u32,
    FNegate = 127u32,
    IAdd = 128u32,
    FAdd = 129u32,
    ISub = 130u32,
    FSub = 131u32,
    IMul = 132u32,
    FMul = 133u32,
    UDiv = 134u32,
    SDiv = 135u32,
    FDiv = 136u32,
    UMod = 137u32,
    SRem = 138u32,
    SMod = 139u32,
    FRem = 140u32,
    FMod = 141u32,
    VectorTimesScalar = 142u32,
    MatrixTimesScalar = 143u32,
    VectorTimesMatrix = 144u32,
    MatrixTimesVector = 145u32,
    MatrixTimesMatrix = 146u32,
    OuterProduct = 147u32,
    Dot = 148u32,
    IAddCarry = 149u32,
    ISubBorrow = 150u32,
    UMulExtended = 151u32,
    SMulExtended = 152u32,
    Any = 154u32,
    All = 155u32,
    IsNan = 156u32,
    IsInf = 157u32,
    IsFinite = 158u32,
    IsNormal = 159u32,
    SignBitSet = 160u32,
    LessOrGreater = 161u32,
    Ordered = 162u32,
    Unordered = 163u32,
    LogicalEqual = 164u32,
    LogicalNotEqual = 165u32,
    LogicalOr = 166u32,
    LogicalAnd = 167u32,
    LogicalNot = 168u32,
    Select = 169u32,
    IEqual = 170u32,
    INotEqual = 171u32,
    UGreaterThan = 172u32,
    SGreaterThan = 173u32,
    UGreaterThanEqual = 174u32,
    SGreaterThanEqual = 175u32,
    ULessThan = 176u32,
    SLessThan = 177u32,
    ULessThanEqual = 178u32,
    SLessThanEqual = 179u32,
    FOrdEqual = 180u32,
    FUnordEqual = 181u32,
    FOrdNotEqual = 182u32,
    FUnordNotEqual = 183u32,
    FOrdLessThan = 184u32,
    FUnordLessThan = 185u32,
    FOrdGreaterThan = 186u32,
    FUnordGreaterThan = 187u32,
    FOrdLessThanEqual = 188u32,
    FUnordLessThanEqual = 189u32,
    FOrdGreaterThanEqual = 190u32,
    FUnordGreaterThanEqual = 191u32,
    ShiftRightLogical = 194u32,
    ShiftRightArithmetic = 195u32,
    ShiftLeftLogical = 196u32,
    BitwiseOr = 197u32,
    BitwiseXor = 198u32,
    BitwiseAnd = 199u32,
    Not = 200u32,
    BitFieldInsert = 201u32,
    BitFieldSExtract = 202u32,
    BitFieldUExtract = 203u32,
    BitReverse = 204u32,
    BitCount = 205u32,
    DPdx = 207u32,
    DPdy = 208u32,
    Fwidth = 209u32,
    DPdxFine = 210u32,
    DPdyFine = 211u32,
    FwidthFine = 212u32,
    DPdxCoarse = 213u32,
    DPdyCoarse = 214u32,
    FwidthCoarse = 215u32,
    EmitVertex = 218u32,
    EndPrimitive = 219u32,
    EmitStreamVertex = 220u32,
    EndStreamPrimitive = 221u32,
    ControlBarrier = 224u32,
    MemoryBarrier = 225u32,
    AtomicLoad = 227u32,
    AtomicStore = 228u32,
    AtomicExchange = 229u32,
    AtomicCompareExchange = 230u32,
    AtomicCompareExchangeWeak = 231u32,
    AtomicIIncrement = 232u32,
    AtomicIDecrement = 233u32,
    AtomicIAdd = 234u32,
    AtomicISub = 235u32,
    AtomicSMin = 236u32,
    AtomicUMin = 237u32,
    AtomicSMax = 238u32,
    AtomicUMax = 239u32,
    AtomicAnd = 240u32,
    AtomicOr = 241u32,
    AtomicXor = 242u32,
    Phi = 245u32,
    LoopMerge = 246u32,
    SelectionMerge = 247u32,
    Label = 248u32,
    Branch = 249u32,
    BranchConditional = 250u32,
    Switch = 251u32,
    Kill = 252u32,
    Return = 253u32,
    ReturnValue = 254u32,
    Unreachable = 255u32,
    LifetimeStart = 256u32,
    LifetimeStop = 257u32,
    GroupAsyncCopy = 259u32,
    GroupWaitEvents = 260u32,
    GroupAll = 261u32,
    GroupAny = 262u32,
    GroupBroadcast = 263u32,
    GroupIAdd = 264u32,
    GroupFAdd = 265u32,
    GroupFMin = 266u32,
    GroupUMin = 267u32,
    GroupSMin = 268u32,
    GroupFMax = 269u32,
    GroupUMax = 270u32,
    GroupSMax = 271u32,
    ReadPipe = 274u32,
    WritePipe = 275u32,
    ReservedReadPipe = 276u32,
    ReservedWritePipe = 277u32,
    ReserveReadPipePackets = 278u32,
    ReserveWritePipePackets = 279u32,
    CommitReadPipe = 280u32,
    CommitWritePipe = 281u32,
    IsValidReserveId = 282u32,
    GetNumPipePackets = 283u32,
    GetMaxPipePackets = 284u32,
    GroupReserveReadPipePackets = 285u32,
    GroupReserveWritePipePackets = 286u32,
    GroupCommitReadPipe = 287u32,
    GroupCommitWritePipe = 288u32,
    EnqueueMarker = 291u32,
    EnqueueKernel = 292u32,
    GetKernelNDrangeSubGroupCount = 293u32,
    GetKernelNDrangeMaxSubGroupSize = 294u32,
    GetKernelWorkGroupSize = 295u32,
    GetKernelPreferredWorkGroupSizeMultiple = 296u32,
    RetainEvent = 297u32,
    ReleaseEvent = 298u32,
    CreateUserEvent = 299u32,
    IsValidEvent = 300u32,
    SetUserEventStatus = 301u32,
    CaptureEventProfilingInfo = 302u32,
    GetDefaultQueue = 303u32,
    BuildNDRange = 304u32,
    ImageSparseSampleImplicitLod = 305u32,
    ImageSparseSampleExplicitLod = 306u32,
    ImageSparseSampleDrefImplicitLod = 307u32,
    ImageSparseSampleDrefExplicitLod = 308u32,
    ImageSparseSampleProjImplicitLod = 309u32,
    ImageSparseSampleProjExplicitLod = 310u32,
    ImageSparseSampleProjDrefImplicitLod = 311u32,
    ImageSparseSampleProjDrefExplicitLod = 312u32,
    ImageSparseFetch = 313u32,
    ImageSparseGather = 314u32,
    ImageSparseDrefGather = 315u32,
    ImageSparseTexelsResident = 316u32,
    NoLine = 317u32,
    AtomicFlagTestAndSet = 318u32,
    AtomicFlagClear = 319u32,
    ImageSparseRead = 320u32,
    SizeOf = 321u32,
    TypePipeStorage = 322u32,
    ConstantPipeStorage = 323u32,
    CreatePipeFromPipeStorage = 324u32,
    GetKernelLocalSizeForSubgroupCount = 325u32,
    GetKernelMaxNumSubgroups = 326u32,
    TypeNamedBarrier = 327u32,
    NamedBarrierInitialize = 328u32,
    MemoryNamedBarrier = 329u32,
    ModuleProcessed = 330u32,
    ExecutionModeId = 331u32,
    DecorateId = 332u32,
    GroupNonUniformElect = 333u32,
    GroupNonUniformAll = 334u32,
    GroupNonUniformAny = 335u32,
    GroupNonUniformAllEqual = 336u32,
    GroupNonUniformBroadcast = 337u32,
    GroupNonUniformBroadcastFirst = 338u32,
    GroupNonUniformBallot = 339u32,
    GroupNonUniformInverseBallot = 340u32,
    GroupNonUniformBallotBitExtract = 341u32,
    GroupNonUniformBallotBitCount = 342u32,
    GroupNonUniformBallotFindLSB = 343u32,
    GroupNonUniformBallotFindMSB = 344u32,
    GroupNonUniformShuffle = 345u32,
    GroupNonUniformShuffleXor = 346u32,
    GroupNonUniformShuffleUp = 347u32,
    GroupNonUniformShuffleDown = 348u32,
    GroupNonUniformIAdd = 349u32,
    GroupNonUniformFAdd = 350u32,
    GroupNonUniformIMul = 351u32,
    GroupNonUniformFMul = 352u32,
    GroupNonUniformSMin = 353u32,
    GroupNonUniformUMin = 354u32,
    GroupNonUniformFMin = 355u32,
    GroupNonUniformSMax = 356u32,
    GroupNonUniformUMax = 357u32,
    GroupNonUniformFMax = 358u32,
    GroupNonUniformBitwiseAnd = 359u32,
    GroupNonUniformBitwiseOr = 360u32,
    GroupNonUniformBitwiseXor = 361u32,
    GroupNonUniformLogicalAnd = 362u32,
    GroupNonUniformLogicalOr = 363u32,
    GroupNonUniformLogicalXor = 364u32,
    GroupNonUniformQuadBroadcast = 365u32,
    GroupNonUniformQuadSwap = 366u32,
    CopyLogical = 400u32,
    PtrEqual = 401u32,
    PtrNotEqual = 402u32,
    PtrDiff = 403u32,
    TerminateInvocation = 4416u32,
    SubgroupBallotKHR = 4421u32,
    SubgroupFirstInvocationKHR = 4422u32,
    SubgroupAllKHR = 4428u32,
    SubgroupAnyKHR = 4429u32,
    SubgroupAllEqualKHR = 4430u32,
    SubgroupReadInvocationKHR = 4432u32,
    TraceRayKHR = 4445u32,
    ExecuteCallableKHR = 4446u32,
    ConvertUToAccelerationStructureKHR = 4447u32,
    IgnoreIntersectionKHR = 4448u32,
    TerminateRayKHR = 4449u32,
    TypeRayQueryKHR = 4472u32,
    RayQueryInitializeKHR = 4473u32,
    RayQueryTerminateKHR = 4474u32,
    RayQueryGenerateIntersectionKHR = 4475u32,
    RayQueryConfirmIntersectionKHR = 4476u32,
    RayQueryProceedKHR = 4477u32,
    RayQueryGetIntersectionTypeKHR = 4479u32,
    GroupIAddNonUniformAMD = 5000u32,
    GroupFAddNonUniformAMD = 5001u32,
    GroupFMinNonUniformAMD = 5002u32,
    GroupUMinNonUniformAMD = 5003u32,
    GroupSMinNonUniformAMD = 5004u32,
    GroupFMaxNonUniformAMD = 5005u32,
    GroupUMaxNonUniformAMD = 5006u32,
    GroupSMaxNonUniformAMD = 5007u32,
    FragmentMaskFetchAMD = 5011u32,
    FragmentFetchAMD = 5012u32,
    ReadClockKHR = 5056u32,
    ImageSampleFootprintNV = 5283u32,
    GroupNonUniformPartitionNV = 5296u32,
    WritePackedPrimitiveIndices4x8NV = 5299u32,
    ReportIntersectionNV = 5334u32,
    IgnoreIntersectionNV = 5335u32,
    TerminateRayNV = 5336u32,
    TraceNV = 5337u32,
    TypeAccelerationStructureNV = 5341u32,
    ExecuteCallableNV = 5344u32,
    TypeCooperativeMatrixNV = 5358u32,
    CooperativeMatrixLoadNV = 5359u32,
    CooperativeMatrixStoreNV = 5360u32,
    CooperativeMatrixMulAddNV = 5361u32,
    CooperativeMatrixLengthNV = 5362u32,
    BeginInvocationInterlockEXT = 5364u32,
    EndInvocationInterlockEXT = 5365u32,
    DemoteToHelperInvocationEXT = 5380u32,
    IsHelperInvocationEXT = 5381u32,
    SubgroupShuffleINTEL = 5571u32,
    SubgroupShuffleDownINTEL = 5572u32,
    SubgroupShuffleUpINTEL = 5573u32,
    SubgroupShuffleXorINTEL = 5574u32,
    SubgroupBlockReadINTEL = 5575u32,
    SubgroupBlockWriteINTEL = 5576u32,
    SubgroupImageBlockReadINTEL = 5577u32,
    SubgroupImageBlockWriteINTEL = 5578u32,
    SubgroupImageMediaBlockReadINTEL = 5580u32,
    SubgroupImageMediaBlockWriteINTEL = 5581u32,
    UCountLeadingZerosINTEL = 5585u32,
    UCountTrailingZerosINTEL = 5586u32,
    AbsISubINTEL = 5587u32,
    AbsUSubINTEL = 5588u32,
    IAddSatINTEL = 5589u32,
    UAddSatINTEL = 5590u32,
    IAverageINTEL = 5591u32,
    UAverageINTEL = 5592u32,
    IAverageRoundedINTEL = 5593u32,
    UAverageRoundedINTEL = 5594u32,
    ISubSatINTEL = 5595u32,
    USubSatINTEL = 5596u32,
    IMul32x16INTEL = 5597u32,
    UMul32x16INTEL = 5598u32,
    ConstFunctionPointerINTEL = 5600u32,
    FunctionPointerCallINTEL = 5601u32,
    AsmTargetINTEL = 5609u32,
    AsmINTEL = 5610u32,
    AsmCallINTEL = 5611u32,
    AtomicFMinEXT = 5614u32,
    AtomicFMaxEXT = 5615u32,
    DecorateString = 5632u32,
    MemberDecorateString = 5633u32,
    VmeImageINTEL = 5699u32,
    TypeVmeImageINTEL = 5700u32,
    TypeAvcImePayloadINTEL = 5701u32,
    TypeAvcRefPayloadINTEL = 5702u32,
    TypeAvcSicPayloadINTEL = 5703u32,
    TypeAvcMcePayloadINTEL = 5704u32,
    TypeAvcMceResultINTEL = 5705u32,
    TypeAvcImeResultINTEL = 5706u32,
    TypeAvcImeResultSingleReferenceStreamoutINTEL = 5707u32,
    TypeAvcImeResultDualReferenceStreamoutINTEL = 5708u32,
    TypeAvcImeSingleReferenceStreaminINTEL = 5709u32,
    TypeAvcImeDualReferenceStreaminINTEL = 5710u32,
    TypeAvcRefResultINTEL = 5711u32,
    TypeAvcSicResultINTEL = 5712u32,
    SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL = 5713u32,
    SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL = 5714u32,
    SubgroupAvcMceGetDefaultInterShapePenaltyINTEL = 5715u32,
    SubgroupAvcMceSetInterShapePenaltyINTEL = 5716u32,
    SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL = 5717u32,
    SubgroupAvcMceSetInterDirectionPenaltyINTEL = 5718u32,
    SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL = 5719u32,
    SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL = 5720u32,
    SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL = 5721u32,
    SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL = 5722u32,
    SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL = 5723u32,
    SubgroupAvcMceSetMotionVectorCostFunctionINTEL = 5724u32,
    SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL = 5725u32,
    SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL = 5726u32,
    SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL = 5727u32,
    SubgroupAvcMceSetAcOnlyHaarINTEL = 5728u32,
    SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL = 5729u32,
    SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL = 5730u32,
    SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL = 5731u32,
    SubgroupAvcMceConvertToImePayloadINTEL = 5732u32,
    SubgroupAvcMceConvertToImeResultINTEL = 5733u32,
    SubgroupAvcMceConvertToRefPayloadINTEL = 5734u32,
    SubgroupAvcMceConvertToRefResultINTEL = 5735u32,
    SubgroupAvcMceConvertToSicPayloadINTEL = 5736u32,
    SubgroupAvcMceConvertToSicResultINTEL = 5737u32,
    SubgroupAvcMceGetMotionVectorsINTEL = 5738u32,
    SubgroupAvcMceGetInterDistortionsINTEL = 5739u32,
    SubgroupAvcMceGetBestInterDistortionsINTEL = 5740u32,
    SubgroupAvcMceGetInterMajorShapeINTEL = 5741u32,
    SubgroupAvcMceGetInterMinorShapeINTEL = 5742u32,
    SubgroupAvcMceGetInterDirectionsINTEL = 5743u32,
    SubgroupAvcMceGetInterMotionVectorCountINTEL = 5744u32,
    SubgroupAvcMceGetInterReferenceIdsINTEL = 5745u32,
    SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL = 5746u32,
    SubgroupAvcImeInitializeINTEL = 5747u32,
    SubgroupAvcImeSetSingleReferenceINTEL = 5748u32,
    SubgroupAvcImeSetDualReferenceINTEL = 5749u32,
    SubgroupAvcImeRefWindowSizeINTEL = 5750u32,
    SubgroupAvcImeAdjustRefOffsetINTEL = 5751u32,
    SubgroupAvcImeConvertToMcePayloadINTEL = 5752u32,
    SubgroupAvcImeSetMaxMotionVectorCountINTEL = 5753u32,
    SubgroupAvcImeSetUnidirectionalMixDisableINTEL = 5754u32,
    SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL = 5755u32,
    SubgroupAvcImeSetWeightedSadINTEL = 5756u32,
    SubgroupAvcImeEvaluateWithSingleReferenceINTEL = 5757u32,
    SubgroupAvcImeEvaluateWithDualReferenceINTEL = 5758u32,
    SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL = 5759u32,
    SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL = 5760u32,
    SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL = 5761u32,
    SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL = 5762u32,
    SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL = 5763u32,
    SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL = 5764u32,
    SubgroupAvcImeConvertToMceResultINTEL = 5765u32,
    SubgroupAvcImeGetSingleReferenceStreaminINTEL = 5766u32,
    SubgroupAvcImeGetDualReferenceStreaminINTEL = 5767u32,
    SubgroupAvcImeStripSingleReferenceStreamoutINTEL = 5768u32,
    SubgroupAvcImeStripDualReferenceStreamoutINTEL = 5769u32,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL = 5770u32,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL = 5771u32,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL = 5772u32,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL = 5773u32,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL = 5774u32,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL = 5775u32,
    SubgroupAvcImeGetBorderReachedINTEL = 5776u32,
    SubgroupAvcImeGetTruncatedSearchIndicationINTEL = 5777u32,
    SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL = 5778u32,
    SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL = 5779u32,
    SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL = 5780u32,
    SubgroupAvcFmeInitializeINTEL = 5781u32,
    SubgroupAvcBmeInitializeINTEL = 5782u32,
    SubgroupAvcRefConvertToMcePayloadINTEL = 5783u32,
    SubgroupAvcRefSetBidirectionalMixDisableINTEL = 5784u32,
    SubgroupAvcRefSetBilinearFilterEnableINTEL = 5785u32,
    SubgroupAvcRefEvaluateWithSingleReferenceINTEL = 5786u32,
    SubgroupAvcRefEvaluateWithDualReferenceINTEL = 5787u32,
    SubgroupAvcRefEvaluateWithMultiReferenceINTEL = 5788u32,
    SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL = 5789u32,
    SubgroupAvcRefConvertToMceResultINTEL = 5790u32,
    SubgroupAvcSicInitializeINTEL = 5791u32,
    SubgroupAvcSicConfigureSkcINTEL = 5792u32,
    SubgroupAvcSicConfigureIpeLumaINTEL = 5793u32,
    SubgroupAvcSicConfigureIpeLumaChromaINTEL = 5794u32,
    SubgroupAvcSicGetMotionVectorMaskINTEL = 5795u32,
    SubgroupAvcSicConvertToMcePayloadINTEL = 5796u32,
    SubgroupAvcSicSetIntraLumaShapePenaltyINTEL = 5797u32,
    SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL = 5798u32,
    SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL = 5799u32,
    SubgroupAvcSicSetBilinearFilterEnableINTEL = 5800u32,
    SubgroupAvcSicSetSkcForwardTransformEnableINTEL = 5801u32,
    SubgroupAvcSicSetBlockBasedRawSkipSadINTEL = 5802u32,
    SubgroupAvcSicEvaluateIpeINTEL = 5803u32,
    SubgroupAvcSicEvaluateWithSingleReferenceINTEL = 5804u32,
    SubgroupAvcSicEvaluateWithDualReferenceINTEL = 5805u32,
    SubgroupAvcSicEvaluateWithMultiReferenceINTEL = 5806u32,
    SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL = 5807u32,
    SubgroupAvcSicConvertToMceResultINTEL = 5808u32,
    SubgroupAvcSicGetIpeLumaShapeINTEL = 5809u32,
    SubgroupAvcSicGetBestIpeLumaDistortionINTEL = 5810u32,
    SubgroupAvcSicGetBestIpeChromaDistortionINTEL = 5811u32,
    SubgroupAvcSicGetPackedIpeLumaModesINTEL = 5812u32,
    SubgroupAvcSicGetIpeChromaModeINTEL = 5813u32,
    SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL = 5814u32,
    SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL = 5815u32,
    SubgroupAvcSicGetInterRawSadsINTEL = 5816u32,
    VariableLengthArrayINTEL = 5818u32,
    SaveMemoryINTEL = 5819u32,
    RestoreMemoryINTEL = 5820u32,
    LoopControlINTEL = 5887u32,
    PtrCastToCrossWorkgroupINTEL = 5934u32,
    CrossWorkgroupCastToPtrINTEL = 5938u32,
    ReadPipeBlockingINTEL = 5946u32,
    WritePipeBlockingINTEL = 5947u32,
    FPGARegINTEL = 5949u32,
    RayQueryGetRayTMinKHR = 6016u32,
    RayQueryGetRayFlagsKHR = 6017u32,
    RayQueryGetIntersectionTKHR = 6018u32,
    RayQueryGetIntersectionInstanceCustomIndexKHR = 6019u32,
    RayQueryGetIntersectionInstanceIdKHR = 6020u32,
    RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR = 6021u32,
    RayQueryGetIntersectionGeometryIndexKHR = 6022u32,
    RayQueryGetIntersectionPrimitiveIndexKHR = 6023u32,
    RayQueryGetIntersectionBarycentricsKHR = 6024u32,
    RayQueryGetIntersectionFrontFaceKHR = 6025u32,
    RayQueryGetIntersectionCandidateAABBOpaqueKHR = 6026u32,
    RayQueryGetIntersectionObjectRayDirectionKHR = 6027u32,
    RayQueryGetIntersectionObjectRayOriginKHR = 6028u32,
    RayQueryGetWorldRayDirectionKHR = 6029u32,
    RayQueryGetWorldRayOriginKHR = 6030u32,
    RayQueryGetIntersectionObjectToWorldKHR = 6031u32,
    RayQueryGetIntersectionWorldToObjectKHR = 6032u32,
    AtomicFAddEXT = 6035u32,
    TypeBufferSurfaceINTEL = 6086u32,
    TypeStructContinuedINTEL = 6090u32,
    ConstantCompositeContinuedINTEL = 6091u32,
    SpecConstantCompositeContinuedINTEL = 6092u32,
}
impl Opcode {
    pub fn from_str(tok: &str) -> Option<Opcode> {
        match tok {
            "Nop" => Some(Opcode::Nop),
            "Undef" => Some(Opcode::Undef),
            "SourceContinued" => Some(Opcode::SourceContinued),
            "Source" => Some(Opcode::Source),
            "SourceExtension" => Some(Opcode::SourceExtension),
            "Name" => Some(Opcode::Name),
            "MemberName" => Some(Opcode::MemberName),
            "String" => Some(Opcode::String),
            "Line" => Some(Opcode::Line),
            "Extension" => Some(Opcode::Extension),
            "ExtInstImport" => Some(Opcode::ExtInstImport),
            "ExtInst" => Some(Opcode::ExtInst),
            "MemoryModel" => Some(Opcode::MemoryModel),
            "EntryPoint" => Some(Opcode::EntryPoint),
            "ExecutionMode" => Some(Opcode::ExecutionMode),
            "Capability" => Some(Opcode::Capability),
            "TypeVoid" => Some(Opcode::TypeVoid),
            "TypeBool" => Some(Opcode::TypeBool),
            "TypeInt" => Some(Opcode::TypeInt),
            "TypeFloat" => Some(Opcode::TypeFloat),
            "TypeVector" => Some(Opcode::TypeVector),
            "TypeMatrix" => Some(Opcode::TypeMatrix),
            "TypeImage" => Some(Opcode::TypeImage),
            "TypeSampler" => Some(Opcode::TypeSampler),
            "TypeSampledImage" => Some(Opcode::TypeSampledImage),
            "TypeArray" => Some(Opcode::TypeArray),
            "TypeRuntimeArray" => Some(Opcode::TypeRuntimeArray),
            "TypeStruct" => Some(Opcode::TypeStruct),
            "TypeOpaque" => Some(Opcode::TypeOpaque),
            "TypePointer" => Some(Opcode::TypePointer),
            "TypeFunction" => Some(Opcode::TypeFunction),
            "TypeEvent" => Some(Opcode::TypeEvent),
            "TypeDeviceEvent" => Some(Opcode::TypeDeviceEvent),
            "TypeReserveId" => Some(Opcode::TypeReserveId),
            "TypeQueue" => Some(Opcode::TypeQueue),
            "TypePipe" => Some(Opcode::TypePipe),
            "TypeForwardPointer" => Some(Opcode::TypeForwardPointer),
            "ConstantTrue" => Some(Opcode::ConstantTrue),
            "ConstantFalse" => Some(Opcode::ConstantFalse),
            "Constant" => Some(Opcode::Constant),
            "ConstantComposite" => Some(Opcode::ConstantComposite),
            "ConstantSampler" => Some(Opcode::ConstantSampler),
            "ConstantNull" => Some(Opcode::ConstantNull),
            "SpecConstantTrue" => Some(Opcode::SpecConstantTrue),
            "SpecConstantFalse" => Some(Opcode::SpecConstantFalse),
            "SpecConstant" => Some(Opcode::SpecConstant),
            "SpecConstantComposite" => Some(Opcode::SpecConstantComposite),
            "SpecConstantOp" => Some(Opcode::SpecConstantOp),
            "Function" => Some(Opcode::Function),
            "FunctionParameter" => Some(Opcode::FunctionParameter),
            "FunctionEnd" => Some(Opcode::FunctionEnd),
            "FunctionCall" => Some(Opcode::FunctionCall),
            "Variable" => Some(Opcode::Variable),
            "ImageTexelPointer" => Some(Opcode::ImageTexelPointer),
            "Load" => Some(Opcode::Load),
            "Store" => Some(Opcode::Store),
            "CopyMemory" => Some(Opcode::CopyMemory),
            "CopyMemorySized" => Some(Opcode::CopyMemorySized),
            "AccessChain" => Some(Opcode::AccessChain),
            "InBoundsAccessChain" => Some(Opcode::InBoundsAccessChain),
            "PtrAccessChain" => Some(Opcode::PtrAccessChain),
            "ArrayLength" => Some(Opcode::ArrayLength),
            "GenericPtrMemSemantics" => Some(Opcode::GenericPtrMemSemantics),
            "InBoundsPtrAccessChain" => Some(Opcode::InBoundsPtrAccessChain),
            "Decorate" => Some(Opcode::Decorate),
            "MemberDecorate" => Some(Opcode::MemberDecorate),
            "DecorationGroup" => Some(Opcode::DecorationGroup),
            "GroupDecorate" => Some(Opcode::GroupDecorate),
            "GroupMemberDecorate" => Some(Opcode::GroupMemberDecorate),
            "VectorExtractDynamic" => Some(Opcode::VectorExtractDynamic),
            "VectorInsertDynamic" => Some(Opcode::VectorInsertDynamic),
            "VectorShuffle" => Some(Opcode::VectorShuffle),
            "CompositeConstruct" => Some(Opcode::CompositeConstruct),
            "CompositeExtract" => Some(Opcode::CompositeExtract),
            "CompositeInsert" => Some(Opcode::CompositeInsert),
            "CopyObject" => Some(Opcode::CopyObject),
            "Transpose" => Some(Opcode::Transpose),
            "SampledImage" => Some(Opcode::SampledImage),
            "ImageSampleImplicitLod" => Some(Opcode::ImageSampleImplicitLod),
            "ImageSampleExplicitLod" => Some(Opcode::ImageSampleExplicitLod),
            "ImageSampleDrefImplicitLod" => Some(Opcode::ImageSampleDrefImplicitLod),
            "ImageSampleDrefExplicitLod" => Some(Opcode::ImageSampleDrefExplicitLod),
            "ImageSampleProjImplicitLod" => Some(Opcode::ImageSampleProjImplicitLod),
            "ImageSampleProjExplicitLod" => Some(Opcode::ImageSampleProjExplicitLod),
            "ImageSampleProjDrefImplicitLod" => Some(Opcode::ImageSampleProjDrefImplicitLod),
            "ImageSampleProjDrefExplicitLod" => Some(Opcode::ImageSampleProjDrefExplicitLod),
            "ImageFetch" => Some(Opcode::ImageFetch),
            "ImageGather" => Some(Opcode::ImageGather),
            "ImageDrefGather" => Some(Opcode::ImageDrefGather),
            "ImageRead" => Some(Opcode::ImageRead),
            "ImageWrite" => Some(Opcode::ImageWrite),
            "Image" => Some(Opcode::Image),
            "ImageQueryFormat" => Some(Opcode::ImageQueryFormat),
            "ImageQueryOrder" => Some(Opcode::ImageQueryOrder),
            "ImageQuerySizeLod" => Some(Opcode::ImageQuerySizeLod),
            "ImageQuerySize" => Some(Opcode::ImageQuerySize),
            "ImageQueryLod" => Some(Opcode::ImageQueryLod),
            "ImageQueryLevels" => Some(Opcode::ImageQueryLevels),
            "ImageQuerySamples" => Some(Opcode::ImageQuerySamples),
            "ConvertFToU" => Some(Opcode::ConvertFToU),
            "ConvertFToS" => Some(Opcode::ConvertFToS),
            "ConvertSToF" => Some(Opcode::ConvertSToF),
            "ConvertUToF" => Some(Opcode::ConvertUToF),
            "UConvert" => Some(Opcode::UConvert),
            "SConvert" => Some(Opcode::SConvert),
            "FConvert" => Some(Opcode::FConvert),
            "QuantizeToF16" => Some(Opcode::QuantizeToF16),
            "ConvertPtrToU" => Some(Opcode::ConvertPtrToU),
            "SatConvertSToU" => Some(Opcode::SatConvertSToU),
            "SatConvertUToS" => Some(Opcode::SatConvertUToS),
            "ConvertUToPtr" => Some(Opcode::ConvertUToPtr),
            "PtrCastToGeneric" => Some(Opcode::PtrCastToGeneric),
            "GenericCastToPtr" => Some(Opcode::GenericCastToPtr),
            "GenericCastToPtrExplicit" => Some(Opcode::GenericCastToPtrExplicit),
            "Bitcast" => Some(Opcode::Bitcast),
            "SNegate" => Some(Opcode::SNegate),
            "FNegate" => Some(Opcode::FNegate),
            "IAdd" => Some(Opcode::IAdd),
            "FAdd" => Some(Opcode::FAdd),
            "ISub" => Some(Opcode::ISub),
            "FSub" => Some(Opcode::FSub),
            "IMul" => Some(Opcode::IMul),
            "FMul" => Some(Opcode::FMul),
            "UDiv" => Some(Opcode::UDiv),
            "SDiv" => Some(Opcode::SDiv),
            "FDiv" => Some(Opcode::FDiv),
            "UMod" => Some(Opcode::UMod),
            "SRem" => Some(Opcode::SRem),
            "SMod" => Some(Opcode::SMod),
            "FRem" => Some(Opcode::FRem),
            "FMod" => Some(Opcode::FMod),
            "VectorTimesScalar" => Some(Opcode::VectorTimesScalar),
            "MatrixTimesScalar" => Some(Opcode::MatrixTimesScalar),
            "VectorTimesMatrix" => Some(Opcode::VectorTimesMatrix),
            "MatrixTimesVector" => Some(Opcode::MatrixTimesVector),
            "MatrixTimesMatrix" => Some(Opcode::MatrixTimesMatrix),
            "OuterProduct" => Some(Opcode::OuterProduct),
            "Dot" => Some(Opcode::Dot),
            "IAddCarry" => Some(Opcode::IAddCarry),
            "ISubBorrow" => Some(Opcode::ISubBorrow),
            "UMulExtended" => Some(Opcode::UMulExtended),
            "SMulExtended" => Some(Opcode::SMulExtended),
            "Any" => Some(Opcode::Any),
            "All" => Some(Opcode::All),
            "IsNan" => Some(Opcode::IsNan),
            "IsInf" => Some(Opcode::IsInf),
            "IsFinite" => Some(Opcode::IsFinite),
            "IsNormal" => Some(Opcode::IsNormal),
            "SignBitSet" => Some(Opcode::SignBitSet),
            "LessOrGreater" => Some(Opcode::LessOrGreater),
            "Ordered" => Some(Opcode::Ordered),
            "Unordered" => Some(Opcode::Unordered),
            "LogicalEqual" => Some(Opcode::LogicalEqual),
            "LogicalNotEqual" => Some(Opcode::LogicalNotEqual),
            "LogicalOr" => Some(Opcode::LogicalOr),
            "LogicalAnd" => Some(Opcode::LogicalAnd),
            "LogicalNot" => Some(Opcode::LogicalNot),
            "Select" => Some(Opcode::Select),
            "IEqual" => Some(Opcode::IEqual),
            "INotEqual" => Some(Opcode::INotEqual),
            "UGreaterThan" => Some(Opcode::UGreaterThan),
            "SGreaterThan" => Some(Opcode::SGreaterThan),
            "UGreaterThanEqual" => Some(Opcode::UGreaterThanEqual),
            "SGreaterThanEqual" => Some(Opcode::SGreaterThanEqual),
            "ULessThan" => Some(Opcode::ULessThan),
            "SLessThan" => Some(Opcode::SLessThan),
            "ULessThanEqual" => Some(Opcode::ULessThanEqual),
            "SLessThanEqual" => Some(Opcode::SLessThanEqual),
            "FOrdEqual" => Some(Opcode::FOrdEqual),
            "FUnordEqual" => Some(Opcode::FUnordEqual),
            "FOrdNotEqual" => Some(Opcode::FOrdNotEqual),
            "FUnordNotEqual" => Some(Opcode::FUnordNotEqual),
            "FOrdLessThan" => Some(Opcode::FOrdLessThan),
            "FUnordLessThan" => Some(Opcode::FUnordLessThan),
            "FOrdGreaterThan" => Some(Opcode::FOrdGreaterThan),
            "FUnordGreaterThan" => Some(Opcode::FUnordGreaterThan),
            "FOrdLessThanEqual" => Some(Opcode::FOrdLessThanEqual),
            "FUnordLessThanEqual" => Some(Opcode::FUnordLessThanEqual),
            "FOrdGreaterThanEqual" => Some(Opcode::FOrdGreaterThanEqual),
            "FUnordGreaterThanEqual" => Some(Opcode::FUnordGreaterThanEqual),
            "ShiftRightLogical" => Some(Opcode::ShiftRightLogical),
            "ShiftRightArithmetic" => Some(Opcode::ShiftRightArithmetic),
            "ShiftLeftLogical" => Some(Opcode::ShiftLeftLogical),
            "BitwiseOr" => Some(Opcode::BitwiseOr),
            "BitwiseXor" => Some(Opcode::BitwiseXor),
            "BitwiseAnd" => Some(Opcode::BitwiseAnd),
            "Not" => Some(Opcode::Not),
            "BitFieldInsert" => Some(Opcode::BitFieldInsert),
            "BitFieldSExtract" => Some(Opcode::BitFieldSExtract),
            "BitFieldUExtract" => Some(Opcode::BitFieldUExtract),
            "BitReverse" => Some(Opcode::BitReverse),
            "BitCount" => Some(Opcode::BitCount),
            "DPdx" => Some(Opcode::DPdx),
            "DPdy" => Some(Opcode::DPdy),
            "Fwidth" => Some(Opcode::Fwidth),
            "DPdxFine" => Some(Opcode::DPdxFine),
            "DPdyFine" => Some(Opcode::DPdyFine),
            "FwidthFine" => Some(Opcode::FwidthFine),
            "DPdxCoarse" => Some(Opcode::DPdxCoarse),
            "DPdyCoarse" => Some(Opcode::DPdyCoarse),
            "FwidthCoarse" => Some(Opcode::FwidthCoarse),
            "EmitVertex" => Some(Opcode::EmitVertex),
            "EndPrimitive" => Some(Opcode::EndPrimitive),
            "EmitStreamVertex" => Some(Opcode::EmitStreamVertex),
            "EndStreamPrimitive" => Some(Opcode::EndStreamPrimitive),
            "ControlBarrier" => Some(Opcode::ControlBarrier),
            "MemoryBarrier" => Some(Opcode::MemoryBarrier),
            "AtomicLoad" => Some(Opcode::AtomicLoad),
            "AtomicStore" => Some(Opcode::AtomicStore),
            "AtomicExchange" => Some(Opcode::AtomicExchange),
            "AtomicCompareExchange" => Some(Opcode::AtomicCompareExchange),
            "AtomicCompareExchangeWeak" => Some(Opcode::AtomicCompareExchangeWeak),
            "AtomicIIncrement" => Some(Opcode::AtomicIIncrement),
            "AtomicIDecrement" => Some(Opcode::AtomicIDecrement),
            "AtomicIAdd" => Some(Opcode::AtomicIAdd),
            "AtomicISub" => Some(Opcode::AtomicISub),
            "AtomicSMin" => Some(Opcode::AtomicSMin),
            "AtomicUMin" => Some(Opcode::AtomicUMin),
            "AtomicSMax" => Some(Opcode::AtomicSMax),
            "AtomicUMax" => Some(Opcode::AtomicUMax),
            "AtomicAnd" => Some(Opcode::AtomicAnd),
            "AtomicOr" => Some(Opcode::AtomicOr),
            "AtomicXor" => Some(Opcode::AtomicXor),
            "Phi" => Some(Opcode::Phi),
            "LoopMerge" => Some(Opcode::LoopMerge),
            "SelectionMerge" => Some(Opcode::SelectionMerge),
            "Label" => Some(Opcode::Label),
            "Branch" => Some(Opcode::Branch),
            "BranchConditional" => Some(Opcode::BranchConditional),
            "Switch" => Some(Opcode::Switch),
            "Kill" => Some(Opcode::Kill),
            "Return" => Some(Opcode::Return),
            "ReturnValue" => Some(Opcode::ReturnValue),
            "Unreachable" => Some(Opcode::Unreachable),
            "LifetimeStart" => Some(Opcode::LifetimeStart),
            "LifetimeStop" => Some(Opcode::LifetimeStop),
            "GroupAsyncCopy" => Some(Opcode::GroupAsyncCopy),
            "GroupWaitEvents" => Some(Opcode::GroupWaitEvents),
            "GroupAll" => Some(Opcode::GroupAll),
            "GroupAny" => Some(Opcode::GroupAny),
            "GroupBroadcast" => Some(Opcode::GroupBroadcast),
            "GroupIAdd" => Some(Opcode::GroupIAdd),
            "GroupFAdd" => Some(Opcode::GroupFAdd),
            "GroupFMin" => Some(Opcode::GroupFMin),
            "GroupUMin" => Some(Opcode::GroupUMin),
            "GroupSMin" => Some(Opcode::GroupSMin),
            "GroupFMax" => Some(Opcode::GroupFMax),
            "GroupUMax" => Some(Opcode::GroupUMax),
            "GroupSMax" => Some(Opcode::GroupSMax),
            "ReadPipe" => Some(Opcode::ReadPipe),
            "WritePipe" => Some(Opcode::WritePipe),
            "ReservedReadPipe" => Some(Opcode::ReservedReadPipe),
            "ReservedWritePipe" => Some(Opcode::ReservedWritePipe),
            "ReserveReadPipePackets" => Some(Opcode::ReserveReadPipePackets),
            "ReserveWritePipePackets" => Some(Opcode::ReserveWritePipePackets),
            "CommitReadPipe" => Some(Opcode::CommitReadPipe),
            "CommitWritePipe" => Some(Opcode::CommitWritePipe),
            "IsValidReserveId" => Some(Opcode::IsValidReserveId),
            "GetNumPipePackets" => Some(Opcode::GetNumPipePackets),
            "GetMaxPipePackets" => Some(Opcode::GetMaxPipePackets),
            "GroupReserveReadPipePackets" => Some(Opcode::GroupReserveReadPipePackets),
            "GroupReserveWritePipePackets" => Some(Opcode::GroupReserveWritePipePackets),
            "GroupCommitReadPipe" => Some(Opcode::GroupCommitReadPipe),
            "GroupCommitWritePipe" => Some(Opcode::GroupCommitWritePipe),
            "EnqueueMarker" => Some(Opcode::EnqueueMarker),
            "EnqueueKernel" => Some(Opcode::EnqueueKernel),
            "GetKernelNDrangeSubGroupCount" => Some(Opcode::GetKernelNDrangeSubGroupCount),
            "GetKernelNDrangeMaxSubGroupSize" => Some(Opcode::GetKernelNDrangeMaxSubGroupSize),
            "GetKernelWorkGroupSize" => Some(Opcode::GetKernelWorkGroupSize),
            "GetKernelPreferredWorkGroupSizeMultiple" => {
                Some(Opcode::GetKernelPreferredWorkGroupSizeMultiple)
            }
            "RetainEvent" => Some(Opcode::RetainEvent),
            "ReleaseEvent" => Some(Opcode::ReleaseEvent),
            "CreateUserEvent" => Some(Opcode::CreateUserEvent),
            "IsValidEvent" => Some(Opcode::IsValidEvent),
            "SetUserEventStatus" => Some(Opcode::SetUserEventStatus),
            "CaptureEventProfilingInfo" => Some(Opcode::CaptureEventProfilingInfo),
            "GetDefaultQueue" => Some(Opcode::GetDefaultQueue),
            "BuildNDRange" => Some(Opcode::BuildNDRange),
            "ImageSparseSampleImplicitLod" => Some(Opcode::ImageSparseSampleImplicitLod),
            "ImageSparseSampleExplicitLod" => Some(Opcode::ImageSparseSampleExplicitLod),
            "ImageSparseSampleDrefImplicitLod" => Some(Opcode::ImageSparseSampleDrefImplicitLod),
            "ImageSparseSampleDrefExplicitLod" => Some(Opcode::ImageSparseSampleDrefExplicitLod),
            "ImageSparseSampleProjImplicitLod" => Some(Opcode::ImageSparseSampleProjImplicitLod),
            "ImageSparseSampleProjExplicitLod" => Some(Opcode::ImageSparseSampleProjExplicitLod),
            "ImageSparseSampleProjDrefImplicitLod" => {
                Some(Opcode::ImageSparseSampleProjDrefImplicitLod)
            }
            "ImageSparseSampleProjDrefExplicitLod" => {
                Some(Opcode::ImageSparseSampleProjDrefExplicitLod)
            }
            "ImageSparseFetch" => Some(Opcode::ImageSparseFetch),
            "ImageSparseGather" => Some(Opcode::ImageSparseGather),
            "ImageSparseDrefGather" => Some(Opcode::ImageSparseDrefGather),
            "ImageSparseTexelsResident" => Some(Opcode::ImageSparseTexelsResident),
            "NoLine" => Some(Opcode::NoLine),
            "AtomicFlagTestAndSet" => Some(Opcode::AtomicFlagTestAndSet),
            "AtomicFlagClear" => Some(Opcode::AtomicFlagClear),
            "ImageSparseRead" => Some(Opcode::ImageSparseRead),
            "SizeOf" => Some(Opcode::SizeOf),
            "TypePipeStorage" => Some(Opcode::TypePipeStorage),
            "ConstantPipeStorage" => Some(Opcode::ConstantPipeStorage),
            "CreatePipeFromPipeStorage" => Some(Opcode::CreatePipeFromPipeStorage),
            "GetKernelLocalSizeForSubgroupCount" => {
                Some(Opcode::GetKernelLocalSizeForSubgroupCount)
            }
            "GetKernelMaxNumSubgroups" => Some(Opcode::GetKernelMaxNumSubgroups),
            "TypeNamedBarrier" => Some(Opcode::TypeNamedBarrier),
            "NamedBarrierInitialize" => Some(Opcode::NamedBarrierInitialize),
            "MemoryNamedBarrier" => Some(Opcode::MemoryNamedBarrier),
            "ModuleProcessed" => Some(Opcode::ModuleProcessed),
            "ExecutionModeId" => Some(Opcode::ExecutionModeId),
            "DecorateId" => Some(Opcode::DecorateId),
            "GroupNonUniformElect" => Some(Opcode::GroupNonUniformElect),
            "GroupNonUniformAll" => Some(Opcode::GroupNonUniformAll),
            "GroupNonUniformAny" => Some(Opcode::GroupNonUniformAny),
            "GroupNonUniformAllEqual" => Some(Opcode::GroupNonUniformAllEqual),
            "GroupNonUniformBroadcast" => Some(Opcode::GroupNonUniformBroadcast),
            "GroupNonUniformBroadcastFirst" => Some(Opcode::GroupNonUniformBroadcastFirst),
            "GroupNonUniformBallot" => Some(Opcode::GroupNonUniformBallot),
            "GroupNonUniformInverseBallot" => Some(Opcode::GroupNonUniformInverseBallot),
            "GroupNonUniformBallotBitExtract" => Some(Opcode::GroupNonUniformBallotBitExtract),
            "GroupNonUniformBallotBitCount" => Some(Opcode::GroupNonUniformBallotBitCount),
            "GroupNonUniformBallotFindLSB" => Some(Opcode::GroupNonUniformBallotFindLSB),
            "GroupNonUniformBallotFindMSB" => Some(Opcode::GroupNonUniformBallotFindMSB),
            "GroupNonUniformShuffle" => Some(Opcode::GroupNonUniformShuffle),
            "GroupNonUniformShuffleXor" => Some(Opcode::GroupNonUniformShuffleXor),
            "GroupNonUniformShuffleUp" => Some(Opcode::GroupNonUniformShuffleUp),
            "GroupNonUniformShuffleDown" => Some(Opcode::GroupNonUniformShuffleDown),
            "GroupNonUniformIAdd" => Some(Opcode::GroupNonUniformIAdd),
            "GroupNonUniformFAdd" => Some(Opcode::GroupNonUniformFAdd),
            "GroupNonUniformIMul" => Some(Opcode::GroupNonUniformIMul),
            "GroupNonUniformFMul" => Some(Opcode::GroupNonUniformFMul),
            "GroupNonUniformSMin" => Some(Opcode::GroupNonUniformSMin),
            "GroupNonUniformUMin" => Some(Opcode::GroupNonUniformUMin),
            "GroupNonUniformFMin" => Some(Opcode::GroupNonUniformFMin),
            "GroupNonUniformSMax" => Some(Opcode::GroupNonUniformSMax),
            "GroupNonUniformUMax" => Some(Opcode::GroupNonUniformUMax),
            "GroupNonUniformFMax" => Some(Opcode::GroupNonUniformFMax),
            "GroupNonUniformBitwiseAnd" => Some(Opcode::GroupNonUniformBitwiseAnd),
            "GroupNonUniformBitwiseOr" => Some(Opcode::GroupNonUniformBitwiseOr),
            "GroupNonUniformBitwiseXor" => Some(Opcode::GroupNonUniformBitwiseXor),
            "GroupNonUniformLogicalAnd" => Some(Opcode::GroupNonUniformLogicalAnd),
            "GroupNonUniformLogicalOr" => Some(Opcode::GroupNonUniformLogicalOr),
            "GroupNonUniformLogicalXor" => Some(Opcode::GroupNonUniformLogicalXor),
            "GroupNonUniformQuadBroadcast" => Some(Opcode::GroupNonUniformQuadBroadcast),
            "GroupNonUniformQuadSwap" => Some(Opcode::GroupNonUniformQuadSwap),
            "CopyLogical" => Some(Opcode::CopyLogical),
            "PtrEqual" => Some(Opcode::PtrEqual),
            "PtrNotEqual" => Some(Opcode::PtrNotEqual),
            "PtrDiff" => Some(Opcode::PtrDiff),
            "TerminateInvocation" => Some(Opcode::TerminateInvocation),
            "SubgroupBallotKHR" => Some(Opcode::SubgroupBallotKHR),
            "SubgroupFirstInvocationKHR" => Some(Opcode::SubgroupFirstInvocationKHR),
            "SubgroupAllKHR" => Some(Opcode::SubgroupAllKHR),
            "SubgroupAnyKHR" => Some(Opcode::SubgroupAnyKHR),
            "SubgroupAllEqualKHR" => Some(Opcode::SubgroupAllEqualKHR),
            "SubgroupReadInvocationKHR" => Some(Opcode::SubgroupReadInvocationKHR),
            "TraceRayKHR" => Some(Opcode::TraceRayKHR),
            "ExecuteCallableKHR" => Some(Opcode::ExecuteCallableKHR),
            "ConvertUToAccelerationStructureKHR" => {
                Some(Opcode::ConvertUToAccelerationStructureKHR)
            }
            "IgnoreIntersectionKHR" => Some(Opcode::IgnoreIntersectionKHR),
            "TerminateRayKHR" => Some(Opcode::TerminateRayKHR),
            "TypeRayQueryKHR" => Some(Opcode::TypeRayQueryKHR),
            "RayQueryInitializeKHR" => Some(Opcode::RayQueryInitializeKHR),
            "RayQueryTerminateKHR" => Some(Opcode::RayQueryTerminateKHR),
            "RayQueryGenerateIntersectionKHR" => Some(Opcode::RayQueryGenerateIntersectionKHR),
            "RayQueryConfirmIntersectionKHR" => Some(Opcode::RayQueryConfirmIntersectionKHR),
            "RayQueryProceedKHR" => Some(Opcode::RayQueryProceedKHR),
            "RayQueryGetIntersectionTypeKHR" => Some(Opcode::RayQueryGetIntersectionTypeKHR),
            "GroupIAddNonUniformAMD" => Some(Opcode::GroupIAddNonUniformAMD),
            "GroupFAddNonUniformAMD" => Some(Opcode::GroupFAddNonUniformAMD),
            "GroupFMinNonUniformAMD" => Some(Opcode::GroupFMinNonUniformAMD),
            "GroupUMinNonUniformAMD" => Some(Opcode::GroupUMinNonUniformAMD),
            "GroupSMinNonUniformAMD" => Some(Opcode::GroupSMinNonUniformAMD),
            "GroupFMaxNonUniformAMD" => Some(Opcode::GroupFMaxNonUniformAMD),
            "GroupUMaxNonUniformAMD" => Some(Opcode::GroupUMaxNonUniformAMD),
            "GroupSMaxNonUniformAMD" => Some(Opcode::GroupSMaxNonUniformAMD),
            "FragmentMaskFetchAMD" => Some(Opcode::FragmentMaskFetchAMD),
            "FragmentFetchAMD" => Some(Opcode::FragmentFetchAMD),
            "ReadClockKHR" => Some(Opcode::ReadClockKHR),
            "ImageSampleFootprintNV" => Some(Opcode::ImageSampleFootprintNV),
            "GroupNonUniformPartitionNV" => Some(Opcode::GroupNonUniformPartitionNV),
            "WritePackedPrimitiveIndices4x8NV" => Some(Opcode::WritePackedPrimitiveIndices4x8NV),
            "ReportIntersectionNV" => Some(Opcode::ReportIntersectionNV),
            "IgnoreIntersectionNV" => Some(Opcode::IgnoreIntersectionNV),
            "TerminateRayNV" => Some(Opcode::TerminateRayNV),
            "TraceNV" => Some(Opcode::TraceNV),
            "TypeAccelerationStructureNV" => Some(Opcode::TypeAccelerationStructureNV),
            "ExecuteCallableNV" => Some(Opcode::ExecuteCallableNV),
            "TypeCooperativeMatrixNV" => Some(Opcode::TypeCooperativeMatrixNV),
            "CooperativeMatrixLoadNV" => Some(Opcode::CooperativeMatrixLoadNV),
            "CooperativeMatrixStoreNV" => Some(Opcode::CooperativeMatrixStoreNV),
            "CooperativeMatrixMulAddNV" => Some(Opcode::CooperativeMatrixMulAddNV),
            "CooperativeMatrixLengthNV" => Some(Opcode::CooperativeMatrixLengthNV),
            "BeginInvocationInterlockEXT" => Some(Opcode::BeginInvocationInterlockEXT),
            "EndInvocationInterlockEXT" => Some(Opcode::EndInvocationInterlockEXT),
            "DemoteToHelperInvocationEXT" => Some(Opcode::DemoteToHelperInvocationEXT),
            "IsHelperInvocationEXT" => Some(Opcode::IsHelperInvocationEXT),
            "SubgroupShuffleINTEL" => Some(Opcode::SubgroupShuffleINTEL),
            "SubgroupShuffleDownINTEL" => Some(Opcode::SubgroupShuffleDownINTEL),
            "SubgroupShuffleUpINTEL" => Some(Opcode::SubgroupShuffleUpINTEL),
            "SubgroupShuffleXorINTEL" => Some(Opcode::SubgroupShuffleXorINTEL),
            "SubgroupBlockReadINTEL" => Some(Opcode::SubgroupBlockReadINTEL),
            "SubgroupBlockWriteINTEL" => Some(Opcode::SubgroupBlockWriteINTEL),
            "SubgroupImageBlockReadINTEL" => Some(Opcode::SubgroupImageBlockReadINTEL),
            "SubgroupImageBlockWriteINTEL" => Some(Opcode::SubgroupImageBlockWriteINTEL),
            "SubgroupImageMediaBlockReadINTEL" => Some(Opcode::SubgroupImageMediaBlockReadINTEL),
            "SubgroupImageMediaBlockWriteINTEL" => Some(Opcode::SubgroupImageMediaBlockWriteINTEL),
            "UCountLeadingZerosINTEL" => Some(Opcode::UCountLeadingZerosINTEL),
            "UCountTrailingZerosINTEL" => Some(Opcode::UCountTrailingZerosINTEL),
            "AbsISubINTEL" => Some(Opcode::AbsISubINTEL),
            "AbsUSubINTEL" => Some(Opcode::AbsUSubINTEL),
            "IAddSatINTEL" => Some(Opcode::IAddSatINTEL),
            "UAddSatINTEL" => Some(Opcode::UAddSatINTEL),
            "IAverageINTEL" => Some(Opcode::IAverageINTEL),
            "UAverageINTEL" => Some(Opcode::UAverageINTEL),
            "IAverageRoundedINTEL" => Some(Opcode::IAverageRoundedINTEL),
            "UAverageRoundedINTEL" => Some(Opcode::UAverageRoundedINTEL),
            "ISubSatINTEL" => Some(Opcode::ISubSatINTEL),
            "USubSatINTEL" => Some(Opcode::USubSatINTEL),
            "IMul32x16INTEL" => Some(Opcode::IMul32x16INTEL),
            "UMul32x16INTEL" => Some(Opcode::UMul32x16INTEL),
            "ConstFunctionPointerINTEL" => Some(Opcode::ConstFunctionPointerINTEL),
            "FunctionPointerCallINTEL" => Some(Opcode::FunctionPointerCallINTEL),
            "AsmTargetINTEL" => Some(Opcode::AsmTargetINTEL),
            "AsmINTEL" => Some(Opcode::AsmINTEL),
            "AsmCallINTEL" => Some(Opcode::AsmCallINTEL),
            "AtomicFMinEXT" => Some(Opcode::AtomicFMinEXT),
            "AtomicFMaxEXT" => Some(Opcode::AtomicFMaxEXT),
            "DecorateString" => Some(Opcode::DecorateString),
            "MemberDecorateString" => Some(Opcode::MemberDecorateString),
            "VmeImageINTEL" => Some(Opcode::VmeImageINTEL),
            "TypeVmeImageINTEL" => Some(Opcode::TypeVmeImageINTEL),
            "TypeAvcImePayloadINTEL" => Some(Opcode::TypeAvcImePayloadINTEL),
            "TypeAvcRefPayloadINTEL" => Some(Opcode::TypeAvcRefPayloadINTEL),
            "TypeAvcSicPayloadINTEL" => Some(Opcode::TypeAvcSicPayloadINTEL),
            "TypeAvcMcePayloadINTEL" => Some(Opcode::TypeAvcMcePayloadINTEL),
            "TypeAvcMceResultINTEL" => Some(Opcode::TypeAvcMceResultINTEL),
            "TypeAvcImeResultINTEL" => Some(Opcode::TypeAvcImeResultINTEL),
            "TypeAvcImeResultSingleReferenceStreamoutINTEL" => {
                Some(Opcode::TypeAvcImeResultSingleReferenceStreamoutINTEL)
            }
            "TypeAvcImeResultDualReferenceStreamoutINTEL" => {
                Some(Opcode::TypeAvcImeResultDualReferenceStreamoutINTEL)
            }
            "TypeAvcImeSingleReferenceStreaminINTEL" => {
                Some(Opcode::TypeAvcImeSingleReferenceStreaminINTEL)
            }
            "TypeAvcImeDualReferenceStreaminINTEL" => {
                Some(Opcode::TypeAvcImeDualReferenceStreaminINTEL)
            }
            "TypeAvcRefResultINTEL" => Some(Opcode::TypeAvcRefResultINTEL),
            "TypeAvcSicResultINTEL" => Some(Opcode::TypeAvcSicResultINTEL),
            "SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL)
            }
            "SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultInterShapePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultInterShapePenaltyINTEL)
            }
            "SubgroupAvcMceSetInterShapePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceSetInterShapePenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL)
            }
            "SubgroupAvcMceSetInterDirectionPenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceSetInterDirectionPenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL)
            }
            "SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL)
            }
            "SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL)
            }
            "SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL)
            }
            "SubgroupAvcMceSetMotionVectorCostFunctionINTEL" => {
                Some(Opcode::SubgroupAvcMceSetMotionVectorCostFunctionINTEL)
            }
            "SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL)
            }
            "SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL)
            }
            "SubgroupAvcMceSetAcOnlyHaarINTEL" => Some(Opcode::SubgroupAvcMceSetAcOnlyHaarINTEL),
            "SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL" => {
                Some(Opcode::SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL)
            }
            "SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL" => {
                Some(Opcode::SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL)
            }
            "SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL" => {
                Some(Opcode::SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL)
            }
            "SubgroupAvcMceConvertToImePayloadINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToImePayloadINTEL)
            }
            "SubgroupAvcMceConvertToImeResultINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToImeResultINTEL)
            }
            "SubgroupAvcMceConvertToRefPayloadINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToRefPayloadINTEL)
            }
            "SubgroupAvcMceConvertToRefResultINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToRefResultINTEL)
            }
            "SubgroupAvcMceConvertToSicPayloadINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToSicPayloadINTEL)
            }
            "SubgroupAvcMceConvertToSicResultINTEL" => {
                Some(Opcode::SubgroupAvcMceConvertToSicResultINTEL)
            }
            "SubgroupAvcMceGetMotionVectorsINTEL" => {
                Some(Opcode::SubgroupAvcMceGetMotionVectorsINTEL)
            }
            "SubgroupAvcMceGetInterDistortionsINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterDistortionsINTEL)
            }
            "SubgroupAvcMceGetBestInterDistortionsINTEL" => {
                Some(Opcode::SubgroupAvcMceGetBestInterDistortionsINTEL)
            }
            "SubgroupAvcMceGetInterMajorShapeINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterMajorShapeINTEL)
            }
            "SubgroupAvcMceGetInterMinorShapeINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterMinorShapeINTEL)
            }
            "SubgroupAvcMceGetInterDirectionsINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterDirectionsINTEL)
            }
            "SubgroupAvcMceGetInterMotionVectorCountINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterMotionVectorCountINTEL)
            }
            "SubgroupAvcMceGetInterReferenceIdsINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterReferenceIdsINTEL)
            }
            "SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL" => {
                Some(Opcode::SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL)
            }
            "SubgroupAvcImeInitializeINTEL" => Some(Opcode::SubgroupAvcImeInitializeINTEL),
            "SubgroupAvcImeSetSingleReferenceINTEL" => {
                Some(Opcode::SubgroupAvcImeSetSingleReferenceINTEL)
            }
            "SubgroupAvcImeSetDualReferenceINTEL" => {
                Some(Opcode::SubgroupAvcImeSetDualReferenceINTEL)
            }
            "SubgroupAvcImeRefWindowSizeINTEL" => Some(Opcode::SubgroupAvcImeRefWindowSizeINTEL),
            "SubgroupAvcImeAdjustRefOffsetINTEL" => {
                Some(Opcode::SubgroupAvcImeAdjustRefOffsetINTEL)
            }
            "SubgroupAvcImeConvertToMcePayloadINTEL" => {
                Some(Opcode::SubgroupAvcImeConvertToMcePayloadINTEL)
            }
            "SubgroupAvcImeSetMaxMotionVectorCountINTEL" => {
                Some(Opcode::SubgroupAvcImeSetMaxMotionVectorCountINTEL)
            }
            "SubgroupAvcImeSetUnidirectionalMixDisableINTEL" => {
                Some(Opcode::SubgroupAvcImeSetUnidirectionalMixDisableINTEL)
            }
            "SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL" => {
                Some(Opcode::SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL)
            }
            "SubgroupAvcImeSetWeightedSadINTEL" => Some(Opcode::SubgroupAvcImeSetWeightedSadINTEL),
            "SubgroupAvcImeEvaluateWithSingleReferenceINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithSingleReferenceINTEL)
            }
            "SubgroupAvcImeEvaluateWithDualReferenceINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithDualReferenceINTEL)
            }
            "SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL)
            }
            "SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL)
            }
            "SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL)
            }
            "SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL)
            }
            "SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL)
            }
            "SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL" => {
                Some(Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL)
            }
            "SubgroupAvcImeConvertToMceResultINTEL" => {
                Some(Opcode::SubgroupAvcImeConvertToMceResultINTEL)
            }
            "SubgroupAvcImeGetSingleReferenceStreaminINTEL" => {
                Some(Opcode::SubgroupAvcImeGetSingleReferenceStreaminINTEL)
            }
            "SubgroupAvcImeGetDualReferenceStreaminINTEL" => {
                Some(Opcode::SubgroupAvcImeGetDualReferenceStreaminINTEL)
            }
            "SubgroupAvcImeStripSingleReferenceStreamoutINTEL" => {
                Some(Opcode::SubgroupAvcImeStripSingleReferenceStreamoutINTEL)
            }
            "SubgroupAvcImeStripDualReferenceStreamoutINTEL" => {
                Some(Opcode::SubgroupAvcImeStripDualReferenceStreamoutINTEL)
            }
            "SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL)
            }
            "SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL)
            }
            "SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL)
            }
            "SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL)
            }
            "SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL)
            }
            "SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL" => {
                Some(Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL)
            }
            "SubgroupAvcImeGetBorderReachedINTEL" => {
                Some(Opcode::SubgroupAvcImeGetBorderReachedINTEL)
            }
            "SubgroupAvcImeGetTruncatedSearchIndicationINTEL" => {
                Some(Opcode::SubgroupAvcImeGetTruncatedSearchIndicationINTEL)
            }
            "SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL" => {
                Some(Opcode::SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL)
            }
            "SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL" => {
                Some(Opcode::SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL)
            }
            "SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL" => {
                Some(Opcode::SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL)
            }
            "SubgroupAvcFmeInitializeINTEL" => Some(Opcode::SubgroupAvcFmeInitializeINTEL),
            "SubgroupAvcBmeInitializeINTEL" => Some(Opcode::SubgroupAvcBmeInitializeINTEL),
            "SubgroupAvcRefConvertToMcePayloadINTEL" => {
                Some(Opcode::SubgroupAvcRefConvertToMcePayloadINTEL)
            }
            "SubgroupAvcRefSetBidirectionalMixDisableINTEL" => {
                Some(Opcode::SubgroupAvcRefSetBidirectionalMixDisableINTEL)
            }
            "SubgroupAvcRefSetBilinearFilterEnableINTEL" => {
                Some(Opcode::SubgroupAvcRefSetBilinearFilterEnableINTEL)
            }
            "SubgroupAvcRefEvaluateWithSingleReferenceINTEL" => {
                Some(Opcode::SubgroupAvcRefEvaluateWithSingleReferenceINTEL)
            }
            "SubgroupAvcRefEvaluateWithDualReferenceINTEL" => {
                Some(Opcode::SubgroupAvcRefEvaluateWithDualReferenceINTEL)
            }
            "SubgroupAvcRefEvaluateWithMultiReferenceINTEL" => {
                Some(Opcode::SubgroupAvcRefEvaluateWithMultiReferenceINTEL)
            }
            "SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL" => {
                Some(Opcode::SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL)
            }
            "SubgroupAvcRefConvertToMceResultINTEL" => {
                Some(Opcode::SubgroupAvcRefConvertToMceResultINTEL)
            }
            "SubgroupAvcSicInitializeINTEL" => Some(Opcode::SubgroupAvcSicInitializeINTEL),
            "SubgroupAvcSicConfigureSkcINTEL" => Some(Opcode::SubgroupAvcSicConfigureSkcINTEL),
            "SubgroupAvcSicConfigureIpeLumaINTEL" => {
                Some(Opcode::SubgroupAvcSicConfigureIpeLumaINTEL)
            }
            "SubgroupAvcSicConfigureIpeLumaChromaINTEL" => {
                Some(Opcode::SubgroupAvcSicConfigureIpeLumaChromaINTEL)
            }
            "SubgroupAvcSicGetMotionVectorMaskINTEL" => {
                Some(Opcode::SubgroupAvcSicGetMotionVectorMaskINTEL)
            }
            "SubgroupAvcSicConvertToMcePayloadINTEL" => {
                Some(Opcode::SubgroupAvcSicConvertToMcePayloadINTEL)
            }
            "SubgroupAvcSicSetIntraLumaShapePenaltyINTEL" => {
                Some(Opcode::SubgroupAvcSicSetIntraLumaShapePenaltyINTEL)
            }
            "SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL" => {
                Some(Opcode::SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL)
            }
            "SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL" => {
                Some(Opcode::SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL)
            }
            "SubgroupAvcSicSetBilinearFilterEnableINTEL" => {
                Some(Opcode::SubgroupAvcSicSetBilinearFilterEnableINTEL)
            }
            "SubgroupAvcSicSetSkcForwardTransformEnableINTEL" => {
                Some(Opcode::SubgroupAvcSicSetSkcForwardTransformEnableINTEL)
            }
            "SubgroupAvcSicSetBlockBasedRawSkipSadINTEL" => {
                Some(Opcode::SubgroupAvcSicSetBlockBasedRawSkipSadINTEL)
            }
            "SubgroupAvcSicEvaluateIpeINTEL" => Some(Opcode::SubgroupAvcSicEvaluateIpeINTEL),
            "SubgroupAvcSicEvaluateWithSingleReferenceINTEL" => {
                Some(Opcode::SubgroupAvcSicEvaluateWithSingleReferenceINTEL)
            }
            "SubgroupAvcSicEvaluateWithDualReferenceINTEL" => {
                Some(Opcode::SubgroupAvcSicEvaluateWithDualReferenceINTEL)
            }
            "SubgroupAvcSicEvaluateWithMultiReferenceINTEL" => {
                Some(Opcode::SubgroupAvcSicEvaluateWithMultiReferenceINTEL)
            }
            "SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL" => {
                Some(Opcode::SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL)
            }
            "SubgroupAvcSicConvertToMceResultINTEL" => {
                Some(Opcode::SubgroupAvcSicConvertToMceResultINTEL)
            }
            "SubgroupAvcSicGetIpeLumaShapeINTEL" => {
                Some(Opcode::SubgroupAvcSicGetIpeLumaShapeINTEL)
            }
            "SubgroupAvcSicGetBestIpeLumaDistortionINTEL" => {
                Some(Opcode::SubgroupAvcSicGetBestIpeLumaDistortionINTEL)
            }
            "SubgroupAvcSicGetBestIpeChromaDistortionINTEL" => {
                Some(Opcode::SubgroupAvcSicGetBestIpeChromaDistortionINTEL)
            }
            "SubgroupAvcSicGetPackedIpeLumaModesINTEL" => {
                Some(Opcode::SubgroupAvcSicGetPackedIpeLumaModesINTEL)
            }
            "SubgroupAvcSicGetIpeChromaModeINTEL" => {
                Some(Opcode::SubgroupAvcSicGetIpeChromaModeINTEL)
            }
            "SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL" => {
                Some(Opcode::SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL)
            }
            "SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL" => {
                Some(Opcode::SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL)
            }
            "SubgroupAvcSicGetInterRawSadsINTEL" => {
                Some(Opcode::SubgroupAvcSicGetInterRawSadsINTEL)
            }
            "VariableLengthArrayINTEL" => Some(Opcode::VariableLengthArrayINTEL),
            "SaveMemoryINTEL" => Some(Opcode::SaveMemoryINTEL),
            "RestoreMemoryINTEL" => Some(Opcode::RestoreMemoryINTEL),
            "LoopControlINTEL" => Some(Opcode::LoopControlINTEL),
            "PtrCastToCrossWorkgroupINTEL" => Some(Opcode::PtrCastToCrossWorkgroupINTEL),
            "CrossWorkgroupCastToPtrINTEL" => Some(Opcode::CrossWorkgroupCastToPtrINTEL),
            "ReadPipeBlockingINTEL" => Some(Opcode::ReadPipeBlockingINTEL),
            "WritePipeBlockingINTEL" => Some(Opcode::WritePipeBlockingINTEL),
            "FPGARegINTEL" => Some(Opcode::FPGARegINTEL),
            "RayQueryGetRayTMinKHR" => Some(Opcode::RayQueryGetRayTMinKHR),
            "RayQueryGetRayFlagsKHR" => Some(Opcode::RayQueryGetRayFlagsKHR),
            "RayQueryGetIntersectionTKHR" => Some(Opcode::RayQueryGetIntersectionTKHR),
            "RayQueryGetIntersectionInstanceCustomIndexKHR" => {
                Some(Opcode::RayQueryGetIntersectionInstanceCustomIndexKHR)
            }
            "RayQueryGetIntersectionInstanceIdKHR" => {
                Some(Opcode::RayQueryGetIntersectionInstanceIdKHR)
            }
            "RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR" => {
                Some(Opcode::RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR)
            }
            "RayQueryGetIntersectionGeometryIndexKHR" => {
                Some(Opcode::RayQueryGetIntersectionGeometryIndexKHR)
            }
            "RayQueryGetIntersectionPrimitiveIndexKHR" => {
                Some(Opcode::RayQueryGetIntersectionPrimitiveIndexKHR)
            }
            "RayQueryGetIntersectionBarycentricsKHR" => {
                Some(Opcode::RayQueryGetIntersectionBarycentricsKHR)
            }
            "RayQueryGetIntersectionFrontFaceKHR" => {
                Some(Opcode::RayQueryGetIntersectionFrontFaceKHR)
            }
            "RayQueryGetIntersectionCandidateAABBOpaqueKHR" => {
                Some(Opcode::RayQueryGetIntersectionCandidateAABBOpaqueKHR)
            }
            "RayQueryGetIntersectionObjectRayDirectionKHR" => {
                Some(Opcode::RayQueryGetIntersectionObjectRayDirectionKHR)
            }
            "RayQueryGetIntersectionObjectRayOriginKHR" => {
                Some(Opcode::RayQueryGetIntersectionObjectRayOriginKHR)
            }
            "RayQueryGetWorldRayDirectionKHR" => Some(Opcode::RayQueryGetWorldRayDirectionKHR),
            "RayQueryGetWorldRayOriginKHR" => Some(Opcode::RayQueryGetWorldRayOriginKHR),
            "RayQueryGetIntersectionObjectToWorldKHR" => {
                Some(Opcode::RayQueryGetIntersectionObjectToWorldKHR)
            }
            "RayQueryGetIntersectionWorldToObjectKHR" => {
                Some(Opcode::RayQueryGetIntersectionWorldToObjectKHR)
            }
            "AtomicFAddEXT" => Some(Opcode::AtomicFAddEXT),
            "TypeBufferSurfaceINTEL" => Some(Opcode::TypeBufferSurfaceINTEL),
            "TypeStructContinuedINTEL" => Some(Opcode::TypeStructContinuedINTEL),
            "ConstantCompositeContinuedINTEL" => Some(Opcode::ConstantCompositeContinuedINTEL),
            "SpecConstantCompositeContinuedINTEL" => {
                Some(Opcode::SpecConstantCompositeContinuedINTEL)
            }
            _ => None,
        }
    }
    pub fn get_operands(self) -> &'static [(OpKind, Quantifier)] {
        match self {
            Opcode::Nop => &[],
            Opcode::Undef => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SourceContinued => &[(OpKind::LiteralString, Quantifier::None)],
            Opcode::Source => &[
                (OpKind::SourceLanguage, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
                (OpKind::LiteralString, Quantifier::Opt),
            ],
            Opcode::SourceExtension => &[(OpKind::LiteralString, Quantifier::None)],
            Opcode::Name => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::MemberName => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::String => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::Line => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::Extension => &[(OpKind::LiteralString, Quantifier::None)],
            Opcode::ExtInstImport => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::ExtInst => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralExtInstInteger, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::MemoryModel => &[
                (OpKind::AddressingModel, Quantifier::None),
                (OpKind::MemoryModel, Quantifier::None),
            ],
            Opcode::EntryPoint => &[
                (OpKind::ExecutionModel, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::ExecutionMode => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ExecutionMode, Quantifier::None),
            ],
            Opcode::Capability => &[(OpKind::Capability, Quantifier::None)],
            Opcode::TypeVoid => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeBool => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeInt => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::TypeFloat => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::TypeVector => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::TypeMatrix => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::TypeImage => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::Dim, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::ImageFormat, Quantifier::None),
                (OpKind::AccessQualifier, Quantifier::Opt),
            ],
            Opcode::TypeSampler => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeSampledImage => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeArray => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeRuntimeArray => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeStruct => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::TypeOpaque => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::TypePointer => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::StorageClass, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeFunction => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::TypeEvent => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeDeviceEvent => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeReserveId => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeQueue => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypePipe => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::AccessQualifier, Quantifier::None),
            ],
            Opcode::TypeForwardPointer => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::StorageClass, Quantifier::None),
            ],
            Opcode::ConstantTrue => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::ConstantFalse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::Constant => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralContextDependentNumber, Quantifier::None),
            ],
            Opcode::ConstantComposite => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::ConstantSampler => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::SamplerAddressingMode, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::SamplerFilterMode, Quantifier::None),
            ],
            Opcode::ConstantNull => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SpecConstantTrue => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SpecConstantFalse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SpecConstant => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralContextDependentNumber, Quantifier::None),
            ],
            Opcode::SpecConstantComposite => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::SpecConstantOp => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralSpecConstantOpInteger, Quantifier::None),
            ],
            Opcode::Function => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::FunctionControl, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FunctionParameter => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::FunctionEnd => &[],
            Opcode::FunctionCall => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::Variable => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::StorageClass, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::ImageTexelPointer => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Load => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::Store => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::CopyMemory => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::CopyMemorySized => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::AccessChain => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::InBoundsAccessChain => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::PtrAccessChain => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::ArrayLength => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::GenericPtrMemSemantics => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::InBoundsPtrAccessChain => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::Decorate => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::Decoration, Quantifier::None),
            ],
            Opcode::MemberDecorate => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::Decoration, Quantifier::None),
            ],
            Opcode::DecorationGroup => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::GroupDecorate => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::GroupMemberDecorate => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::PairIdRefLiteralInteger, Quantifier::List),
            ],
            Opcode::VectorExtractDynamic => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::VectorInsertDynamic => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::VectorShuffle => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::List),
            ],
            Opcode::CompositeConstruct => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::CompositeExtract => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::List),
            ],
            Opcode::CompositeInsert => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::List),
            ],
            Opcode::CopyObject => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Transpose => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SampledImage => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageSampleImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSampleExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSampleDrefImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSampleDrefExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSampleProjImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSampleProjExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSampleProjDrefImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSampleProjDrefExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageFetch => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageGather => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageDrefGather => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageRead => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageWrite => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::Image => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQueryFormat => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQueryOrder => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQuerySizeLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQuerySize => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQueryLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQueryLevels => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageQuerySamples => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertFToU => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertFToS => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertSToF => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertUToF => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UConvert => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SConvert => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FConvert => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::QuantizeToF16 => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertPtrToU => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SatConvertSToU => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SatConvertUToS => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertUToPtr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::PtrCastToGeneric => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GenericCastToPtr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GenericCastToPtrExplicit => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::StorageClass, Quantifier::None),
            ],
            Opcode::Bitcast => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SNegate => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FNegate => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ISub => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FSub => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IMul => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FMul => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UDiv => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SDiv => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FDiv => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UMod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SRem => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SMod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FRem => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FMod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::VectorTimesScalar => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::MatrixTimesScalar => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::VectorTimesMatrix => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::MatrixTimesVector => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::MatrixTimesMatrix => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::OuterProduct => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Dot => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IAddCarry => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ISubBorrow => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UMulExtended => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SMulExtended => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Any => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::All => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IsNan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IsInf => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IsFinite => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IsNormal => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SignBitSet => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LessOrGreater => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Ordered => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Unordered => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LogicalEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LogicalNotEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LogicalOr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LogicalAnd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::LogicalNot => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Select => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::INotEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UGreaterThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SGreaterThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UGreaterThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SGreaterThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ULessThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SLessThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ULessThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SLessThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdNotEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordNotEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdLessThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordLessThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdGreaterThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordGreaterThan => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdLessThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordLessThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FOrdGreaterThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FUnordGreaterThanEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ShiftRightLogical => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ShiftRightArithmetic => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ShiftLeftLogical => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitwiseOr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitwiseXor => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitwiseAnd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Not => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitFieldInsert => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitFieldSExtract => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitFieldUExtract => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitReverse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BitCount => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdx => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdy => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Fwidth => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdxFine => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdyFine => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FwidthFine => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdxCoarse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DPdyCoarse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FwidthCoarse => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::EmitVertex => &[],
            Opcode::EndPrimitive => &[],
            Opcode::EmitStreamVertex => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::EndStreamPrimitive => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::ControlBarrier => &[
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::MemoryBarrier => &[
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::AtomicLoad => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::AtomicStore => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicExchange => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicCompareExchange => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicCompareExchangeWeak => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicIIncrement => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::AtomicIDecrement => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::AtomicIAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicISub => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicSMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicUMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicSMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicUMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicAnd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicOr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicXor => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::Phi => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::PairIdRefIdRef, Quantifier::List),
            ],
            Opcode::LoopMerge => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LoopControl, Quantifier::None),
            ],
            Opcode::SelectionMerge => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::SelectionControl, Quantifier::None),
            ],
            Opcode::Label => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::Branch => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::BranchConditional => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::List),
            ],
            Opcode::Switch => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::PairLiteralIntegerIdRef, Quantifier::List),
            ],
            Opcode::Kill => &[],
            Opcode::Return => &[],
            Opcode::ReturnValue => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::Unreachable => &[],
            Opcode::LifetimeStart => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::LifetimeStop => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::GroupAsyncCopy => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupWaitEvents => &[
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupAll => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupAny => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupBroadcast => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupIAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupUMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupSMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupUMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupSMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReadPipe => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::WritePipe => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReservedReadPipe => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReservedWritePipe => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReserveReadPipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReserveWritePipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CommitReadPipe => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CommitWritePipe => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IsValidReserveId => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetNumPipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetMaxPipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupReserveReadPipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupReserveWritePipePackets => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupCommitReadPipe => &[
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupCommitWritePipe => &[
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::EnqueueMarker => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::EnqueueKernel => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::GetKernelNDrangeSubGroupCount => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetKernelNDrangeMaxSubGroupSize => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetKernelWorkGroupSize => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetKernelPreferredWorkGroupSizeMultiple => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RetainEvent => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::ReleaseEvent => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::CreateUserEvent => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::IsValidEvent => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SetUserEventStatus => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CaptureEventProfilingInfo => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetDefaultQueue => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::BuildNDRange => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ImageSparseSampleImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseSampleExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSparseSampleDrefImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseSampleDrefExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSparseSampleProjImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseSampleProjExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSparseSampleProjDrefImplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseSampleProjDrefExplicitLod => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::None),
            ],
            Opcode::ImageSparseFetch => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseGather => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseDrefGather => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::ImageSparseTexelsResident => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::NoLine => &[],
            Opcode::AtomicFlagTestAndSet => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::AtomicFlagClear => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::ImageSparseRead => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::SizeOf => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypePipeStorage => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::ConstantPipeStorage => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            Opcode::CreatePipeFromPipeStorage => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetKernelLocalSizeForSubgroupCount => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GetKernelMaxNumSubgroups => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeNamedBarrier => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::NamedBarrierInitialize => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::MemoryNamedBarrier => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
            ],
            Opcode::ModuleProcessed => &[(OpKind::LiteralString, Quantifier::None)],
            Opcode::ExecutionModeId => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ExecutionMode, Quantifier::None),
            ],
            Opcode::DecorateId => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::Decoration, Quantifier::None),
            ],
            Opcode::GroupNonUniformElect => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
            ],
            Opcode::GroupNonUniformAll => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformAny => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformAllEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBroadcast => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBroadcastFirst => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBallot => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformInverseBallot => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBallotBitExtract => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBallotBitCount => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBallotFindLSB => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformBallotFindMSB => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformShuffle => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformShuffleXor => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformShuffleUp => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformShuffleDown => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformIAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformFAdd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformIMul => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformFMul => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformSMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformUMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformFMin => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformSMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformUMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformFMax => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformBitwiseAnd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformBitwiseOr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformBitwiseXor => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformLogicalAnd => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformLogicalOr => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformLogicalXor => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformQuadBroadcast => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupNonUniformQuadSwap => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CopyLogical => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::PtrEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::PtrNotEqual => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::PtrDiff => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TerminateInvocation => &[],
            Opcode::SubgroupBallotKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupFirstInvocationKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAllKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAnyKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAllEqualKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupReadInvocationKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TraceRayKHR => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ExecuteCallableKHR => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConvertUToAccelerationStructureKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IgnoreIntersectionKHR => &[],
            Opcode::TerminateRayKHR => &[],
            Opcode::TypeRayQueryKHR => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::RayQueryInitializeKHR => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryTerminateKHR => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::RayQueryGenerateIntersectionKHR => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryConfirmIntersectionKHR => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::RayQueryProceedKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionTypeKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupIAddNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFAddNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFMinNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupUMinNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupSMinNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupFMaxNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupUMaxNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::GroupSMaxNonUniformAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::GroupOperation, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FragmentMaskFetchAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FragmentFetchAMD => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReadClockKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
            ],
            Opcode::ImageSampleFootprintNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::ImageOperands, Quantifier::Opt),
            ],
            Opcode::GroupNonUniformPartitionNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::WritePackedPrimitiveIndices4x8NV => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReportIntersectionNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IgnoreIntersectionNV => &[],
            Opcode::TerminateRayNV => &[],
            Opcode::TraceNV => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeAccelerationStructureNV => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::ExecuteCallableNV => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeCooperativeMatrixNV => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CooperativeMatrixLoadNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::CooperativeMatrixStoreNV => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::MemoryAccess, Quantifier::Opt),
            ],
            Opcode::CooperativeMatrixMulAddNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CooperativeMatrixLengthNV => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::BeginInvocationInterlockEXT => &[],
            Opcode::EndInvocationInterlockEXT => &[],
            Opcode::DemoteToHelperInvocationEXT => &[],
            Opcode::IsHelperInvocationEXT => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupShuffleINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupShuffleDownINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupShuffleUpINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupShuffleXorINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupBlockReadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupBlockWriteINTEL => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupImageBlockReadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupImageBlockWriteINTEL => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupImageMediaBlockReadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupImageMediaBlockWriteINTEL => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UCountLeadingZerosINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UCountTrailingZerosINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AbsISubINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AbsUSubINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IAddSatINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UAddSatINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IAverageINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UAverageINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IAverageRoundedINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UAverageRoundedINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ISubSatINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::USubSatINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::IMul32x16INTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::UMul32x16INTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ConstFunctionPointerINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FunctionPointerCallINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::AsmTargetINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::AsmINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
                (OpKind::LiteralString, Quantifier::None),
            ],
            Opcode::AsmCallINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            Opcode::AtomicFMinEXT => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicFMaxEXT => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::DecorateString => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::Decoration, Quantifier::None),
            ],
            Opcode::MemberDecorateString => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
                (OpKind::Decoration, Quantifier::None),
            ],
            Opcode::VmeImageINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeVmeImageINTEL => &[
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeAvcImePayloadINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcRefPayloadINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcSicPayloadINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcMcePayloadINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcMceResultINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcImeResultINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcImeResultSingleReferenceStreamoutINTEL => {
                &[(OpKind::IdResult, Quantifier::None)]
            }
            Opcode::TypeAvcImeResultDualReferenceStreamoutINTEL => {
                &[(OpKind::IdResult, Quantifier::None)]
            }
            Opcode::TypeAvcImeSingleReferenceStreaminINTEL => {
                &[(OpKind::IdResult, Quantifier::None)]
            }
            Opcode::TypeAvcImeDualReferenceStreaminINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcRefResultINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeAvcSicResultINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultInterShapePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetInterShapePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetInterDirectionPenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetMotionVectorCostFunctionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetAcOnlyHaarINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToImePayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToImeResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToRefPayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToRefResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToSicPayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceConvertToSicResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetMotionVectorsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterDistortionsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetBestInterDistortionsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterMajorShapeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterMinorShapeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterDirectionsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterMotionVectorCountINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterReferenceIdsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeInitializeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetSingleReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetDualReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeRefWindowSizeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeAdjustRefOffsetINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeConvertToMcePayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetMaxMotionVectorCountINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetUnidirectionalMixDisableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeSetWeightedSadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeConvertToMceResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetSingleReferenceStreaminINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetDualReferenceStreaminINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeStripSingleReferenceStreamoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeStripDualReferenceStreamoutINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetBorderReachedINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetTruncatedSearchIndicationINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcFmeInitializeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcBmeInitializeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefConvertToMcePayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefSetBidirectionalMixDisableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefSetBilinearFilterEnableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefEvaluateWithSingleReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefEvaluateWithDualReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefEvaluateWithMultiReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcRefConvertToMceResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicInitializeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicConfigureSkcINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicConfigureIpeLumaINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicConfigureIpeLumaChromaINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetMotionVectorMaskINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicConvertToMcePayloadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetIntraLumaShapePenaltyINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetBilinearFilterEnableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetSkcForwardTransformEnableINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicSetBlockBasedRawSkipSadINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicEvaluateIpeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicEvaluateWithSingleReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicEvaluateWithDualReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicEvaluateWithMultiReferenceINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicConvertToMceResultINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetIpeLumaShapeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetBestIpeLumaDistortionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetBestIpeChromaDistortionINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetPackedIpeLumaModesINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetIpeChromaModeINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SubgroupAvcSicGetInterRawSadsINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::VariableLengthArrayINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::SaveMemoryINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
            ],
            Opcode::RestoreMemoryINTEL => &[(OpKind::IdRef, Quantifier::None)],
            Opcode::LoopControlINTEL => &[(OpKind::LiteralInteger, Quantifier::List)],
            Opcode::PtrCastToCrossWorkgroupINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::CrossWorkgroupCastToPtrINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::ReadPipeBlockingINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::WritePipeBlockingINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::FPGARegINTEL => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetRayTMinKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetRayFlagsKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionTKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionInstanceCustomIndexKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionInstanceIdKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionGeometryIndexKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionPrimitiveIndexKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionBarycentricsKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionFrontFaceKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionCandidateAABBOpaqueKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionObjectRayDirectionKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionObjectRayOriginKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetWorldRayDirectionKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetWorldRayOriginKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionObjectToWorldKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::RayQueryGetIntersectionWorldToObjectKHR => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::AtomicFAddEXT => &[
                (OpKind::IdResultType, Quantifier::None),
                (OpKind::IdResult, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdScope, Quantifier::None),
                (OpKind::IdMemorySemantics, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            Opcode::TypeBufferSurfaceINTEL => &[(OpKind::IdResult, Quantifier::None)],
            Opcode::TypeStructContinuedINTEL => &[(OpKind::IdRef, Quantifier::List)],
            Opcode::ConstantCompositeContinuedINTEL => &[(OpKind::IdRef, Quantifier::List)],
            Opcode::SpecConstantCompositeContinuedINTEL => &[(OpKind::IdRef, Quantifier::List)],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            Opcode::Nop => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Undef => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SourceContinued => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Source => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SourceExtension => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Name => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::MemberName => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::String => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Line => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Extension => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ExtInstImport => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ExtInst => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::MemoryModel => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::EntryPoint => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ExecutionMode => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Capability => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeVoid => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeBool => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeInt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeFloat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeVector => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeMatrix => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::TypeImage => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeSampler => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeSampledImage => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeArray => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeRuntimeArray => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::TypeStruct => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeOpaque => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::TypePointer => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeFunction => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::TypeEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::TypeDeviceEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::TypeReserveId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::TypeQueue => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::TypePipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::TypeForwardPointer => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Addresses,
                    Capability::PhysicalStorageBufferAddresses,
                ],
                version: "",
            },
            Opcode::ConstantTrue => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConstantFalse => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Constant => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConstantComposite => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConstantSampler => Requirements {
                extensions: &[],
                capabilities: &[Capability::LiteralSampler],
                version: "",
            },
            Opcode::ConstantNull => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SpecConstantTrue => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SpecConstantFalse => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SpecConstant => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SpecConstantComposite => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SpecConstantOp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Function => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FunctionParameter => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FunctionEnd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FunctionCall => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Variable => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageTexelPointer => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Load => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Store => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CopyMemory => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CopyMemorySized => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "",
            },
            Opcode::AccessChain => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::InBoundsAccessChain => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::PtrAccessChain => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Addresses,
                    Capability::VariablePointers,
                    Capability::VariablePointersStorageBuffer,
                    Capability::PhysicalStorageBufferAddresses,
                ],
                version: "",
            },
            Opcode::ArrayLength => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::GenericPtrMemSemantics => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::InBoundsPtrAccessChain => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "",
            },
            Opcode::Decorate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::MemberDecorate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::DecorationGroup => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::GroupDecorate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::GroupMemberDecorate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::VectorExtractDynamic => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::VectorInsertDynamic => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::VectorShuffle => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CompositeConstruct => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CompositeExtract => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CompositeInsert => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::CopyObject => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Transpose => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::SampledImage => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageSampleImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageSampleDrefImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleDrefExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleProjImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleProjExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleProjDrefImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageSampleProjDrefExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageFetch => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageGather => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageDrefGather => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::ImageRead => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageWrite => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Image => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ImageQueryFormat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::ImageQueryOrder => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::ImageQuerySizeLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::ImageQuery],
                version: "",
            },
            Opcode::ImageQuerySize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::ImageQuery],
                version: "",
            },
            Opcode::ImageQueryLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageQuery],
                version: "",
            },
            Opcode::ImageQueryLevels => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::ImageQuery],
                version: "",
            },
            Opcode::ImageQuerySamples => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::ImageQuery],
                version: "",
            },
            Opcode::ConvertFToU => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConvertFToS => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConvertSToF => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConvertUToF => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UConvert => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SConvert => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FConvert => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::QuantizeToF16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ConvertPtrToU => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Addresses,
                    Capability::PhysicalStorageBufferAddresses,
                ],
                version: "",
            },
            Opcode::SatConvertSToU => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::SatConvertUToS => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::ConvertUToPtr => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Addresses,
                    Capability::PhysicalStorageBufferAddresses,
                ],
                version: "",
            },
            Opcode::PtrCastToGeneric => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::GenericCastToPtr => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::GenericCastToPtrExplicit => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::Bitcast => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SNegate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FNegate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IAdd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FAdd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ISub => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FSub => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IMul => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FMul => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UDiv => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SDiv => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FDiv => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UMod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SRem => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SMod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FRem => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FMod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::VectorTimesScalar => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::MatrixTimesScalar => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::VectorTimesMatrix => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::MatrixTimesVector => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::MatrixTimesMatrix => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::OuterProduct => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Opcode::Dot => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IAddCarry => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ISubBorrow => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UMulExtended => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SMulExtended => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Any => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::All => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IsNan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IsInf => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IsFinite => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::IsNormal => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::SignBitSet => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::LessOrGreater => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::Ordered => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::Unordered => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::LogicalEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LogicalNotEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LogicalOr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LogicalAnd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LogicalNot => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Select => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::IEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::INotEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UGreaterThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SGreaterThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::UGreaterThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SGreaterThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ULessThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SLessThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ULessThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SLessThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdNotEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordNotEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdLessThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordLessThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdGreaterThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordGreaterThan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdLessThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordLessThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FOrdGreaterThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::FUnordGreaterThanEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ShiftRightLogical => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ShiftRightArithmetic => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ShiftLeftLogical => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::BitwiseOr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::BitwiseXor => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::BitwiseAnd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Not => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::BitFieldInsert => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::BitFieldSExtract => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::BitFieldUExtract => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::BitReverse => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::BitCount => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::DPdx => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::DPdy => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::Fwidth => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::DPdxFine => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::DPdyFine => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::FwidthFine => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::DPdxCoarse => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::DPdyCoarse => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::FwidthCoarse => Requirements {
                extensions: &[],
                capabilities: &[Capability::DerivativeControl],
                version: "",
            },
            Opcode::EmitVertex => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            Opcode::EndPrimitive => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            Opcode::EmitStreamVertex => Requirements {
                extensions: &[],
                capabilities: &[Capability::GeometryStreams],
                version: "",
            },
            Opcode::EndStreamPrimitive => Requirements {
                extensions: &[],
                capabilities: &[Capability::GeometryStreams],
                version: "",
            },
            Opcode::ControlBarrier => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::MemoryBarrier => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicLoad => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicStore => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicExchange => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicCompareExchange => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicCompareExchangeWeak => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::AtomicIIncrement => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicIDecrement => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicIAdd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicISub => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicSMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicUMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicSMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicUMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicAnd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicOr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicXor => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Phi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LoopMerge => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::SelectionMerge => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Label => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Branch => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::BranchConditional => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Switch => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Kill => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Opcode::Return => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::ReturnValue => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::Unreachable => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::LifetimeStart => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::LifetimeStop => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::GroupAsyncCopy => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::GroupWaitEvents => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::GroupAll => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupAny => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupBroadcast => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupIAdd => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupFAdd => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupFMin => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupUMin => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupSMin => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupFMax => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupUMax => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::GroupSMax => Requirements {
                extensions: &[],
                capabilities: &[Capability::Groups],
                version: "",
            },
            Opcode::ReadPipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::WritePipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::ReservedReadPipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::ReservedWritePipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::ReserveReadPipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::ReserveWritePipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::CommitReadPipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::CommitWritePipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::IsValidReserveId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GetNumPipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GetMaxPipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GroupReserveReadPipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GroupReserveWritePipePackets => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GroupCommitReadPipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::GroupCommitWritePipe => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "",
            },
            Opcode::EnqueueMarker => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::EnqueueKernel => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::GetKernelNDrangeSubGroupCount => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::GetKernelNDrangeMaxSubGroupSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::GetKernelWorkGroupSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::GetKernelPreferredWorkGroupSizeMultiple => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::RetainEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::ReleaseEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::CreateUserEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::IsValidEvent => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::SetUserEventStatus => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::CaptureEventProfilingInfo => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::GetDefaultQueue => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::BuildNDRange => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "",
            },
            Opcode::ImageSparseSampleImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseSampleExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseSampleDrefImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseSampleDrefExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseSampleProjImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "None",
            },
            Opcode::ImageSparseSampleProjExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "None",
            },
            Opcode::ImageSparseSampleProjDrefImplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "None",
            },
            Opcode::ImageSparseSampleProjDrefExplicitLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "None",
            },
            Opcode::ImageSparseFetch => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseGather => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseDrefGather => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::ImageSparseTexelsResident => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::NoLine => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Opcode::AtomicFlagTestAndSet => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::AtomicFlagClear => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Opcode::ImageSparseRead => Requirements {
                extensions: &[],
                capabilities: &[Capability::SparseResidency],
                version: "",
            },
            Opcode::SizeOf => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "1.1",
            },
            Opcode::TypePipeStorage => Requirements {
                extensions: &[],
                capabilities: &[Capability::PipeStorage],
                version: "1.1",
            },
            Opcode::ConstantPipeStorage => Requirements {
                extensions: &[],
                capabilities: &[Capability::PipeStorage],
                version: "1.1",
            },
            Opcode::CreatePipeFromPipeStorage => Requirements {
                extensions: &[],
                capabilities: &[Capability::PipeStorage],
                version: "1.1",
            },
            Opcode::GetKernelLocalSizeForSubgroupCount => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupDispatch],
                version: "1.1",
            },
            Opcode::GetKernelMaxNumSubgroups => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupDispatch],
                version: "1.1",
            },
            Opcode::TypeNamedBarrier => Requirements {
                extensions: &[],
                capabilities: &[Capability::NamedBarrier],
                version: "1.1",
            },
            Opcode::NamedBarrierInitialize => Requirements {
                extensions: &[],
                capabilities: &[Capability::NamedBarrier],
                version: "1.1",
            },
            Opcode::MemoryNamedBarrier => Requirements {
                extensions: &[],
                capabilities: &[Capability::NamedBarrier],
                version: "1.1",
            },
            Opcode::ModuleProcessed => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.1",
            },
            Opcode::ExecutionModeId => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.2",
            },
            Opcode::DecorateId => Requirements {
                extensions: &["SPV_GOOGLE_hlsl_functionality1"],
                capabilities: &[],
                version: "1.2",
            },
            Opcode::GroupNonUniformElect => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Opcode::GroupNonUniformAll => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformVote],
                version: "1.3",
            },
            Opcode::GroupNonUniformAny => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformVote],
                version: "1.3",
            },
            Opcode::GroupNonUniformAllEqual => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformVote],
                version: "1.3",
            },
            Opcode::GroupNonUniformBroadcast => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBroadcastFirst => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBallot => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformInverseBallot => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBallotBitExtract => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBallotBitCount => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBallotFindLSB => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformBallotFindMSB => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformBallot],
                version: "1.3",
            },
            Opcode::GroupNonUniformShuffle => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformShuffle],
                version: "1.3",
            },
            Opcode::GroupNonUniformShuffleXor => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformShuffle],
                version: "1.3",
            },
            Opcode::GroupNonUniformShuffleUp => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformShuffleRelative],
                version: "1.3",
            },
            Opcode::GroupNonUniformShuffleDown => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformShuffleRelative],
                version: "1.3",
            },
            Opcode::GroupNonUniformIAdd => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformFAdd => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformIMul => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformFMul => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformSMin => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformUMin => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformFMin => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformSMax => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformUMax => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformFMax => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformBitwiseAnd => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformBitwiseOr => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformBitwiseXor => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformLogicalAnd => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformLogicalOr => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformLogicalXor => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformClustered,
                    Capability::GroupNonUniformPartitionedNV,
                ],
                version: "1.3",
            },
            Opcode::GroupNonUniformQuadBroadcast => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformQuad],
                version: "1.3",
            },
            Opcode::GroupNonUniformQuadSwap => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformQuad],
                version: "1.3",
            },
            Opcode::CopyLogical => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            Opcode::PtrEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            Opcode::PtrNotEqual => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            Opcode::PtrDiff => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Addresses,
                    Capability::VariablePointers,
                    Capability::VariablePointersStorageBuffer,
                ],
                version: "1.4",
            },
            Opcode::TerminateInvocation => Requirements {
                extensions: &["SPV_KHR_terminate_invocation"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Opcode::SubgroupBallotKHR => Requirements {
                extensions: &["SPV_KHR_shader_ballot"],
                capabilities: &[Capability::SubgroupBallotKHR],
                version: "None",
            },
            Opcode::SubgroupFirstInvocationKHR => Requirements {
                extensions: &["SPV_KHR_shader_ballot"],
                capabilities: &[Capability::SubgroupBallotKHR],
                version: "None",
            },
            Opcode::SubgroupAllKHR => Requirements {
                extensions: &["SPV_KHR_subgroup_vote"],
                capabilities: &[Capability::SubgroupVoteKHR],
                version: "None",
            },
            Opcode::SubgroupAnyKHR => Requirements {
                extensions: &["SPV_KHR_subgroup_vote"],
                capabilities: &[Capability::SubgroupVoteKHR],
                version: "None",
            },
            Opcode::SubgroupAllEqualKHR => Requirements {
                extensions: &["SPV_KHR_subgroup_vote"],
                capabilities: &[Capability::SubgroupVoteKHR],
                version: "None",
            },
            Opcode::SubgroupReadInvocationKHR => Requirements {
                extensions: &["SPV_KHR_shader_ballot"],
                capabilities: &[Capability::SubgroupBallotKHR],
                version: "None",
            },
            Opcode::TraceRayKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
            Opcode::ExecuteCallableKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
            Opcode::ConvertUToAccelerationStructureKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing", "SPV_KHR_ray_query"],
                capabilities: &[Capability::RayTracingKHR, Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::IgnoreIntersectionKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
            Opcode::TerminateRayKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
            Opcode::TypeRayQueryKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryInitializeKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryTerminateKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGenerateIntersectionKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryConfirmIntersectionKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryProceedKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionTypeKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::GroupIAddNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupFAddNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupFMinNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupUMinNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupSMinNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupFMaxNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupUMaxNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::GroupSMaxNonUniformAMD => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[Capability::Groups],
                version: "None",
            },
            Opcode::FragmentMaskFetchAMD => Requirements {
                extensions: &["SPV_AMD_shader_fragment_mask"],
                capabilities: &[Capability::FragmentMaskAMD],
                version: "None",
            },
            Opcode::FragmentFetchAMD => Requirements {
                extensions: &["SPV_AMD_shader_fragment_mask"],
                capabilities: &[Capability::FragmentMaskAMD],
                version: "None",
            },
            Opcode::ReadClockKHR => Requirements {
                extensions: &["SPV_KHR_shader_clock"],
                capabilities: &[Capability::ShaderClockKHR],
                version: "None",
            },
            Opcode::ImageSampleFootprintNV => Requirements {
                extensions: &["SPV_NV_shader_image_footprint"],
                capabilities: &[Capability::ImageFootprintNV],
                version: "None",
            },
            Opcode::GroupNonUniformPartitionNV => Requirements {
                extensions: &["SPV_NV_shader_subgroup_partitioned"],
                capabilities: &[Capability::GroupNonUniformPartitionedNV],
                version: "None",
            },
            Opcode::WritePackedPrimitiveIndices4x8NV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            Opcode::ReportIntersectionNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            Opcode::IgnoreIntersectionNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::RayTracingNV],
                version: "None",
            },
            Opcode::TerminateRayNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::RayTracingNV],
                version: "None",
            },
            Opcode::TraceNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::RayTracingNV],
                version: "None",
            },
            Opcode::TypeAccelerationStructureNV => Requirements {
                extensions: &[
                    "SPV_NV_ray_tracing",
                    "SPV_KHR_ray_tracing",
                    "SPV_KHR_ray_query",
                ],
                capabilities: &[
                    Capability::RayTracingNV,
                    Capability::RayTracingKHR,
                    Capability::RayQueryKHR,
                ],
                version: "None",
            },
            Opcode::ExecuteCallableNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::RayTracingNV],
                version: "None",
            },
            Opcode::TypeCooperativeMatrixNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::CooperativeMatrixNV],
                version: "None",
            },
            Opcode::CooperativeMatrixLoadNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::CooperativeMatrixNV],
                version: "None",
            },
            Opcode::CooperativeMatrixStoreNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::CooperativeMatrixNV],
                version: "None",
            },
            Opcode::CooperativeMatrixMulAddNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::CooperativeMatrixNV],
                version: "None",
            },
            Opcode::CooperativeMatrixLengthNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::CooperativeMatrixNV],
                version: "None",
            },
            Opcode::BeginInvocationInterlockEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[
                    Capability::FragmentShaderSampleInterlockEXT,
                    Capability::FragmentShaderPixelInterlockEXT,
                    Capability::FragmentShaderShadingRateInterlockEXT,
                ],
                version: "None",
            },
            Opcode::EndInvocationInterlockEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[
                    Capability::FragmentShaderSampleInterlockEXT,
                    Capability::FragmentShaderPixelInterlockEXT,
                    Capability::FragmentShaderShadingRateInterlockEXT,
                ],
                version: "None",
            },
            Opcode::DemoteToHelperInvocationEXT => Requirements {
                extensions: &["SPV_EXT_demote_to_helper_invocation"],
                capabilities: &[Capability::DemoteToHelperInvocationEXT],
                version: "None",
            },
            Opcode::IsHelperInvocationEXT => Requirements {
                extensions: &["SPV_EXT_demote_to_helper_invocation"],
                capabilities: &[Capability::DemoteToHelperInvocationEXT],
                version: "None",
            },
            Opcode::SubgroupShuffleINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupShuffleINTEL],
                version: "None",
            },
            Opcode::SubgroupShuffleDownINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupShuffleINTEL],
                version: "None",
            },
            Opcode::SubgroupShuffleUpINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupShuffleINTEL],
                version: "None",
            },
            Opcode::SubgroupShuffleXorINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupShuffleINTEL],
                version: "None",
            },
            Opcode::SubgroupBlockReadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupBufferBlockIOINTEL],
                version: "None",
            },
            Opcode::SubgroupBlockWriteINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupBufferBlockIOINTEL],
                version: "None",
            },
            Opcode::SubgroupImageBlockReadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupImageBlockIOINTEL],
                version: "None",
            },
            Opcode::SubgroupImageBlockWriteINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupImageBlockIOINTEL],
                version: "None",
            },
            Opcode::SubgroupImageMediaBlockReadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupImageMediaBlockIOINTEL],
                version: "None",
            },
            Opcode::SubgroupImageMediaBlockWriteINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupImageMediaBlockIOINTEL],
                version: "None",
            },
            Opcode::UCountLeadingZerosINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::UCountTrailingZerosINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::AbsISubINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::AbsUSubINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::IAddSatINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::UAddSatINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::IAverageINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::UAverageINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::IAverageRoundedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::UAverageRoundedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::ISubSatINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::USubSatINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::IMul32x16INTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::UMul32x16INTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IntegerFunctions2INTEL],
                version: "None",
            },
            Opcode::ConstFunctionPointerINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[Capability::FunctionPointersINTEL],
                version: "None",
            },
            Opcode::FunctionPointerCallINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[Capability::FunctionPointersINTEL],
                version: "None",
            },
            Opcode::AsmTargetINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::AsmINTEL],
                version: "None",
            },
            Opcode::AsmINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::AsmINTEL],
                version: "None",
            },
            Opcode::AsmCallINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::AsmINTEL],
                version: "None",
            },
            Opcode::AtomicFMinEXT => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::AtomicFloat16MinMaxEXT,
                    Capability::AtomicFloat32MinMaxEXT,
                    Capability::AtomicFloat64MinMaxEXT,
                ],
                version: "None",
            },
            Opcode::AtomicFMaxEXT => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::AtomicFloat16MinMaxEXT,
                    Capability::AtomicFloat32MinMaxEXT,
                    Capability::AtomicFloat64MinMaxEXT,
                ],
                version: "None",
            },
            Opcode::DecorateString => Requirements {
                extensions: &[
                    "SPV_GOOGLE_decorate_string",
                    "SPV_GOOGLE_hlsl_functionality1",
                ],
                capabilities: &[],
                version: "1.4",
            },
            Opcode::MemberDecorateString => Requirements {
                extensions: &[
                    "SPV_GOOGLE_decorate_string",
                    "SPV_GOOGLE_hlsl_functionality1",
                ],
                capabilities: &[],
                version: "1.4",
            },
            Opcode::VmeImageINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeVmeImageINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcRefPayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcSicPayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcMcePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcMceResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImeResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImeResultSingleReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImeResultDualReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImeSingleReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcImeDualReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcRefResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::TypeAvcSicResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultInterShapePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetInterShapePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetInterDirectionPenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetMotionVectorCostFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationChromaINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetAcOnlyHaarINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToImePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToImeResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToRefPayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToRefResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToSicPayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceConvertToSicResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetMotionVectorsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterDistortionsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetBestInterDistortionsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterMajorShapeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterMinorShapeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterDirectionsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterMotionVectorCountINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterReferenceIdsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeInitializeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetSingleReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetDualReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeRefWindowSizeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeAdjustRefOffsetINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeConvertToMcePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetMaxMotionVectorCountINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetUnidirectionalMixDisableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeSetWeightedSadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeConvertToMceResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetSingleReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetDualReferenceStreaminINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeStripSingleReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeStripDualReferenceStreamoutINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                    version: "None",
                }
            }
            Opcode::SubgroupAvcImeGetBorderReachedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetTruncatedSearchIndicationINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcFmeInitializeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcBmeInitializeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefConvertToMcePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefSetBidirectionalMixDisableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefSetBilinearFilterEnableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefEvaluateWithSingleReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefEvaluateWithDualReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefEvaluateWithMultiReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcRefConvertToMceResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicInitializeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicConfigureSkcINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicConfigureIpeLumaINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicConfigureIpeLumaChromaINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationChromaINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetMotionVectorMaskINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicConvertToMcePayloadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetIntraLumaShapePenaltyINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationChromaINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetBilinearFilterEnableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetSkcForwardTransformEnableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicSetBlockBasedRawSkipSadINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicEvaluateIpeINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicEvaluateWithSingleReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicEvaluateWithDualReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicEvaluateWithMultiReferenceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicConvertToMceResultINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetIpeLumaShapeINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetBestIpeLumaDistortionINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetBestIpeChromaDistortionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetPackedIpeLumaModesINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetIpeChromaModeINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationChromaINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupAvcMotionEstimationINTEL,
                    Capability::SubgroupAvcMotionEstimationIntraINTEL,
                ],
                version: "None",
            },
            Opcode::SubgroupAvcSicGetInterRawSadsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupAvcMotionEstimationINTEL],
                version: "None",
            },
            Opcode::VariableLengthArrayINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VariableLengthArrayINTEL],
                version: "None",
            },
            Opcode::SaveMemoryINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VariableLengthArrayINTEL],
                version: "None",
            },
            Opcode::RestoreMemoryINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VariableLengthArrayINTEL],
                version: "None",
            },
            Opcode::LoopControlINTEL => Requirements {
                extensions: &["SPV_INTEL_unstructured_loop_controls"],
                capabilities: &[Capability::UnstructuredLoopControlsINTEL],
                version: "None",
            },
            Opcode::PtrCastToCrossWorkgroupINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::USMStorageClassesINTEL],
                version: "None",
            },
            Opcode::CrossWorkgroupCastToPtrINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::USMStorageClassesINTEL],
                version: "None",
            },
            Opcode::ReadPipeBlockingINTEL => Requirements {
                extensions: &["SPV_INTEL_blocking_pipes"],
                capabilities: &[Capability::BlockingPipesINTEL],
                version: "None",
            },
            Opcode::WritePipeBlockingINTEL => Requirements {
                extensions: &["SPV_INTEL_blocking_pipes"],
                capabilities: &[Capability::BlockingPipesINTEL],
                version: "None",
            },
            Opcode::FPGARegINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_reg"],
                capabilities: &[Capability::FPGARegINTEL],
                version: "None",
            },
            Opcode::RayQueryGetRayTMinKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetRayFlagsKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionTKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionInstanceCustomIndexKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionInstanceIdKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR => {
                Requirements {
                    extensions: &["SPV_KHR_ray_query"],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
            Opcode::RayQueryGetIntersectionGeometryIndexKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionPrimitiveIndexKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionBarycentricsKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionFrontFaceKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionCandidateAABBOpaqueKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionObjectRayDirectionKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionObjectRayOriginKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetWorldRayDirectionKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetWorldRayOriginKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionObjectToWorldKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::RayQueryGetIntersectionWorldToObjectKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            Opcode::AtomicFAddEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_add"],
                capabilities: &[
                    Capability::AtomicFloat32AddEXT,
                    Capability::AtomicFloat64AddEXT,
                ],
                version: "None",
            },
            Opcode::TypeBufferSurfaceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Opcode::TypeStructContinuedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::LongConstantCompositeINTEL],
                version: "None",
            },
            Opcode::ConstantCompositeContinuedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::LongConstantCompositeINTEL],
                version: "None",
            },
            Opcode::SpecConstantCompositeContinuedINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::LongConstantCompositeINTEL],
                version: "None",
            },
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum GLSL450 {
    Round = 1u32,
    RoundEven = 2u32,
    Trunc = 3u32,
    FAbs = 4u32,
    SAbs = 5u32,
    FSign = 6u32,
    SSign = 7u32,
    Floor = 8u32,
    Ceil = 9u32,
    Fract = 10u32,
    Radians = 11u32,
    Degrees = 12u32,
    Sin = 13u32,
    Cos = 14u32,
    Tan = 15u32,
    Asin = 16u32,
    Acos = 17u32,
    Atan = 18u32,
    Sinh = 19u32,
    Cosh = 20u32,
    Tanh = 21u32,
    Asinh = 22u32,
    Acosh = 23u32,
    Atanh = 24u32,
    Atan2 = 25u32,
    Pow = 26u32,
    Exp = 27u32,
    Log = 28u32,
    Exp2 = 29u32,
    Log2 = 30u32,
    Sqrt = 31u32,
    InverseSqrt = 32u32,
    Determinant = 33u32,
    MatrixInverse = 34u32,
    Modf = 35u32,
    ModfStruct = 36u32,
    FMin = 37u32,
    UMin = 38u32,
    SMin = 39u32,
    FMax = 40u32,
    UMax = 41u32,
    SMax = 42u32,
    FClamp = 43u32,
    UClamp = 44u32,
    SClamp = 45u32,
    FMix = 46u32,
    IMix = 47u32,
    Step = 48u32,
    SmoothStep = 49u32,
    Fma = 50u32,
    Frexp = 51u32,
    FrexpStruct = 52u32,
    Ldexp = 53u32,
    PackSnorm4x8 = 54u32,
    PackUnorm4x8 = 55u32,
    PackSnorm2x16 = 56u32,
    PackUnorm2x16 = 57u32,
    PackHalf2x16 = 58u32,
    PackDouble2x32 = 59u32,
    UnpackSnorm2x16 = 60u32,
    UnpackUnorm2x16 = 61u32,
    UnpackHalf2x16 = 62u32,
    UnpackSnorm4x8 = 63u32,
    UnpackUnorm4x8 = 64u32,
    UnpackDouble2x32 = 65u32,
    Length = 66u32,
    Distance = 67u32,
    Cross = 68u32,
    Normalize = 69u32,
    FaceForward = 70u32,
    Reflect = 71u32,
    Refract = 72u32,
    FindILsb = 73u32,
    FindSMsb = 74u32,
    FindUMsb = 75u32,
    InterpolateAtCentroid = 76u32,
    InterpolateAtSample = 77u32,
    InterpolateAtOffset = 78u32,
    NMin = 79u32,
    NMax = 80u32,
    NClamp = 81u32,
}
impl GLSL450 {
    pub fn from_str(tok: &str) -> Option<GLSL450> {
        match tok {
            "Round" => Some(GLSL450::Round),
            "RoundEven" => Some(GLSL450::RoundEven),
            "Trunc" => Some(GLSL450::Trunc),
            "FAbs" => Some(GLSL450::FAbs),
            "SAbs" => Some(GLSL450::SAbs),
            "FSign" => Some(GLSL450::FSign),
            "SSign" => Some(GLSL450::SSign),
            "Floor" => Some(GLSL450::Floor),
            "Ceil" => Some(GLSL450::Ceil),
            "Fract" => Some(GLSL450::Fract),
            "Radians" => Some(GLSL450::Radians),
            "Degrees" => Some(GLSL450::Degrees),
            "Sin" => Some(GLSL450::Sin),
            "Cos" => Some(GLSL450::Cos),
            "Tan" => Some(GLSL450::Tan),
            "Asin" => Some(GLSL450::Asin),
            "Acos" => Some(GLSL450::Acos),
            "Atan" => Some(GLSL450::Atan),
            "Sinh" => Some(GLSL450::Sinh),
            "Cosh" => Some(GLSL450::Cosh),
            "Tanh" => Some(GLSL450::Tanh),
            "Asinh" => Some(GLSL450::Asinh),
            "Acosh" => Some(GLSL450::Acosh),
            "Atanh" => Some(GLSL450::Atanh),
            "Atan2" => Some(GLSL450::Atan2),
            "Pow" => Some(GLSL450::Pow),
            "Exp" => Some(GLSL450::Exp),
            "Log" => Some(GLSL450::Log),
            "Exp2" => Some(GLSL450::Exp2),
            "Log2" => Some(GLSL450::Log2),
            "Sqrt" => Some(GLSL450::Sqrt),
            "InverseSqrt" => Some(GLSL450::InverseSqrt),
            "Determinant" => Some(GLSL450::Determinant),
            "MatrixInverse" => Some(GLSL450::MatrixInverse),
            "Modf" => Some(GLSL450::Modf),
            "ModfStruct" => Some(GLSL450::ModfStruct),
            "FMin" => Some(GLSL450::FMin),
            "UMin" => Some(GLSL450::UMin),
            "SMin" => Some(GLSL450::SMin),
            "FMax" => Some(GLSL450::FMax),
            "UMax" => Some(GLSL450::UMax),
            "SMax" => Some(GLSL450::SMax),
            "FClamp" => Some(GLSL450::FClamp),
            "UClamp" => Some(GLSL450::UClamp),
            "SClamp" => Some(GLSL450::SClamp),
            "FMix" => Some(GLSL450::FMix),
            "IMix" => Some(GLSL450::IMix),
            "Step" => Some(GLSL450::Step),
            "SmoothStep" => Some(GLSL450::SmoothStep),
            "Fma" => Some(GLSL450::Fma),
            "Frexp" => Some(GLSL450::Frexp),
            "FrexpStruct" => Some(GLSL450::FrexpStruct),
            "Ldexp" => Some(GLSL450::Ldexp),
            "PackSnorm4x8" => Some(GLSL450::PackSnorm4x8),
            "PackUnorm4x8" => Some(GLSL450::PackUnorm4x8),
            "PackSnorm2x16" => Some(GLSL450::PackSnorm2x16),
            "PackUnorm2x16" => Some(GLSL450::PackUnorm2x16),
            "PackHalf2x16" => Some(GLSL450::PackHalf2x16),
            "PackDouble2x32" => Some(GLSL450::PackDouble2x32),
            "UnpackSnorm2x16" => Some(GLSL450::UnpackSnorm2x16),
            "UnpackUnorm2x16" => Some(GLSL450::UnpackUnorm2x16),
            "UnpackHalf2x16" => Some(GLSL450::UnpackHalf2x16),
            "UnpackSnorm4x8" => Some(GLSL450::UnpackSnorm4x8),
            "UnpackUnorm4x8" => Some(GLSL450::UnpackUnorm4x8),
            "UnpackDouble2x32" => Some(GLSL450::UnpackDouble2x32),
            "Length" => Some(GLSL450::Length),
            "Distance" => Some(GLSL450::Distance),
            "Cross" => Some(GLSL450::Cross),
            "Normalize" => Some(GLSL450::Normalize),
            "FaceForward" => Some(GLSL450::FaceForward),
            "Reflect" => Some(GLSL450::Reflect),
            "Refract" => Some(GLSL450::Refract),
            "FindILsb" => Some(GLSL450::FindILsb),
            "FindSMsb" => Some(GLSL450::FindSMsb),
            "FindUMsb" => Some(GLSL450::FindUMsb),
            "InterpolateAtCentroid" => Some(GLSL450::InterpolateAtCentroid),
            "InterpolateAtSample" => Some(GLSL450::InterpolateAtSample),
            "InterpolateAtOffset" => Some(GLSL450::InterpolateAtOffset),
            "NMin" => Some(GLSL450::NMin),
            "NMax" => Some(GLSL450::NMax),
            "NClamp" => Some(GLSL450::NClamp),
            _ => None,
        }
    }
    pub fn get_operands(self) -> &'static [(OpKind, Quantifier)] {
        match self {
            GLSL450::Round => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::RoundEven => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Trunc => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FAbs => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::SAbs => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FSign => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::SSign => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Floor => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Ceil => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Fract => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Radians => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Degrees => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Sin => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Cos => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Tan => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Asin => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Acos => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Atan => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Sinh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Cosh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Tanh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Asinh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Acosh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Atanh => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Atan2 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Pow => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Exp => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Log => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Exp2 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Log2 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Sqrt => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::InverseSqrt => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Determinant => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::MatrixInverse => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Modf => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::ModfStruct => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FMin => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::UMin => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::SMin => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::FMax => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::UMax => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::SMax => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::FClamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::UClamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::SClamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::FMix => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::IMix => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Step => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::SmoothStep => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Fma => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Frexp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::FrexpStruct => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Ldexp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::PackSnorm4x8 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::PackUnorm4x8 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::PackSnorm2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::PackUnorm2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::PackHalf2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::PackDouble2x32 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackSnorm2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackUnorm2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackHalf2x16 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackSnorm4x8 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackUnorm4x8 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::UnpackDouble2x32 => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Length => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::Distance => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Cross => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Normalize => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FaceForward => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Reflect => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::Refract => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::FindILsb => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FindSMsb => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::FindUMsb => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::InterpolateAtCentroid => &[(OpKind::IdRef, Quantifier::None)],
            GLSL450::InterpolateAtSample => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::InterpolateAtOffset => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::NMin => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::NMax => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            GLSL450::NClamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            GLSL450::Round => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::RoundEven => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Trunc => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FAbs => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SAbs => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FSign => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SSign => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Floor => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Ceil => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Fract => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Radians => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Degrees => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Sin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Cos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Tan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Asin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Acos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Atan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Sinh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Cosh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Tanh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Asinh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Acosh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Atanh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Atan2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Pow => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Exp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Log => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Exp2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Log2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Sqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::InverseSqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Determinant => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::MatrixInverse => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Modf => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::ModfStruct => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FClamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UClamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SClamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FMix => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::IMix => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Step => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::SmoothStep => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Fma => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Frexp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FrexpStruct => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Ldexp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackSnorm4x8 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackUnorm4x8 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackSnorm2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackUnorm2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackHalf2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::PackDouble2x32 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Float64],
                version: "",
            },
            GLSL450::UnpackSnorm2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UnpackUnorm2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UnpackHalf2x16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UnpackSnorm4x8 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UnpackUnorm4x8 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::UnpackDouble2x32 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Float64],
                version: "",
            },
            GLSL450::Length => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Distance => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Cross => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Normalize => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FaceForward => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Reflect => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::Refract => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FindILsb => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FindSMsb => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::FindUMsb => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::InterpolateAtCentroid => Requirements {
                extensions: &[],
                capabilities: &[Capability::InterpolationFunction],
                version: "",
            },
            GLSL450::InterpolateAtSample => Requirements {
                extensions: &[],
                capabilities: &[Capability::InterpolationFunction],
                version: "",
            },
            GLSL450::InterpolateAtOffset => Requirements {
                extensions: &[],
                capabilities: &[Capability::InterpolationFunction],
                version: "",
            },
            GLSL450::NMin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::NMax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            GLSL450::NClamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum OpenCL {
    acos = 0u32,
    acosh = 1u32,
    acospi = 2u32,
    asin = 3u32,
    asinh = 4u32,
    asinpi = 5u32,
    atan = 6u32,
    atan2 = 7u32,
    atanh = 8u32,
    atanpi = 9u32,
    atan2pi = 10u32,
    cbrt = 11u32,
    ceil = 12u32,
    copysign = 13u32,
    cos = 14u32,
    cosh = 15u32,
    cospi = 16u32,
    erfc = 17u32,
    erf = 18u32,
    exp = 19u32,
    exp2 = 20u32,
    exp10 = 21u32,
    expm1 = 22u32,
    fabs = 23u32,
    fdim = 24u32,
    floor = 25u32,
    fma = 26u32,
    fmax = 27u32,
    fmin = 28u32,
    fmod = 29u32,
    fract = 30u32,
    frexp = 31u32,
    hypot = 32u32,
    ilogb = 33u32,
    ldexp = 34u32,
    lgamma = 35u32,
    lgamma_r = 36u32,
    log = 37u32,
    log2 = 38u32,
    log10 = 39u32,
    log1p = 40u32,
    logb = 41u32,
    mad = 42u32,
    maxmag = 43u32,
    minmag = 44u32,
    modf = 45u32,
    nan = 46u32,
    nextafter = 47u32,
    pow = 48u32,
    pown = 49u32,
    powr = 50u32,
    remainder = 51u32,
    remquo = 52u32,
    rint = 53u32,
    rootn = 54u32,
    round = 55u32,
    rsqrt = 56u32,
    sin = 57u32,
    sincos = 58u32,
    sinh = 59u32,
    sinpi = 60u32,
    sqrt = 61u32,
    tan = 62u32,
    tanh = 63u32,
    tanpi = 64u32,
    tgamma = 65u32,
    trunc = 66u32,
    half_cos = 67u32,
    half_divide = 68u32,
    half_exp = 69u32,
    half_exp2 = 70u32,
    half_exp10 = 71u32,
    half_log = 72u32,
    half_log2 = 73u32,
    half_log10 = 74u32,
    half_powr = 75u32,
    half_recip = 76u32,
    half_rsqrt = 77u32,
    half_sin = 78u32,
    half_sqrt = 79u32,
    half_tan = 80u32,
    native_cos = 81u32,
    native_divide = 82u32,
    native_exp = 83u32,
    native_exp2 = 84u32,
    native_exp10 = 85u32,
    native_log = 86u32,
    native_log2 = 87u32,
    native_log10 = 88u32,
    native_powr = 89u32,
    native_recip = 90u32,
    native_rsqrt = 91u32,
    native_sin = 92u32,
    native_sqrt = 93u32,
    native_tan = 94u32,
    s_abs = 141u32,
    s_abs_diff = 142u32,
    s_add_sat = 143u32,
    u_add_sat = 144u32,
    s_hadd = 145u32,
    u_hadd = 146u32,
    s_rhadd = 147u32,
    u_rhadd = 148u32,
    s_clamp = 149u32,
    u_clamp = 150u32,
    clz = 151u32,
    ctz = 152u32,
    s_mad_hi = 153u32,
    u_mad_sat = 154u32,
    s_mad_sat = 155u32,
    s_max = 156u32,
    u_max = 157u32,
    s_min = 158u32,
    u_min = 159u32,
    s_mul_hi = 160u32,
    rotate = 161u32,
    s_sub_sat = 162u32,
    u_sub_sat = 163u32,
    u_upsample = 164u32,
    s_upsample = 165u32,
    popcount = 166u32,
    s_mad24 = 167u32,
    u_mad24 = 168u32,
    s_mul24 = 169u32,
    u_mul24 = 170u32,
    u_abs = 201u32,
    u_abs_diff = 202u32,
    u_mul_hi = 203u32,
    u_mad_hi = 204u32,
    fclamp = 95u32,
    degrees = 96u32,
    fmax_common = 97u32,
    fmin_common = 98u32,
    mix = 99u32,
    radians = 100u32,
    step = 101u32,
    smoothstep = 102u32,
    sign = 103u32,
    cross = 104u32,
    distance = 105u32,
    length = 106u32,
    normalize = 107u32,
    fast_distance = 108u32,
    fast_length = 109u32,
    fast_normalize = 110u32,
    bitselect = 186u32,
    select = 187u32,
    vloadn = 171u32,
    vstoren = 172u32,
    vload_half = 173u32,
    vload_halfn = 174u32,
    vstore_half = 175u32,
    vstore_half_r = 176u32,
    vstore_halfn = 177u32,
    vstore_halfn_r = 178u32,
    vloada_halfn = 179u32,
    vstorea_halfn = 180u32,
    vstorea_halfn_r = 181u32,
    shuffle = 182u32,
    shuffle2 = 183u32,
    printf = 184u32,
    prefetch = 185u32,
}
impl OpenCL {
    pub fn from_str(tok: &str) -> Option<OpenCL> {
        match tok {
            "acos" => Some(OpenCL::acos),
            "acosh" => Some(OpenCL::acosh),
            "acospi" => Some(OpenCL::acospi),
            "asin" => Some(OpenCL::asin),
            "asinh" => Some(OpenCL::asinh),
            "asinpi" => Some(OpenCL::asinpi),
            "atan" => Some(OpenCL::atan),
            "atan2" => Some(OpenCL::atan2),
            "atanh" => Some(OpenCL::atanh),
            "atanpi" => Some(OpenCL::atanpi),
            "atan2pi" => Some(OpenCL::atan2pi),
            "cbrt" => Some(OpenCL::cbrt),
            "ceil" => Some(OpenCL::ceil),
            "copysign" => Some(OpenCL::copysign),
            "cos" => Some(OpenCL::cos),
            "cosh" => Some(OpenCL::cosh),
            "cospi" => Some(OpenCL::cospi),
            "erfc" => Some(OpenCL::erfc),
            "erf" => Some(OpenCL::erf),
            "exp" => Some(OpenCL::exp),
            "exp2" => Some(OpenCL::exp2),
            "exp10" => Some(OpenCL::exp10),
            "expm1" => Some(OpenCL::expm1),
            "fabs" => Some(OpenCL::fabs),
            "fdim" => Some(OpenCL::fdim),
            "floor" => Some(OpenCL::floor),
            "fma" => Some(OpenCL::fma),
            "fmax" => Some(OpenCL::fmax),
            "fmin" => Some(OpenCL::fmin),
            "fmod" => Some(OpenCL::fmod),
            "fract" => Some(OpenCL::fract),
            "frexp" => Some(OpenCL::frexp),
            "hypot" => Some(OpenCL::hypot),
            "ilogb" => Some(OpenCL::ilogb),
            "ldexp" => Some(OpenCL::ldexp),
            "lgamma" => Some(OpenCL::lgamma),
            "lgamma_r" => Some(OpenCL::lgamma_r),
            "log" => Some(OpenCL::log),
            "log2" => Some(OpenCL::log2),
            "log10" => Some(OpenCL::log10),
            "log1p" => Some(OpenCL::log1p),
            "logb" => Some(OpenCL::logb),
            "mad" => Some(OpenCL::mad),
            "maxmag" => Some(OpenCL::maxmag),
            "minmag" => Some(OpenCL::minmag),
            "modf" => Some(OpenCL::modf),
            "nan" => Some(OpenCL::nan),
            "nextafter" => Some(OpenCL::nextafter),
            "pow" => Some(OpenCL::pow),
            "pown" => Some(OpenCL::pown),
            "powr" => Some(OpenCL::powr),
            "remainder" => Some(OpenCL::remainder),
            "remquo" => Some(OpenCL::remquo),
            "rint" => Some(OpenCL::rint),
            "rootn" => Some(OpenCL::rootn),
            "round" => Some(OpenCL::round),
            "rsqrt" => Some(OpenCL::rsqrt),
            "sin" => Some(OpenCL::sin),
            "sincos" => Some(OpenCL::sincos),
            "sinh" => Some(OpenCL::sinh),
            "sinpi" => Some(OpenCL::sinpi),
            "sqrt" => Some(OpenCL::sqrt),
            "tan" => Some(OpenCL::tan),
            "tanh" => Some(OpenCL::tanh),
            "tanpi" => Some(OpenCL::tanpi),
            "tgamma" => Some(OpenCL::tgamma),
            "trunc" => Some(OpenCL::trunc),
            "half_cos" => Some(OpenCL::half_cos),
            "half_divide" => Some(OpenCL::half_divide),
            "half_exp" => Some(OpenCL::half_exp),
            "half_exp2" => Some(OpenCL::half_exp2),
            "half_exp10" => Some(OpenCL::half_exp10),
            "half_log" => Some(OpenCL::half_log),
            "half_log2" => Some(OpenCL::half_log2),
            "half_log10" => Some(OpenCL::half_log10),
            "half_powr" => Some(OpenCL::half_powr),
            "half_recip" => Some(OpenCL::half_recip),
            "half_rsqrt" => Some(OpenCL::half_rsqrt),
            "half_sin" => Some(OpenCL::half_sin),
            "half_sqrt" => Some(OpenCL::half_sqrt),
            "half_tan" => Some(OpenCL::half_tan),
            "native_cos" => Some(OpenCL::native_cos),
            "native_divide" => Some(OpenCL::native_divide),
            "native_exp" => Some(OpenCL::native_exp),
            "native_exp2" => Some(OpenCL::native_exp2),
            "native_exp10" => Some(OpenCL::native_exp10),
            "native_log" => Some(OpenCL::native_log),
            "native_log2" => Some(OpenCL::native_log2),
            "native_log10" => Some(OpenCL::native_log10),
            "native_powr" => Some(OpenCL::native_powr),
            "native_recip" => Some(OpenCL::native_recip),
            "native_rsqrt" => Some(OpenCL::native_rsqrt),
            "native_sin" => Some(OpenCL::native_sin),
            "native_sqrt" => Some(OpenCL::native_sqrt),
            "native_tan" => Some(OpenCL::native_tan),
            "s_abs" => Some(OpenCL::s_abs),
            "s_abs_diff" => Some(OpenCL::s_abs_diff),
            "s_add_sat" => Some(OpenCL::s_add_sat),
            "u_add_sat" => Some(OpenCL::u_add_sat),
            "s_hadd" => Some(OpenCL::s_hadd),
            "u_hadd" => Some(OpenCL::u_hadd),
            "s_rhadd" => Some(OpenCL::s_rhadd),
            "u_rhadd" => Some(OpenCL::u_rhadd),
            "s_clamp" => Some(OpenCL::s_clamp),
            "u_clamp" => Some(OpenCL::u_clamp),
            "clz" => Some(OpenCL::clz),
            "ctz" => Some(OpenCL::ctz),
            "s_mad_hi" => Some(OpenCL::s_mad_hi),
            "u_mad_sat" => Some(OpenCL::u_mad_sat),
            "s_mad_sat" => Some(OpenCL::s_mad_sat),
            "s_max" => Some(OpenCL::s_max),
            "u_max" => Some(OpenCL::u_max),
            "s_min" => Some(OpenCL::s_min),
            "u_min" => Some(OpenCL::u_min),
            "s_mul_hi" => Some(OpenCL::s_mul_hi),
            "rotate" => Some(OpenCL::rotate),
            "s_sub_sat" => Some(OpenCL::s_sub_sat),
            "u_sub_sat" => Some(OpenCL::u_sub_sat),
            "u_upsample" => Some(OpenCL::u_upsample),
            "s_upsample" => Some(OpenCL::s_upsample),
            "popcount" => Some(OpenCL::popcount),
            "s_mad24" => Some(OpenCL::s_mad24),
            "u_mad24" => Some(OpenCL::u_mad24),
            "s_mul24" => Some(OpenCL::s_mul24),
            "u_mul24" => Some(OpenCL::u_mul24),
            "u_abs" => Some(OpenCL::u_abs),
            "u_abs_diff" => Some(OpenCL::u_abs_diff),
            "u_mul_hi" => Some(OpenCL::u_mul_hi),
            "u_mad_hi" => Some(OpenCL::u_mad_hi),
            "fclamp" => Some(OpenCL::fclamp),
            "degrees" => Some(OpenCL::degrees),
            "fmax_common" => Some(OpenCL::fmax_common),
            "fmin_common" => Some(OpenCL::fmin_common),
            "mix" => Some(OpenCL::mix),
            "radians" => Some(OpenCL::radians),
            "step" => Some(OpenCL::step),
            "smoothstep" => Some(OpenCL::smoothstep),
            "sign" => Some(OpenCL::sign),
            "cross" => Some(OpenCL::cross),
            "distance" => Some(OpenCL::distance),
            "length" => Some(OpenCL::length),
            "normalize" => Some(OpenCL::normalize),
            "fast_distance" => Some(OpenCL::fast_distance),
            "fast_length" => Some(OpenCL::fast_length),
            "fast_normalize" => Some(OpenCL::fast_normalize),
            "bitselect" => Some(OpenCL::bitselect),
            "select" => Some(OpenCL::select),
            "vloadn" => Some(OpenCL::vloadn),
            "vstoren" => Some(OpenCL::vstoren),
            "vload_half" => Some(OpenCL::vload_half),
            "vload_halfn" => Some(OpenCL::vload_halfn),
            "vstore_half" => Some(OpenCL::vstore_half),
            "vstore_half_r" => Some(OpenCL::vstore_half_r),
            "vstore_halfn" => Some(OpenCL::vstore_halfn),
            "vstore_halfn_r" => Some(OpenCL::vstore_halfn_r),
            "vloada_halfn" => Some(OpenCL::vloada_halfn),
            "vstorea_halfn" => Some(OpenCL::vstorea_halfn),
            "vstorea_halfn_r" => Some(OpenCL::vstorea_halfn_r),
            "shuffle" => Some(OpenCL::shuffle),
            "shuffle2" => Some(OpenCL::shuffle2),
            "printf" => Some(OpenCL::printf),
            "prefetch" => Some(OpenCL::prefetch),
            _ => None,
        }
    }
    pub fn get_operands(self) -> &'static [(OpKind, Quantifier)] {
        match self {
            OpenCL::acos => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::acosh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::acospi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::asin => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::asinh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::asinpi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::atan => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::atan2 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::atanh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::atanpi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::atan2pi => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::cbrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::ceil => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::copysign => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::cos => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::cosh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::cospi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::erfc => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::erf => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::exp => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::exp2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::exp10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::expm1 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fabs => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fdim => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::floor => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fma => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fmax => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fmin => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fmod => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fract => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::frexp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::hypot => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::ilogb => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::ldexp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::lgamma => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::lgamma_r => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::log => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::log2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::log10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::log1p => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::logb => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::mad => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::maxmag => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::minmag => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::modf => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::nan => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::nextafter => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::pow => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::pown => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::powr => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::remainder => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::remquo => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::rint => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::rootn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::round => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::rsqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::sin => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::sincos => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::sinh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::sinpi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::sqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::tan => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::tanh => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::tanpi => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::tgamma => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::trunc => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_cos => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_divide => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::half_exp => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_exp2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_exp10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_log => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_log2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_log10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_powr => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::half_recip => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_rsqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_sin => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_sqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::half_tan => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_cos => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_divide => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::native_exp => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_exp2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_exp10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_log => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_log2 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_log10 => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_powr => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::native_recip => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_rsqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_sin => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_sqrt => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::native_tan => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::s_abs => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::s_abs_diff => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_add_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_add_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_hadd => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_hadd => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_rhadd => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_rhadd => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_clamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_clamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::clz => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::ctz => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::s_mad_hi => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_mad_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_mad_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_max => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_max => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_min => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_min => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_mul_hi => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::rotate => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_sub_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_sub_sat => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_upsample => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_upsample => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::popcount => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::s_mad24 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_mad24 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::s_mul24 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_mul24 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_abs => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::u_abs_diff => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_mul_hi => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::u_mad_hi => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fclamp => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::degrees => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fmax_common => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fmin_common => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::mix => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::radians => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::step => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::smoothstep => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::sign => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::cross => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::distance => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::length => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::normalize => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fast_distance => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::fast_length => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::fast_normalize => &[(OpKind::IdRef, Quantifier::None)],
            OpenCL::bitselect => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::select => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vloadn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            OpenCL::vstoren => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vload_half => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vload_halfn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            OpenCL::vstore_half => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vstore_half_r => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::FPRoundingMode, Quantifier::None),
            ],
            OpenCL::vstore_halfn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vstore_halfn_r => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::FPRoundingMode, Quantifier::None),
            ],
            OpenCL::vloada_halfn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::LiteralInteger, Quantifier::None),
            ],
            OpenCL::vstorea_halfn => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::vstorea_halfn_r => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::FPRoundingMode, Quantifier::None),
            ],
            OpenCL::shuffle => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::shuffle2 => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
            OpenCL::printf => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::List),
            ],
            OpenCL::prefetch => &[
                (OpKind::IdRef, Quantifier::None),
                (OpKind::IdRef, Quantifier::None),
            ],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            OpenCL::acos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::acosh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::acospi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::asin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::asinh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::asinpi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::atan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::atan2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::atanh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::atanpi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::atan2pi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::cbrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::ceil => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::copysign => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::cos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::cosh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::cospi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::erfc => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::erf => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::exp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::exp2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::exp10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::expm1 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fabs => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fdim => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::floor => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fma => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fmax => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fmin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fmod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fract => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::frexp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::hypot => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::ilogb => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::ldexp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::lgamma => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::lgamma_r => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::log => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::log2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::log10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::log1p => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::logb => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::mad => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::maxmag => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::minmag => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::modf => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::nan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::nextafter => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::pow => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::pown => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::powr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::remainder => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::remquo => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::rint => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::rootn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::round => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::rsqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sincos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sinh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sinpi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::tan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::tanh => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::tanpi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::tgamma => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::trunc => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_cos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_divide => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_exp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_exp2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_exp10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_log => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_log2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_log10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_powr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_recip => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_rsqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_sin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_sqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::half_tan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_cos => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_divide => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_exp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_exp2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_exp10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_log => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_log2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_log10 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_powr => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_recip => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_rsqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_sin => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_sqrt => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::native_tan => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_abs => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_abs_diff => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_add_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_add_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_hadd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_hadd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_rhadd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_rhadd => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_clamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_clamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::clz => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::ctz => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_mad_hi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_mad_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_mad_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_max => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_max => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_min => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_min => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_mul_hi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::rotate => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_sub_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_sub_sat => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_upsample => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_upsample => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::popcount => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_mad24 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_mad24 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::s_mul24 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_mul24 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_abs => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_abs_diff => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_mul_hi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::u_mad_hi => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fclamp => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::degrees => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fmax_common => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fmin_common => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::mix => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::radians => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::step => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::smoothstep => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::sign => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::cross => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::distance => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::length => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::normalize => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fast_distance => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fast_length => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::fast_normalize => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::bitselect => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::select => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vloadn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstoren => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vload_half => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vload_halfn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstore_half => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstore_half_r => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstore_halfn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstore_halfn_r => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vloada_halfn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstorea_halfn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::vstorea_halfn_r => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::shuffle => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::shuffle2 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::printf => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            OpenCL::prefetch => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum Quantifier {
    None,
    Opt,
    List,
}
#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub struct Requirements {
    pub extensions: &'static [&'static str],
    pub capabilities: &'static [Capability],
    pub version: &'static str,
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ImageOperands {
    None = 0u32,
    Bias = 1u32,
    Lod = 2u32,
    Grad = 4u32,
    ConstOffset = 8u32,
    Offset = 16u32,
    ConstOffsets = 32u32,
    Sample = 64u32,
    MinLod = 128u32,
    MakeTexelAvailable = 256u32,
    MakeTexelVisible = 512u32,
    NonPrivateTexel = 1024u32,
    VolatileTexel = 2048u32,
    SignExtend = 4096u32,
    ZeroExtend = 8192u32,
}
impl ImageOperands {
    const MakeTexelAvailableKHR: ImageOperands = ImageOperands::MakeTexelAvailable;
    const MakeTexelVisibleKHR: ImageOperands = ImageOperands::MakeTexelVisible;
    const NonPrivateTexelKHR: ImageOperands = ImageOperands::NonPrivateTexel;
    const VolatileTexelKHR: ImageOperands = ImageOperands::VolatileTexel;
}
impl ImageOperands {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ImageOperands::None => &[],
            ImageOperands::Bias => &[OpKind::IdRef],
            ImageOperands::Lod => &[OpKind::IdRef],
            ImageOperands::Grad => &[OpKind::IdRef, OpKind::IdRef],
            ImageOperands::ConstOffset => &[OpKind::IdRef],
            ImageOperands::Offset => &[OpKind::IdRef],
            ImageOperands::ConstOffsets => &[OpKind::IdRef],
            ImageOperands::Sample => &[OpKind::IdRef],
            ImageOperands::MinLod => &[OpKind::IdRef],
            ImageOperands::MakeTexelAvailable => &[OpKind::IdScope],
            ImageOperands::MakeTexelVisible => &[OpKind::IdScope],
            ImageOperands::NonPrivateTexel => &[],
            ImageOperands::VolatileTexel => &[],
            ImageOperands::SignExtend => &[],
            ImageOperands::ZeroExtend => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ImageOperands::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageOperands::Bias => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageOperands::Lod => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageOperands::Grad => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageOperands::ConstOffset => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageOperands::Offset => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageGatherExtended],
                version: "",
            },
            ImageOperands::ConstOffsets => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageGatherExtended],
                version: "",
            },
            ImageOperands::Sample => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageOperands::MinLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::MinLod],
                version: "",
            },
            ImageOperands::MakeTexelAvailable => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            ImageOperands::MakeTexelVisible => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            ImageOperands::NonPrivateTexel => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            ImageOperands::VolatileTexel => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            ImageOperands::SignExtend => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            ImageOperands::ZeroExtend => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
        }
    }
}
impl EnumValue for ImageOperands {
    fn from_str(tok: &str) -> Option<ImageOperands> {
        match tok {
            "None" => Some(ImageOperands::None),
            "Bias" => Some(ImageOperands::Bias),
            "Lod" => Some(ImageOperands::Lod),
            "Grad" => Some(ImageOperands::Grad),
            "ConstOffset" => Some(ImageOperands::ConstOffset),
            "Offset" => Some(ImageOperands::Offset),
            "ConstOffsets" => Some(ImageOperands::ConstOffsets),
            "Sample" => Some(ImageOperands::Sample),
            "MinLod" => Some(ImageOperands::MinLod),
            "MakeTexelAvailable" => Some(ImageOperands::MakeTexelAvailable),
            "MakeTexelVisible" => Some(ImageOperands::MakeTexelVisible),
            "NonPrivateTexel" => Some(ImageOperands::NonPrivateTexel),
            "VolatileTexel" => Some(ImageOperands::VolatileTexel),
            "SignExtend" => Some(ImageOperands::SignExtend),
            "ZeroExtend" => Some(ImageOperands::ZeroExtend),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FPFastMathMode {
    None = 0u32,
    NotNaN = 1u32,
    NotInf = 2u32,
    NSZ = 4u32,
    AllowRecip = 8u32,
    Fast = 16u32,
    AllowContractFastINTEL = 65536u32,
    AllowReassocINTEL = 131072u32,
}
impl FPFastMathMode {}
impl FPFastMathMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FPFastMathMode::None => &[],
            FPFastMathMode::NotNaN => &[],
            FPFastMathMode::NotInf => &[],
            FPFastMathMode::NSZ => &[],
            FPFastMathMode::AllowRecip => &[],
            FPFastMathMode::Fast => &[],
            FPFastMathMode::AllowContractFastINTEL => &[],
            FPFastMathMode::AllowReassocINTEL => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FPFastMathMode::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FPFastMathMode::NotNaN => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FPFastMathMode::NotInf => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FPFastMathMode::NSZ => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FPFastMathMode::AllowRecip => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FPFastMathMode::Fast => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FPFastMathMode::AllowContractFastINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPFastMathModeINTEL],
                version: "None",
            },
            FPFastMathMode::AllowReassocINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPFastMathModeINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for FPFastMathMode {
    fn from_str(tok: &str) -> Option<FPFastMathMode> {
        match tok {
            "None" => Some(FPFastMathMode::None),
            "NotNaN" => Some(FPFastMathMode::NotNaN),
            "NotInf" => Some(FPFastMathMode::NotInf),
            "NSZ" => Some(FPFastMathMode::NSZ),
            "AllowRecip" => Some(FPFastMathMode::AllowRecip),
            "Fast" => Some(FPFastMathMode::Fast),
            "AllowContractFastINTEL" => Some(FPFastMathMode::AllowContractFastINTEL),
            "AllowReassocINTEL" => Some(FPFastMathMode::AllowReassocINTEL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum SelectionControl {
    None = 0u32,
    Flatten = 1u32,
    DontFlatten = 2u32,
}
impl SelectionControl {}
impl SelectionControl {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            SelectionControl::None => &[],
            SelectionControl::Flatten => &[],
            SelectionControl::DontFlatten => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            SelectionControl::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SelectionControl::Flatten => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SelectionControl::DontFlatten => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
impl EnumValue for SelectionControl {
    fn from_str(tok: &str) -> Option<SelectionControl> {
        match tok {
            "None" => Some(SelectionControl::None),
            "Flatten" => Some(SelectionControl::Flatten),
            "DontFlatten" => Some(SelectionControl::DontFlatten),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum LoopControl {
    None = 0u32,
    Unroll = 1u32,
    DontUnroll = 2u32,
    DependencyInfinite = 4u32,
    DependencyLength = 8u32,
    MinIterations = 16u32,
    MaxIterations = 32u32,
    IterationMultiple = 64u32,
    PeelCount = 128u32,
    PartialCount = 256u32,
    InitiationIntervalINTEL = 65536u32,
    MaxConcurrencyINTEL = 131072u32,
    DependencyArrayINTEL = 262144u32,
    PipelineEnableINTEL = 524288u32,
    LoopCoalesceINTEL = 1048576u32,
    MaxInterleavingINTEL = 2097152u32,
    SpeculatedIterationsINTEL = 4194304u32,
    NoFusionINTEL = 8388608u32,
}
impl LoopControl {}
impl LoopControl {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            LoopControl::None => &[],
            LoopControl::Unroll => &[],
            LoopControl::DontUnroll => &[],
            LoopControl::DependencyInfinite => &[],
            LoopControl::DependencyLength => &[OpKind::LiteralInteger],
            LoopControl::MinIterations => &[OpKind::LiteralInteger],
            LoopControl::MaxIterations => &[OpKind::LiteralInteger],
            LoopControl::IterationMultiple => &[OpKind::LiteralInteger],
            LoopControl::PeelCount => &[OpKind::LiteralInteger],
            LoopControl::PartialCount => &[OpKind::LiteralInteger],
            LoopControl::InitiationIntervalINTEL => &[OpKind::LiteralInteger],
            LoopControl::MaxConcurrencyINTEL => &[OpKind::LiteralInteger],
            LoopControl::DependencyArrayINTEL => &[OpKind::LiteralInteger],
            LoopControl::PipelineEnableINTEL => &[OpKind::LiteralInteger],
            LoopControl::LoopCoalesceINTEL => &[OpKind::LiteralInteger],
            LoopControl::MaxInterleavingINTEL => &[OpKind::LiteralInteger],
            LoopControl::SpeculatedIterationsINTEL => &[OpKind::LiteralInteger],
            LoopControl::NoFusionINTEL => &[OpKind::LiteralInteger],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            LoopControl::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            LoopControl::Unroll => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            LoopControl::DontUnroll => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            LoopControl::DependencyInfinite => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.1",
            },
            LoopControl::DependencyLength => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.1",
            },
            LoopControl::MinIterations => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            LoopControl::MaxIterations => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            LoopControl::IterationMultiple => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            LoopControl::PeelCount => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            LoopControl::PartialCount => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            LoopControl::InitiationIntervalINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::MaxConcurrencyINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::DependencyArrayINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::PipelineEnableINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::LoopCoalesceINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::MaxInterleavingINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::SpeculatedIterationsINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
            LoopControl::NoFusionINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[Capability::FPGALoopControlsINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for LoopControl {
    fn from_str(tok: &str) -> Option<LoopControl> {
        match tok {
            "None" => Some(LoopControl::None),
            "Unroll" => Some(LoopControl::Unroll),
            "DontUnroll" => Some(LoopControl::DontUnroll),
            "DependencyInfinite" => Some(LoopControl::DependencyInfinite),
            "DependencyLength" => Some(LoopControl::DependencyLength),
            "MinIterations" => Some(LoopControl::MinIterations),
            "MaxIterations" => Some(LoopControl::MaxIterations),
            "IterationMultiple" => Some(LoopControl::IterationMultiple),
            "PeelCount" => Some(LoopControl::PeelCount),
            "PartialCount" => Some(LoopControl::PartialCount),
            "InitiationIntervalINTEL" => Some(LoopControl::InitiationIntervalINTEL),
            "MaxConcurrencyINTEL" => Some(LoopControl::MaxConcurrencyINTEL),
            "DependencyArrayINTEL" => Some(LoopControl::DependencyArrayINTEL),
            "PipelineEnableINTEL" => Some(LoopControl::PipelineEnableINTEL),
            "LoopCoalesceINTEL" => Some(LoopControl::LoopCoalesceINTEL),
            "MaxInterleavingINTEL" => Some(LoopControl::MaxInterleavingINTEL),
            "SpeculatedIterationsINTEL" => Some(LoopControl::SpeculatedIterationsINTEL),
            "NoFusionINTEL" => Some(LoopControl::NoFusionINTEL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FunctionControl {
    None = 0u32,
    Inline = 1u32,
    DontInline = 2u32,
    Pure = 4u32,
    Const = 8u32,
}
impl FunctionControl {}
impl FunctionControl {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FunctionControl::None => &[],
            FunctionControl::Inline => &[],
            FunctionControl::DontInline => &[],
            FunctionControl::Pure => &[],
            FunctionControl::Const => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FunctionControl::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FunctionControl::Inline => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FunctionControl::DontInline => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FunctionControl::Pure => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FunctionControl::Const => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
impl EnumValue for FunctionControl {
    fn from_str(tok: &str) -> Option<FunctionControl> {
        match tok {
            "None" => Some(FunctionControl::None),
            "Inline" => Some(FunctionControl::Inline),
            "DontInline" => Some(FunctionControl::DontInline),
            "Pure" => Some(FunctionControl::Pure),
            "Const" => Some(FunctionControl::Const),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum MemorySemantics {
    Relaxed = 0u32,
    Acquire = 2u32,
    Release = 4u32,
    AcquireRelease = 8u32,
    SequentiallyConsistent = 16u32,
    UniformMemory = 64u32,
    SubgroupMemory = 128u32,
    WorkgroupMemory = 256u32,
    CrossWorkgroupMemory = 512u32,
    AtomicCounterMemory = 1024u32,
    ImageMemory = 2048u32,
    OutputMemory = 4096u32,
    MakeAvailable = 8192u32,
    MakeVisible = 16384u32,
    Volatile = 32768u32,
}
impl MemorySemantics {
    const None: MemorySemantics = MemorySemantics::Relaxed;
    const OutputMemoryKHR: MemorySemantics = MemorySemantics::OutputMemory;
    const MakeAvailableKHR: MemorySemantics = MemorySemantics::MakeAvailable;
    const MakeVisibleKHR: MemorySemantics = MemorySemantics::MakeVisible;
}
impl MemorySemantics {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            MemorySemantics::Relaxed => &[],
            MemorySemantics::Acquire => &[],
            MemorySemantics::Release => &[],
            MemorySemantics::AcquireRelease => &[],
            MemorySemantics::SequentiallyConsistent => &[],
            MemorySemantics::UniformMemory => &[],
            MemorySemantics::SubgroupMemory => &[],
            MemorySemantics::WorkgroupMemory => &[],
            MemorySemantics::CrossWorkgroupMemory => &[],
            MemorySemantics::AtomicCounterMemory => &[],
            MemorySemantics::ImageMemory => &[],
            MemorySemantics::OutputMemory => &[],
            MemorySemantics::MakeAvailable => &[],
            MemorySemantics::MakeVisible => &[],
            MemorySemantics::Volatile => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            MemorySemantics::Relaxed => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::Acquire => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::Release => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::AcquireRelease => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::SequentiallyConsistent => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::UniformMemory => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            MemorySemantics::SubgroupMemory => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::WorkgroupMemory => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::CrossWorkgroupMemory => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::AtomicCounterMemory => Requirements {
                extensions: &[],
                capabilities: &[Capability::AtomicStorage],
                version: "",
            },
            MemorySemantics::ImageMemory => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemorySemantics::OutputMemory => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            MemorySemantics::MakeAvailable => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            MemorySemantics::MakeVisible => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            MemorySemantics::Volatile => Requirements {
                extensions: &["SPV_KHR_vulkan_memory_model"],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
        }
    }
}
impl EnumValue for MemorySemantics {
    fn from_str(tok: &str) -> Option<MemorySemantics> {
        match tok {
            "Relaxed" => Some(MemorySemantics::Relaxed),
            "Acquire" => Some(MemorySemantics::Acquire),
            "Release" => Some(MemorySemantics::Release),
            "AcquireRelease" => Some(MemorySemantics::AcquireRelease),
            "SequentiallyConsistent" => Some(MemorySemantics::SequentiallyConsistent),
            "UniformMemory" => Some(MemorySemantics::UniformMemory),
            "SubgroupMemory" => Some(MemorySemantics::SubgroupMemory),
            "WorkgroupMemory" => Some(MemorySemantics::WorkgroupMemory),
            "CrossWorkgroupMemory" => Some(MemorySemantics::CrossWorkgroupMemory),
            "AtomicCounterMemory" => Some(MemorySemantics::AtomicCounterMemory),
            "ImageMemory" => Some(MemorySemantics::ImageMemory),
            "OutputMemory" => Some(MemorySemantics::OutputMemory),
            "MakeAvailable" => Some(MemorySemantics::MakeAvailable),
            "MakeVisible" => Some(MemorySemantics::MakeVisible),
            "Volatile" => Some(MemorySemantics::Volatile),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum MemoryAccess {
    None = 0u32,
    Volatile = 1u32,
    Aligned = 2u32,
    Nontemporal = 4u32,
    MakePointerAvailable = 8u32,
    MakePointerVisible = 16u32,
    NonPrivatePointer = 32u32,
}
impl MemoryAccess {
    const MakePointerAvailableKHR: MemoryAccess = MemoryAccess::MakePointerAvailable;
    const MakePointerVisibleKHR: MemoryAccess = MemoryAccess::MakePointerVisible;
    const NonPrivatePointerKHR: MemoryAccess = MemoryAccess::NonPrivatePointer;
}
impl MemoryAccess {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            MemoryAccess::None => &[],
            MemoryAccess::Volatile => &[],
            MemoryAccess::Aligned => &[OpKind::LiteralInteger],
            MemoryAccess::Nontemporal => &[],
            MemoryAccess::MakePointerAvailable => &[OpKind::IdScope],
            MemoryAccess::MakePointerVisible => &[OpKind::IdScope],
            MemoryAccess::NonPrivatePointer => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            MemoryAccess::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemoryAccess::Volatile => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemoryAccess::Aligned => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemoryAccess::Nontemporal => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            MemoryAccess::MakePointerAvailable => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            MemoryAccess::MakePointerVisible => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            MemoryAccess::NonPrivatePointer => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
        }
    }
}
impl EnumValue for MemoryAccess {
    fn from_str(tok: &str) -> Option<MemoryAccess> {
        match tok {
            "None" => Some(MemoryAccess::None),
            "Volatile" => Some(MemoryAccess::Volatile),
            "Aligned" => Some(MemoryAccess::Aligned),
            "Nontemporal" => Some(MemoryAccess::Nontemporal),
            "MakePointerAvailable" => Some(MemoryAccess::MakePointerAvailable),
            "MakePointerVisible" => Some(MemoryAccess::MakePointerVisible),
            "NonPrivatePointer" => Some(MemoryAccess::NonPrivatePointer),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum KernelProfilingInfo {
    None = 0u32,
    CmdExecTime = 1u32,
}
impl KernelProfilingInfo {}
impl KernelProfilingInfo {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            KernelProfilingInfo::None => &[],
            KernelProfilingInfo::CmdExecTime => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            KernelProfilingInfo::None => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            KernelProfilingInfo::CmdExecTime => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for KernelProfilingInfo {
    fn from_str(tok: &str) -> Option<KernelProfilingInfo> {
        match tok {
            "None" => Some(KernelProfilingInfo::None),
            "CmdExecTime" => Some(KernelProfilingInfo::CmdExecTime),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum RayFlags {
    NoneKHR = 0u32,
    OpaqueKHR = 1u32,
    NoOpaqueKHR = 2u32,
    TerminateOnFirstHitKHR = 4u32,
    SkipClosestHitShaderKHR = 8u32,
    CullBackFacingTrianglesKHR = 16u32,
    CullFrontFacingTrianglesKHR = 32u32,
    CullOpaqueKHR = 64u32,
    CullNoOpaqueKHR = 128u32,
    SkipTrianglesKHR = 256u32,
    SkipAABBsKHR = 512u32,
}
impl RayFlags {}
impl RayFlags {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            RayFlags::NoneKHR => &[],
            RayFlags::OpaqueKHR => &[],
            RayFlags::NoOpaqueKHR => &[],
            RayFlags::TerminateOnFirstHitKHR => &[],
            RayFlags::SkipClosestHitShaderKHR => &[],
            RayFlags::CullBackFacingTrianglesKHR => &[],
            RayFlags::CullFrontFacingTrianglesKHR => &[],
            RayFlags::CullOpaqueKHR => &[],
            RayFlags::CullNoOpaqueKHR => &[],
            RayFlags::SkipTrianglesKHR => &[],
            RayFlags::SkipAABBsKHR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            RayFlags::NoneKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::OpaqueKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::NoOpaqueKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::TerminateOnFirstHitKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::SkipClosestHitShaderKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::CullBackFacingTrianglesKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::CullFrontFacingTrianglesKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::CullOpaqueKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::CullNoOpaqueKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            RayFlags::SkipTrianglesKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTraversalPrimitiveCullingKHR],
                version: "None",
            },
            RayFlags::SkipAABBsKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTraversalPrimitiveCullingKHR],
                version: "None",
            },
        }
    }
}
impl EnumValue for RayFlags {
    fn from_str(tok: &str) -> Option<RayFlags> {
        match tok {
            "NoneKHR" => Some(RayFlags::NoneKHR),
            "OpaqueKHR" => Some(RayFlags::OpaqueKHR),
            "NoOpaqueKHR" => Some(RayFlags::NoOpaqueKHR),
            "TerminateOnFirstHitKHR" => Some(RayFlags::TerminateOnFirstHitKHR),
            "SkipClosestHitShaderKHR" => Some(RayFlags::SkipClosestHitShaderKHR),
            "CullBackFacingTrianglesKHR" => Some(RayFlags::CullBackFacingTrianglesKHR),
            "CullFrontFacingTrianglesKHR" => Some(RayFlags::CullFrontFacingTrianglesKHR),
            "CullOpaqueKHR" => Some(RayFlags::CullOpaqueKHR),
            "CullNoOpaqueKHR" => Some(RayFlags::CullNoOpaqueKHR),
            "SkipTrianglesKHR" => Some(RayFlags::SkipTrianglesKHR),
            "SkipAABBsKHR" => Some(RayFlags::SkipAABBsKHR),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FragmentShadingRate {
    Vertical2Pixels = 1u32,
    Vertical4Pixels = 2u32,
    Horizontal2Pixels = 4u32,
    Horizontal4Pixels = 8u32,
}
impl FragmentShadingRate {}
impl FragmentShadingRate {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FragmentShadingRate::Vertical2Pixels => &[],
            FragmentShadingRate::Vertical4Pixels => &[],
            FragmentShadingRate::Horizontal2Pixels => &[],
            FragmentShadingRate::Horizontal4Pixels => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FragmentShadingRate::Vertical2Pixels => Requirements {
                extensions: &[],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
            FragmentShadingRate::Vertical4Pixels => Requirements {
                extensions: &[],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
            FragmentShadingRate::Horizontal2Pixels => Requirements {
                extensions: &[],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
            FragmentShadingRate::Horizontal4Pixels => Requirements {
                extensions: &[],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
        }
    }
}
impl EnumValue for FragmentShadingRate {
    fn from_str(tok: &str) -> Option<FragmentShadingRate> {
        match tok {
            "Vertical2Pixels" => Some(FragmentShadingRate::Vertical2Pixels),
            "Vertical4Pixels" => Some(FragmentShadingRate::Vertical4Pixels),
            "Horizontal2Pixels" => Some(FragmentShadingRate::Horizontal2Pixels),
            "Horizontal4Pixels" => Some(FragmentShadingRate::Horizontal4Pixels),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum SourceLanguage {
    Unknown = 0u32,
    ESSL = 1u32,
    GLSL = 2u32,
    OpenCL_C = 3u32,
    OpenCL_CPP = 4u32,
    HLSL = 5u32,
}
impl SourceLanguage {}
impl SourceLanguage {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            SourceLanguage::Unknown => &[],
            SourceLanguage::ESSL => &[],
            SourceLanguage::GLSL => &[],
            SourceLanguage::OpenCL_C => &[],
            SourceLanguage::OpenCL_CPP => &[],
            SourceLanguage::HLSL => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            SourceLanguage::Unknown => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SourceLanguage::ESSL => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SourceLanguage::GLSL => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SourceLanguage::OpenCL_C => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SourceLanguage::OpenCL_CPP => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            SourceLanguage::HLSL => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
impl EnumValue for SourceLanguage {
    fn from_str(tok: &str) -> Option<SourceLanguage> {
        match tok {
            "Unknown" => Some(SourceLanguage::Unknown),
            "ESSL" => Some(SourceLanguage::ESSL),
            "GLSL" => Some(SourceLanguage::GLSL),
            "OpenCL_C" => Some(SourceLanguage::OpenCL_C),
            "OpenCL_CPP" => Some(SourceLanguage::OpenCL_CPP),
            "HLSL" => Some(SourceLanguage::HLSL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ExecutionModel {
    Vertex = 0u32,
    TessellationControl = 1u32,
    TessellationEvaluation = 2u32,
    Geometry = 3u32,
    Fragment = 4u32,
    GLCompute = 5u32,
    Kernel = 6u32,
    TaskNV = 5267u32,
    MeshNV = 5268u32,
    RayGenerationNV = 5313u32,
    IntersectionNV = 5314u32,
    AnyHitNV = 5315u32,
    ClosestHitNV = 5316u32,
    MissNV = 5317u32,
    CallableNV = 5318u32,
}
impl ExecutionModel {
    const RayGenerationKHR: ExecutionModel = ExecutionModel::RayGenerationNV;
    const IntersectionKHR: ExecutionModel = ExecutionModel::IntersectionNV;
    const AnyHitKHR: ExecutionModel = ExecutionModel::AnyHitNV;
    const ClosestHitKHR: ExecutionModel = ExecutionModel::ClosestHitNV;
    const MissKHR: ExecutionModel = ExecutionModel::MissNV;
    const CallableKHR: ExecutionModel = ExecutionModel::CallableNV;
}
impl ExecutionModel {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ExecutionModel::Vertex => &[],
            ExecutionModel::TessellationControl => &[],
            ExecutionModel::TessellationEvaluation => &[],
            ExecutionModel::Geometry => &[],
            ExecutionModel::Fragment => &[],
            ExecutionModel::GLCompute => &[],
            ExecutionModel::Kernel => &[],
            ExecutionModel::TaskNV => &[],
            ExecutionModel::MeshNV => &[],
            ExecutionModel::RayGenerationNV => &[],
            ExecutionModel::IntersectionNV => &[],
            ExecutionModel::AnyHitNV => &[],
            ExecutionModel::ClosestHitNV => &[],
            ExecutionModel::MissNV => &[],
            ExecutionModel::CallableNV => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ExecutionModel::Vertex => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionModel::TessellationControl => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionModel::TessellationEvaluation => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionModel::Geometry => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionModel::Fragment => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionModel::GLCompute => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionModel::Kernel => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ExecutionModel::TaskNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            ExecutionModel::MeshNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            ExecutionModel::RayGenerationNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            ExecutionModel::IntersectionNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            ExecutionModel::AnyHitNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            ExecutionModel::ClosestHitNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            ExecutionModel::MissNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            ExecutionModel::CallableNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
        }
    }
}
impl EnumValue for ExecutionModel {
    fn from_str(tok: &str) -> Option<ExecutionModel> {
        match tok {
            "Vertex" => Some(ExecutionModel::Vertex),
            "TessellationControl" => Some(ExecutionModel::TessellationControl),
            "TessellationEvaluation" => Some(ExecutionModel::TessellationEvaluation),
            "Geometry" => Some(ExecutionModel::Geometry),
            "Fragment" => Some(ExecutionModel::Fragment),
            "GLCompute" => Some(ExecutionModel::GLCompute),
            "Kernel" => Some(ExecutionModel::Kernel),
            "TaskNV" => Some(ExecutionModel::TaskNV),
            "MeshNV" => Some(ExecutionModel::MeshNV),
            "RayGenerationNV" => Some(ExecutionModel::RayGenerationNV),
            "IntersectionNV" => Some(ExecutionModel::IntersectionNV),
            "AnyHitNV" => Some(ExecutionModel::AnyHitNV),
            "ClosestHitNV" => Some(ExecutionModel::ClosestHitNV),
            "MissNV" => Some(ExecutionModel::MissNV),
            "CallableNV" => Some(ExecutionModel::CallableNV),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum AddressingModel {
    Logical = 0u32,
    Physical32 = 1u32,
    Physical64 = 2u32,
    PhysicalStorageBuffer64 = 5348u32,
}
impl AddressingModel {
    const PhysicalStorageBuffer64EXT: AddressingModel = AddressingModel::PhysicalStorageBuffer64;
}
impl AddressingModel {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            AddressingModel::Logical => &[],
            AddressingModel::Physical32 => &[],
            AddressingModel::Physical64 => &[],
            AddressingModel::PhysicalStorageBuffer64 => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            AddressingModel::Logical => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            AddressingModel::Physical32 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "",
            },
            AddressingModel::Physical64 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "",
            },
            AddressingModel::PhysicalStorageBuffer64 => Requirements {
                extensions: &[
                    "SPV_EXT_physical_storage_buffer",
                    "SPV_KHR_physical_storage_buffer",
                ],
                capabilities: &[Capability::PhysicalStorageBufferAddresses],
                version: "1.5",
            },
        }
    }
}
impl EnumValue for AddressingModel {
    fn from_str(tok: &str) -> Option<AddressingModel> {
        match tok {
            "Logical" => Some(AddressingModel::Logical),
            "Physical32" => Some(AddressingModel::Physical32),
            "Physical64" => Some(AddressingModel::Physical64),
            "PhysicalStorageBuffer64" => Some(AddressingModel::PhysicalStorageBuffer64),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum MemoryModel {
    Simple = 0u32,
    GLSL450 = 1u32,
    OpenCL = 2u32,
    Vulkan = 3u32,
}
impl MemoryModel {
    const VulkanKHR: MemoryModel = MemoryModel::Vulkan;
}
impl MemoryModel {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            MemoryModel::Simple => &[],
            MemoryModel::GLSL450 => &[],
            MemoryModel::OpenCL => &[],
            MemoryModel::Vulkan => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            MemoryModel::Simple => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            MemoryModel::GLSL450 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            MemoryModel::OpenCL => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            MemoryModel::Vulkan => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
        }
    }
}
impl EnumValue for MemoryModel {
    fn from_str(tok: &str) -> Option<MemoryModel> {
        match tok {
            "Simple" => Some(MemoryModel::Simple),
            "GLSL450" => Some(MemoryModel::GLSL450),
            "OpenCL" => Some(MemoryModel::OpenCL),
            "Vulkan" => Some(MemoryModel::Vulkan),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ExecutionMode {
    Invocations = 0u32,
    SpacingEqual = 1u32,
    SpacingFractionalEven = 2u32,
    SpacingFractionalOdd = 3u32,
    VertexOrderCw = 4u32,
    VertexOrderCcw = 5u32,
    PixelCenterInteger = 6u32,
    OriginUpperLeft = 7u32,
    OriginLowerLeft = 8u32,
    EarlyFragmentTests = 9u32,
    PointMode = 10u32,
    Xfb = 11u32,
    DepthReplacing = 12u32,
    DepthGreater = 14u32,
    DepthLess = 15u32,
    DepthUnchanged = 16u32,
    LocalSize = 17u32,
    LocalSizeHint = 18u32,
    InputPoints = 19u32,
    InputLines = 20u32,
    InputLinesAdjacency = 21u32,
    Triangles = 22u32,
    InputTrianglesAdjacency = 23u32,
    Quads = 24u32,
    Isolines = 25u32,
    OutputVertices = 26u32,
    OutputPoints = 27u32,
    OutputLineStrip = 28u32,
    OutputTriangleStrip = 29u32,
    VecTypeHint = 30u32,
    ContractionOff = 31u32,
    Initializer = 33u32,
    Finalizer = 34u32,
    SubgroupSize = 35u32,
    SubgroupsPerWorkgroup = 36u32,
    SubgroupsPerWorkgroupId = 37u32,
    LocalSizeId = 38u32,
    LocalSizeHintId = 39u32,
    PostDepthCoverage = 4446u32,
    DenormPreserve = 4459u32,
    DenormFlushToZero = 4460u32,
    SignedZeroInfNanPreserve = 4461u32,
    RoundingModeRTE = 4462u32,
    RoundingModeRTZ = 4463u32,
    StencilRefReplacingEXT = 5027u32,
    OutputLinesNV = 5269u32,
    OutputPrimitivesNV = 5270u32,
    DerivativeGroupQuadsNV = 5289u32,
    DerivativeGroupLinearNV = 5290u32,
    OutputTrianglesNV = 5298u32,
    PixelInterlockOrderedEXT = 5366u32,
    PixelInterlockUnorderedEXT = 5367u32,
    SampleInterlockOrderedEXT = 5368u32,
    SampleInterlockUnorderedEXT = 5369u32,
    ShadingRateInterlockOrderedEXT = 5370u32,
    ShadingRateInterlockUnorderedEXT = 5371u32,
    SharedLocalMemorySizeINTEL = 5618u32,
    RoundingModeRTPINTEL = 5620u32,
    RoundingModeRTNINTEL = 5621u32,
    FloatingPointModeALTINTEL = 5622u32,
    FloatingPointModeIEEEINTEL = 5623u32,
    MaxWorkgroupSizeINTEL = 5893u32,
    MaxWorkDimINTEL = 5894u32,
    NoGlobalOffsetINTEL = 5895u32,
    NumSIMDWorkitemsINTEL = 5896u32,
    SchedulerTargetFmaxMhzINTEL = 5903u32,
}
impl ExecutionMode {}
impl ExecutionMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ExecutionMode::Invocations => &[OpKind::LiteralInteger],
            ExecutionMode::SpacingEqual => &[],
            ExecutionMode::SpacingFractionalEven => &[],
            ExecutionMode::SpacingFractionalOdd => &[],
            ExecutionMode::VertexOrderCw => &[],
            ExecutionMode::VertexOrderCcw => &[],
            ExecutionMode::PixelCenterInteger => &[],
            ExecutionMode::OriginUpperLeft => &[],
            ExecutionMode::OriginLowerLeft => &[],
            ExecutionMode::EarlyFragmentTests => &[],
            ExecutionMode::PointMode => &[],
            ExecutionMode::Xfb => &[],
            ExecutionMode::DepthReplacing => &[],
            ExecutionMode::DepthGreater => &[],
            ExecutionMode::DepthLess => &[],
            ExecutionMode::DepthUnchanged => &[],
            ExecutionMode::LocalSize => &[
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
            ],
            ExecutionMode::LocalSizeHint => &[
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
            ],
            ExecutionMode::InputPoints => &[],
            ExecutionMode::InputLines => &[],
            ExecutionMode::InputLinesAdjacency => &[],
            ExecutionMode::Triangles => &[],
            ExecutionMode::InputTrianglesAdjacency => &[],
            ExecutionMode::Quads => &[],
            ExecutionMode::Isolines => &[],
            ExecutionMode::OutputVertices => &[OpKind::LiteralInteger],
            ExecutionMode::OutputPoints => &[],
            ExecutionMode::OutputLineStrip => &[],
            ExecutionMode::OutputTriangleStrip => &[],
            ExecutionMode::VecTypeHint => &[OpKind::LiteralInteger],
            ExecutionMode::ContractionOff => &[],
            ExecutionMode::Initializer => &[],
            ExecutionMode::Finalizer => &[],
            ExecutionMode::SubgroupSize => &[OpKind::LiteralInteger],
            ExecutionMode::SubgroupsPerWorkgroup => &[OpKind::LiteralInteger],
            ExecutionMode::SubgroupsPerWorkgroupId => &[OpKind::IdRef],
            ExecutionMode::LocalSizeId => &[OpKind::IdRef, OpKind::IdRef, OpKind::IdRef],
            ExecutionMode::LocalSizeHintId => &[OpKind::IdRef],
            ExecutionMode::PostDepthCoverage => &[],
            ExecutionMode::DenormPreserve => &[OpKind::LiteralInteger],
            ExecutionMode::DenormFlushToZero => &[OpKind::LiteralInteger],
            ExecutionMode::SignedZeroInfNanPreserve => &[OpKind::LiteralInteger],
            ExecutionMode::RoundingModeRTE => &[OpKind::LiteralInteger],
            ExecutionMode::RoundingModeRTZ => &[OpKind::LiteralInteger],
            ExecutionMode::StencilRefReplacingEXT => &[],
            ExecutionMode::OutputLinesNV => &[],
            ExecutionMode::OutputPrimitivesNV => &[OpKind::LiteralInteger],
            ExecutionMode::DerivativeGroupQuadsNV => &[],
            ExecutionMode::DerivativeGroupLinearNV => &[],
            ExecutionMode::OutputTrianglesNV => &[],
            ExecutionMode::PixelInterlockOrderedEXT => &[],
            ExecutionMode::PixelInterlockUnorderedEXT => &[],
            ExecutionMode::SampleInterlockOrderedEXT => &[],
            ExecutionMode::SampleInterlockUnorderedEXT => &[],
            ExecutionMode::ShadingRateInterlockOrderedEXT => &[],
            ExecutionMode::ShadingRateInterlockUnorderedEXT => &[],
            ExecutionMode::SharedLocalMemorySizeINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::RoundingModeRTPINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::RoundingModeRTNINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::FloatingPointModeALTINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::FloatingPointModeIEEEINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::MaxWorkgroupSizeINTEL => &[
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
                OpKind::LiteralInteger,
            ],
            ExecutionMode::MaxWorkDimINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::NoGlobalOffsetINTEL => &[],
            ExecutionMode::NumSIMDWorkitemsINTEL => &[OpKind::LiteralInteger],
            ExecutionMode::SchedulerTargetFmaxMhzINTEL => &[OpKind::LiteralInteger],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ExecutionMode::Invocations => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::SpacingEqual => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::SpacingFractionalEven => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::SpacingFractionalOdd => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::VertexOrderCw => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::VertexOrderCcw => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::PixelCenterInteger => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::OriginUpperLeft => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::OriginLowerLeft => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::EarlyFragmentTests => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::PointMode => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::Xfb => Requirements {
                extensions: &[],
                capabilities: &[Capability::TransformFeedback],
                version: "",
            },
            ExecutionMode::DepthReplacing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::DepthGreater => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::DepthLess => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::DepthUnchanged => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ExecutionMode::LocalSize => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ExecutionMode::LocalSizeHint => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ExecutionMode::InputPoints => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::InputLines => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::InputLinesAdjacency => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::Triangles => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry, Capability::Tessellation],
                version: "",
            },
            ExecutionMode::InputTrianglesAdjacency => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::Quads => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::Isolines => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            ExecutionMode::OutputVertices => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Geometry,
                    Capability::Tessellation,
                    Capability::MeshShadingNV,
                ],
                version: "",
            },
            ExecutionMode::OutputPoints => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry, Capability::MeshShadingNV],
                version: "",
            },
            ExecutionMode::OutputLineStrip => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::OutputTriangleStrip => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            ExecutionMode::VecTypeHint => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ExecutionMode::ContractionOff => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ExecutionMode::Initializer => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "1.1",
            },
            ExecutionMode::Finalizer => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "1.1",
            },
            ExecutionMode::SubgroupSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupDispatch],
                version: "1.1",
            },
            ExecutionMode::SubgroupsPerWorkgroup => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupDispatch],
                version: "1.1",
            },
            ExecutionMode::SubgroupsPerWorkgroupId => Requirements {
                extensions: &[],
                capabilities: &[Capability::SubgroupDispatch],
                version: "1.2",
            },
            ExecutionMode::LocalSizeId => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.2",
            },
            ExecutionMode::LocalSizeHintId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "1.2",
            },
            ExecutionMode::PostDepthCoverage => Requirements {
                extensions: &["SPV_KHR_post_depth_coverage"],
                capabilities: &[Capability::SampleMaskPostDepthCoverage],
                version: "None",
            },
            ExecutionMode::DenormPreserve => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[Capability::DenormPreserve],
                version: "1.4",
            },
            ExecutionMode::DenormFlushToZero => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[Capability::DenormFlushToZero],
                version: "1.4",
            },
            ExecutionMode::SignedZeroInfNanPreserve => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[Capability::SignedZeroInfNanPreserve],
                version: "1.4",
            },
            ExecutionMode::RoundingModeRTE => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[Capability::RoundingModeRTE],
                version: "1.4",
            },
            ExecutionMode::RoundingModeRTZ => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[Capability::RoundingModeRTZ],
                version: "1.4",
            },
            ExecutionMode::StencilRefReplacingEXT => Requirements {
                extensions: &["SPV_EXT_shader_stencil_export"],
                capabilities: &[Capability::StencilExportEXT],
                version: "None",
            },
            ExecutionMode::OutputLinesNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            ExecutionMode::OutputPrimitivesNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            ExecutionMode::DerivativeGroupQuadsNV => Requirements {
                extensions: &["SPV_NV_compute_shader_derivatives"],
                capabilities: &[Capability::ComputeDerivativeGroupQuadsNV],
                version: "None",
            },
            ExecutionMode::DerivativeGroupLinearNV => Requirements {
                extensions: &["SPV_NV_compute_shader_derivatives"],
                capabilities: &[Capability::ComputeDerivativeGroupLinearNV],
                version: "None",
            },
            ExecutionMode::OutputTrianglesNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            ExecutionMode::PixelInterlockOrderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderPixelInterlockEXT],
                version: "None",
            },
            ExecutionMode::PixelInterlockUnorderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderPixelInterlockEXT],
                version: "None",
            },
            ExecutionMode::SampleInterlockOrderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderSampleInterlockEXT],
                version: "None",
            },
            ExecutionMode::SampleInterlockUnorderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderSampleInterlockEXT],
                version: "None",
            },
            ExecutionMode::ShadingRateInterlockOrderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderShadingRateInterlockEXT],
                version: "None",
            },
            ExecutionMode::ShadingRateInterlockUnorderedEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::FragmentShaderShadingRateInterlockEXT],
                version: "None",
            },
            ExecutionMode::SharedLocalMemorySizeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            ExecutionMode::RoundingModeRTPINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::RoundToInfinityINTEL],
                version: "None",
            },
            ExecutionMode::RoundingModeRTNINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::RoundToInfinityINTEL],
                version: "None",
            },
            ExecutionMode::FloatingPointModeALTINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::RoundToInfinityINTEL],
                version: "None",
            },
            ExecutionMode::FloatingPointModeIEEEINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::RoundToInfinityINTEL],
                version: "None",
            },
            ExecutionMode::MaxWorkgroupSizeINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[Capability::KernelAttributesINTEL],
                version: "None",
            },
            ExecutionMode::MaxWorkDimINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[Capability::KernelAttributesINTEL],
                version: "None",
            },
            ExecutionMode::NoGlobalOffsetINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[Capability::KernelAttributesINTEL],
                version: "None",
            },
            ExecutionMode::NumSIMDWorkitemsINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[Capability::FPGAKernelAttributesINTEL],
                version: "None",
            },
            ExecutionMode::SchedulerTargetFmaxMhzINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAKernelAttributesINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for ExecutionMode {
    fn from_str(tok: &str) -> Option<ExecutionMode> {
        match tok {
            "Invocations" => Some(ExecutionMode::Invocations),
            "SpacingEqual" => Some(ExecutionMode::SpacingEqual),
            "SpacingFractionalEven" => Some(ExecutionMode::SpacingFractionalEven),
            "SpacingFractionalOdd" => Some(ExecutionMode::SpacingFractionalOdd),
            "VertexOrderCw" => Some(ExecutionMode::VertexOrderCw),
            "VertexOrderCcw" => Some(ExecutionMode::VertexOrderCcw),
            "PixelCenterInteger" => Some(ExecutionMode::PixelCenterInteger),
            "OriginUpperLeft" => Some(ExecutionMode::OriginUpperLeft),
            "OriginLowerLeft" => Some(ExecutionMode::OriginLowerLeft),
            "EarlyFragmentTests" => Some(ExecutionMode::EarlyFragmentTests),
            "PointMode" => Some(ExecutionMode::PointMode),
            "Xfb" => Some(ExecutionMode::Xfb),
            "DepthReplacing" => Some(ExecutionMode::DepthReplacing),
            "DepthGreater" => Some(ExecutionMode::DepthGreater),
            "DepthLess" => Some(ExecutionMode::DepthLess),
            "DepthUnchanged" => Some(ExecutionMode::DepthUnchanged),
            "LocalSize" => Some(ExecutionMode::LocalSize),
            "LocalSizeHint" => Some(ExecutionMode::LocalSizeHint),
            "InputPoints" => Some(ExecutionMode::InputPoints),
            "InputLines" => Some(ExecutionMode::InputLines),
            "InputLinesAdjacency" => Some(ExecutionMode::InputLinesAdjacency),
            "Triangles" => Some(ExecutionMode::Triangles),
            "InputTrianglesAdjacency" => Some(ExecutionMode::InputTrianglesAdjacency),
            "Quads" => Some(ExecutionMode::Quads),
            "Isolines" => Some(ExecutionMode::Isolines),
            "OutputVertices" => Some(ExecutionMode::OutputVertices),
            "OutputPoints" => Some(ExecutionMode::OutputPoints),
            "OutputLineStrip" => Some(ExecutionMode::OutputLineStrip),
            "OutputTriangleStrip" => Some(ExecutionMode::OutputTriangleStrip),
            "VecTypeHint" => Some(ExecutionMode::VecTypeHint),
            "ContractionOff" => Some(ExecutionMode::ContractionOff),
            "Initializer" => Some(ExecutionMode::Initializer),
            "Finalizer" => Some(ExecutionMode::Finalizer),
            "SubgroupSize" => Some(ExecutionMode::SubgroupSize),
            "SubgroupsPerWorkgroup" => Some(ExecutionMode::SubgroupsPerWorkgroup),
            "SubgroupsPerWorkgroupId" => Some(ExecutionMode::SubgroupsPerWorkgroupId),
            "LocalSizeId" => Some(ExecutionMode::LocalSizeId),
            "LocalSizeHintId" => Some(ExecutionMode::LocalSizeHintId),
            "PostDepthCoverage" => Some(ExecutionMode::PostDepthCoverage),
            "DenormPreserve" => Some(ExecutionMode::DenormPreserve),
            "DenormFlushToZero" => Some(ExecutionMode::DenormFlushToZero),
            "SignedZeroInfNanPreserve" => Some(ExecutionMode::SignedZeroInfNanPreserve),
            "RoundingModeRTE" => Some(ExecutionMode::RoundingModeRTE),
            "RoundingModeRTZ" => Some(ExecutionMode::RoundingModeRTZ),
            "StencilRefReplacingEXT" => Some(ExecutionMode::StencilRefReplacingEXT),
            "OutputLinesNV" => Some(ExecutionMode::OutputLinesNV),
            "OutputPrimitivesNV" => Some(ExecutionMode::OutputPrimitivesNV),
            "DerivativeGroupQuadsNV" => Some(ExecutionMode::DerivativeGroupQuadsNV),
            "DerivativeGroupLinearNV" => Some(ExecutionMode::DerivativeGroupLinearNV),
            "OutputTrianglesNV" => Some(ExecutionMode::OutputTrianglesNV),
            "PixelInterlockOrderedEXT" => Some(ExecutionMode::PixelInterlockOrderedEXT),
            "PixelInterlockUnorderedEXT" => Some(ExecutionMode::PixelInterlockUnorderedEXT),
            "SampleInterlockOrderedEXT" => Some(ExecutionMode::SampleInterlockOrderedEXT),
            "SampleInterlockUnorderedEXT" => Some(ExecutionMode::SampleInterlockUnorderedEXT),
            "ShadingRateInterlockOrderedEXT" => Some(ExecutionMode::ShadingRateInterlockOrderedEXT),
            "ShadingRateInterlockUnorderedEXT" => {
                Some(ExecutionMode::ShadingRateInterlockUnorderedEXT)
            }
            "SharedLocalMemorySizeINTEL" => Some(ExecutionMode::SharedLocalMemorySizeINTEL),
            "RoundingModeRTPINTEL" => Some(ExecutionMode::RoundingModeRTPINTEL),
            "RoundingModeRTNINTEL" => Some(ExecutionMode::RoundingModeRTNINTEL),
            "FloatingPointModeALTINTEL" => Some(ExecutionMode::FloatingPointModeALTINTEL),
            "FloatingPointModeIEEEINTEL" => Some(ExecutionMode::FloatingPointModeIEEEINTEL),
            "MaxWorkgroupSizeINTEL" => Some(ExecutionMode::MaxWorkgroupSizeINTEL),
            "MaxWorkDimINTEL" => Some(ExecutionMode::MaxWorkDimINTEL),
            "NoGlobalOffsetINTEL" => Some(ExecutionMode::NoGlobalOffsetINTEL),
            "NumSIMDWorkitemsINTEL" => Some(ExecutionMode::NumSIMDWorkitemsINTEL),
            "SchedulerTargetFmaxMhzINTEL" => Some(ExecutionMode::SchedulerTargetFmaxMhzINTEL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum StorageClass {
    UniformConstant = 0u32,
    Input = 1u32,
    Uniform = 2u32,
    Output = 3u32,
    Workgroup = 4u32,
    CrossWorkgroup = 5u32,
    Private = 6u32,
    Function = 7u32,
    Generic = 8u32,
    PushConstant = 9u32,
    AtomicCounter = 10u32,
    Image = 11u32,
    StorageBuffer = 12u32,
    CallableDataNV = 5328u32,
    IncomingCallableDataNV = 5329u32,
    RayPayloadNV = 5338u32,
    HitAttributeNV = 5339u32,
    IncomingRayPayloadNV = 5342u32,
    ShaderRecordBufferNV = 5343u32,
    PhysicalStorageBuffer = 5349u32,
    CodeSectionINTEL = 5605u32,
    DeviceOnlyINTEL = 5936u32,
    HostOnlyINTEL = 5937u32,
}
impl StorageClass {
    const CallableDataKHR: StorageClass = StorageClass::CallableDataNV;
    const IncomingCallableDataKHR: StorageClass = StorageClass::IncomingCallableDataNV;
    const RayPayloadKHR: StorageClass = StorageClass::RayPayloadNV;
    const HitAttributeKHR: StorageClass = StorageClass::HitAttributeNV;
    const IncomingRayPayloadKHR: StorageClass = StorageClass::IncomingRayPayloadNV;
    const ShaderRecordBufferKHR: StorageClass = StorageClass::ShaderRecordBufferNV;
    const PhysicalStorageBufferEXT: StorageClass = StorageClass::PhysicalStorageBuffer;
}
impl StorageClass {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            StorageClass::UniformConstant => &[],
            StorageClass::Input => &[],
            StorageClass::Uniform => &[],
            StorageClass::Output => &[],
            StorageClass::Workgroup => &[],
            StorageClass::CrossWorkgroup => &[],
            StorageClass::Private => &[],
            StorageClass::Function => &[],
            StorageClass::Generic => &[],
            StorageClass::PushConstant => &[],
            StorageClass::AtomicCounter => &[],
            StorageClass::Image => &[],
            StorageClass::StorageBuffer => &[],
            StorageClass::CallableDataNV => &[],
            StorageClass::IncomingCallableDataNV => &[],
            StorageClass::RayPayloadNV => &[],
            StorageClass::HitAttributeNV => &[],
            StorageClass::IncomingRayPayloadNV => &[],
            StorageClass::ShaderRecordBufferNV => &[],
            StorageClass::PhysicalStorageBuffer => &[],
            StorageClass::CodeSectionINTEL => &[],
            StorageClass::DeviceOnlyINTEL => &[],
            StorageClass::HostOnlyINTEL => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            StorageClass::UniformConstant => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::Input => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::Uniform => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            StorageClass::Output => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            StorageClass::Workgroup => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::CrossWorkgroup => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::Private => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            StorageClass::Function => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::Generic => Requirements {
                extensions: &[],
                capabilities: &[Capability::GenericPointer],
                version: "",
            },
            StorageClass::PushConstant => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            StorageClass::AtomicCounter => Requirements {
                extensions: &[],
                capabilities: &[Capability::AtomicStorage],
                version: "",
            },
            StorageClass::Image => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            StorageClass::StorageBuffer => Requirements {
                extensions: &[
                    "SPV_KHR_storage_buffer_storage_class",
                    "SPV_KHR_variable_pointers",
                ],
                capabilities: &[Capability::Shader],
                version: "1.3",
            },
            StorageClass::CallableDataNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::IncomingCallableDataNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::RayPayloadNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::HitAttributeNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::IncomingRayPayloadNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::ShaderRecordBufferNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            StorageClass::PhysicalStorageBuffer => Requirements {
                extensions: &[
                    "SPV_EXT_physical_storage_buffer",
                    "SPV_KHR_physical_storage_buffer",
                ],
                capabilities: &[Capability::PhysicalStorageBufferAddresses],
                version: "1.5",
            },
            StorageClass::CodeSectionINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[Capability::FunctionPointersINTEL],
                version: "None",
            },
            StorageClass::DeviceOnlyINTEL => Requirements {
                extensions: &["SPV_INTEL_usm_storage_classes"],
                capabilities: &[Capability::USMStorageClassesINTEL],
                version: "None",
            },
            StorageClass::HostOnlyINTEL => Requirements {
                extensions: &["SPV_INTEL_usm_storage_classes"],
                capabilities: &[Capability::USMStorageClassesINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for StorageClass {
    fn from_str(tok: &str) -> Option<StorageClass> {
        match tok {
            "UniformConstant" => Some(StorageClass::UniformConstant),
            "Input" => Some(StorageClass::Input),
            "Uniform" => Some(StorageClass::Uniform),
            "Output" => Some(StorageClass::Output),
            "Workgroup" => Some(StorageClass::Workgroup),
            "CrossWorkgroup" => Some(StorageClass::CrossWorkgroup),
            "Private" => Some(StorageClass::Private),
            "Function" => Some(StorageClass::Function),
            "Generic" => Some(StorageClass::Generic),
            "PushConstant" => Some(StorageClass::PushConstant),
            "AtomicCounter" => Some(StorageClass::AtomicCounter),
            "Image" => Some(StorageClass::Image),
            "StorageBuffer" => Some(StorageClass::StorageBuffer),
            "CallableDataNV" => Some(StorageClass::CallableDataNV),
            "IncomingCallableDataNV" => Some(StorageClass::IncomingCallableDataNV),
            "RayPayloadNV" => Some(StorageClass::RayPayloadNV),
            "HitAttributeNV" => Some(StorageClass::HitAttributeNV),
            "IncomingRayPayloadNV" => Some(StorageClass::IncomingRayPayloadNV),
            "ShaderRecordBufferNV" => Some(StorageClass::ShaderRecordBufferNV),
            "PhysicalStorageBuffer" => Some(StorageClass::PhysicalStorageBuffer),
            "CodeSectionINTEL" => Some(StorageClass::CodeSectionINTEL),
            "DeviceOnlyINTEL" => Some(StorageClass::DeviceOnlyINTEL),
            "HostOnlyINTEL" => Some(StorageClass::HostOnlyINTEL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum Dim {
    _1D = 0u32,
    _2D = 1u32,
    _3D = 2u32,
    Cube = 3u32,
    Rect = 4u32,
    Buffer = 5u32,
    SubpassData = 6u32,
}
impl Dim {}
impl Dim {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            Dim::_1D => &[],
            Dim::_2D => &[],
            Dim::_3D => &[],
            Dim::Cube => &[],
            Dim::Rect => &[],
            Dim::Buffer => &[],
            Dim::SubpassData => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            Dim::_1D => Requirements {
                extensions: &[],
                capabilities: &[Capability::Sampled1D, Capability::Image1D],
                version: "",
            },
            Dim::_2D => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Shader,
                    Capability::Kernel,
                    Capability::ImageMSArray,
                ],
                version: "",
            },
            Dim::_3D => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Dim::Cube => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader, Capability::ImageCubeArray],
                version: "",
            },
            Dim::Rect => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledRect, Capability::ImageRect],
                version: "",
            },
            Dim::Buffer => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledBuffer, Capability::ImageBuffer],
                version: "",
            },
            Dim::SubpassData => Requirements {
                extensions: &[],
                capabilities: &[Capability::InputAttachment],
                version: "",
            },
        }
    }
}
impl EnumValue for Dim {
    fn from_str(tok: &str) -> Option<Dim> {
        match tok {
            "1D" => Some(Dim::_1D),
            "2D" => Some(Dim::_2D),
            "3D" => Some(Dim::_3D),
            "Cube" => Some(Dim::Cube),
            "Rect" => Some(Dim::Rect),
            "Buffer" => Some(Dim::Buffer),
            "SubpassData" => Some(Dim::SubpassData),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum SamplerAddressingMode {
    None = 0u32,
    ClampToEdge = 1u32,
    Clamp = 2u32,
    Repeat = 3u32,
    RepeatMirrored = 4u32,
}
impl SamplerAddressingMode {}
impl SamplerAddressingMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            SamplerAddressingMode::None => &[],
            SamplerAddressingMode::ClampToEdge => &[],
            SamplerAddressingMode::Clamp => &[],
            SamplerAddressingMode::Repeat => &[],
            SamplerAddressingMode::RepeatMirrored => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            SamplerAddressingMode::None => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            SamplerAddressingMode::ClampToEdge => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            SamplerAddressingMode::Clamp => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            SamplerAddressingMode::Repeat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            SamplerAddressingMode::RepeatMirrored => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for SamplerAddressingMode {
    fn from_str(tok: &str) -> Option<SamplerAddressingMode> {
        match tok {
            "None" => Some(SamplerAddressingMode::None),
            "ClampToEdge" => Some(SamplerAddressingMode::ClampToEdge),
            "Clamp" => Some(SamplerAddressingMode::Clamp),
            "Repeat" => Some(SamplerAddressingMode::Repeat),
            "RepeatMirrored" => Some(SamplerAddressingMode::RepeatMirrored),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum SamplerFilterMode {
    Nearest = 0u32,
    Linear = 1u32,
}
impl SamplerFilterMode {}
impl SamplerFilterMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            SamplerFilterMode::Nearest => &[],
            SamplerFilterMode::Linear => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            SamplerFilterMode::Nearest => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            SamplerFilterMode::Linear => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for SamplerFilterMode {
    fn from_str(tok: &str) -> Option<SamplerFilterMode> {
        match tok {
            "Nearest" => Some(SamplerFilterMode::Nearest),
            "Linear" => Some(SamplerFilterMode::Linear),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ImageFormat {
    Unknown = 0u32,
    Rgba32f = 1u32,
    Rgba16f = 2u32,
    R32f = 3u32,
    Rgba8 = 4u32,
    Rgba8Snorm = 5u32,
    Rg32f = 6u32,
    Rg16f = 7u32,
    R11fG11fB10f = 8u32,
    R16f = 9u32,
    Rgba16 = 10u32,
    Rgb10A2 = 11u32,
    Rg16 = 12u32,
    Rg8 = 13u32,
    R16 = 14u32,
    R8 = 15u32,
    Rgba16Snorm = 16u32,
    Rg16Snorm = 17u32,
    Rg8Snorm = 18u32,
    R16Snorm = 19u32,
    R8Snorm = 20u32,
    Rgba32i = 21u32,
    Rgba16i = 22u32,
    Rgba8i = 23u32,
    R32i = 24u32,
    Rg32i = 25u32,
    Rg16i = 26u32,
    Rg8i = 27u32,
    R16i = 28u32,
    R8i = 29u32,
    Rgba32ui = 30u32,
    Rgba16ui = 31u32,
    Rgba8ui = 32u32,
    R32ui = 33u32,
    Rgb10a2ui = 34u32,
    Rg32ui = 35u32,
    Rg16ui = 36u32,
    Rg8ui = 37u32,
    R16ui = 38u32,
    R8ui = 39u32,
    R64ui = 40u32,
    R64i = 41u32,
}
impl ImageFormat {}
impl ImageFormat {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ImageFormat::Unknown => &[],
            ImageFormat::Rgba32f => &[],
            ImageFormat::Rgba16f => &[],
            ImageFormat::R32f => &[],
            ImageFormat::Rgba8 => &[],
            ImageFormat::Rgba8Snorm => &[],
            ImageFormat::Rg32f => &[],
            ImageFormat::Rg16f => &[],
            ImageFormat::R11fG11fB10f => &[],
            ImageFormat::R16f => &[],
            ImageFormat::Rgba16 => &[],
            ImageFormat::Rgb10A2 => &[],
            ImageFormat::Rg16 => &[],
            ImageFormat::Rg8 => &[],
            ImageFormat::R16 => &[],
            ImageFormat::R8 => &[],
            ImageFormat::Rgba16Snorm => &[],
            ImageFormat::Rg16Snorm => &[],
            ImageFormat::Rg8Snorm => &[],
            ImageFormat::R16Snorm => &[],
            ImageFormat::R8Snorm => &[],
            ImageFormat::Rgba32i => &[],
            ImageFormat::Rgba16i => &[],
            ImageFormat::Rgba8i => &[],
            ImageFormat::R32i => &[],
            ImageFormat::Rg32i => &[],
            ImageFormat::Rg16i => &[],
            ImageFormat::Rg8i => &[],
            ImageFormat::R16i => &[],
            ImageFormat::R8i => &[],
            ImageFormat::Rgba32ui => &[],
            ImageFormat::Rgba16ui => &[],
            ImageFormat::Rgba8ui => &[],
            ImageFormat::R32ui => &[],
            ImageFormat::Rgb10a2ui => &[],
            ImageFormat::Rg32ui => &[],
            ImageFormat::Rg16ui => &[],
            ImageFormat::Rg8ui => &[],
            ImageFormat::R16ui => &[],
            ImageFormat::R8ui => &[],
            ImageFormat::R64ui => &[],
            ImageFormat::R64i => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ImageFormat::Unknown => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            ImageFormat::Rgba32f => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba16f => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::R32f => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba8Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rg32f => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg16f => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R11fG11fB10f => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R16f => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rgba16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rgb10A2 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rgba16Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg16Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg8Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R16Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R8Snorm => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rgba32i => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba16i => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba8i => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::R32i => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rg32i => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg16i => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg8i => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R16i => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R8i => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rgba32ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba16ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgba8ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::R32ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            ImageFormat::Rgb10a2ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg32ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg16ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::Rg8ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R16ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R8ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::StorageImageExtendedFormats],
                version: "",
            },
            ImageFormat::R64ui => Requirements {
                extensions: &[],
                capabilities: &[Capability::Int64ImageEXT],
                version: "",
            },
            ImageFormat::R64i => Requirements {
                extensions: &[],
                capabilities: &[Capability::Int64ImageEXT],
                version: "",
            },
        }
    }
}
impl EnumValue for ImageFormat {
    fn from_str(tok: &str) -> Option<ImageFormat> {
        match tok {
            "Unknown" => Some(ImageFormat::Unknown),
            "Rgba32f" => Some(ImageFormat::Rgba32f),
            "Rgba16f" => Some(ImageFormat::Rgba16f),
            "R32f" => Some(ImageFormat::R32f),
            "Rgba8" => Some(ImageFormat::Rgba8),
            "Rgba8Snorm" => Some(ImageFormat::Rgba8Snorm),
            "Rg32f" => Some(ImageFormat::Rg32f),
            "Rg16f" => Some(ImageFormat::Rg16f),
            "R11fG11fB10f" => Some(ImageFormat::R11fG11fB10f),
            "R16f" => Some(ImageFormat::R16f),
            "Rgba16" => Some(ImageFormat::Rgba16),
            "Rgb10A2" => Some(ImageFormat::Rgb10A2),
            "Rg16" => Some(ImageFormat::Rg16),
            "Rg8" => Some(ImageFormat::Rg8),
            "R16" => Some(ImageFormat::R16),
            "R8" => Some(ImageFormat::R8),
            "Rgba16Snorm" => Some(ImageFormat::Rgba16Snorm),
            "Rg16Snorm" => Some(ImageFormat::Rg16Snorm),
            "Rg8Snorm" => Some(ImageFormat::Rg8Snorm),
            "R16Snorm" => Some(ImageFormat::R16Snorm),
            "R8Snorm" => Some(ImageFormat::R8Snorm),
            "Rgba32i" => Some(ImageFormat::Rgba32i),
            "Rgba16i" => Some(ImageFormat::Rgba16i),
            "Rgba8i" => Some(ImageFormat::Rgba8i),
            "R32i" => Some(ImageFormat::R32i),
            "Rg32i" => Some(ImageFormat::Rg32i),
            "Rg16i" => Some(ImageFormat::Rg16i),
            "Rg8i" => Some(ImageFormat::Rg8i),
            "R16i" => Some(ImageFormat::R16i),
            "R8i" => Some(ImageFormat::R8i),
            "Rgba32ui" => Some(ImageFormat::Rgba32ui),
            "Rgba16ui" => Some(ImageFormat::Rgba16ui),
            "Rgba8ui" => Some(ImageFormat::Rgba8ui),
            "R32ui" => Some(ImageFormat::R32ui),
            "Rgb10a2ui" => Some(ImageFormat::Rgb10a2ui),
            "Rg32ui" => Some(ImageFormat::Rg32ui),
            "Rg16ui" => Some(ImageFormat::Rg16ui),
            "Rg8ui" => Some(ImageFormat::Rg8ui),
            "R16ui" => Some(ImageFormat::R16ui),
            "R8ui" => Some(ImageFormat::R8ui),
            "R64ui" => Some(ImageFormat::R64ui),
            "R64i" => Some(ImageFormat::R64i),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ImageChannelOrder {
    R = 0u32,
    A = 1u32,
    RG = 2u32,
    RA = 3u32,
    RGB = 4u32,
    RGBA = 5u32,
    BGRA = 6u32,
    ARGB = 7u32,
    Intensity = 8u32,
    Luminance = 9u32,
    Rx = 10u32,
    RGx = 11u32,
    RGBx = 12u32,
    Depth = 13u32,
    DepthStencil = 14u32,
    sRGB = 15u32,
    sRGBx = 16u32,
    sRGBA = 17u32,
    sBGRA = 18u32,
    ABGR = 19u32,
}
impl ImageChannelOrder {}
impl ImageChannelOrder {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ImageChannelOrder::R => &[],
            ImageChannelOrder::A => &[],
            ImageChannelOrder::RG => &[],
            ImageChannelOrder::RA => &[],
            ImageChannelOrder::RGB => &[],
            ImageChannelOrder::RGBA => &[],
            ImageChannelOrder::BGRA => &[],
            ImageChannelOrder::ARGB => &[],
            ImageChannelOrder::Intensity => &[],
            ImageChannelOrder::Luminance => &[],
            ImageChannelOrder::Rx => &[],
            ImageChannelOrder::RGx => &[],
            ImageChannelOrder::RGBx => &[],
            ImageChannelOrder::Depth => &[],
            ImageChannelOrder::DepthStencil => &[],
            ImageChannelOrder::sRGB => &[],
            ImageChannelOrder::sRGBx => &[],
            ImageChannelOrder::sRGBA => &[],
            ImageChannelOrder::sBGRA => &[],
            ImageChannelOrder::ABGR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ImageChannelOrder::R => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::A => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RG => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RA => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RGB => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RGBA => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::BGRA => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::ARGB => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::Intensity => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::Luminance => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::Rx => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RGx => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::RGBx => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::Depth => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::DepthStencil => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::sRGB => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::sRGBx => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::sRGBA => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::sBGRA => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelOrder::ABGR => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for ImageChannelOrder {
    fn from_str(tok: &str) -> Option<ImageChannelOrder> {
        match tok {
            "R" => Some(ImageChannelOrder::R),
            "A" => Some(ImageChannelOrder::A),
            "RG" => Some(ImageChannelOrder::RG),
            "RA" => Some(ImageChannelOrder::RA),
            "RGB" => Some(ImageChannelOrder::RGB),
            "RGBA" => Some(ImageChannelOrder::RGBA),
            "BGRA" => Some(ImageChannelOrder::BGRA),
            "ARGB" => Some(ImageChannelOrder::ARGB),
            "Intensity" => Some(ImageChannelOrder::Intensity),
            "Luminance" => Some(ImageChannelOrder::Luminance),
            "Rx" => Some(ImageChannelOrder::Rx),
            "RGx" => Some(ImageChannelOrder::RGx),
            "RGBx" => Some(ImageChannelOrder::RGBx),
            "Depth" => Some(ImageChannelOrder::Depth),
            "DepthStencil" => Some(ImageChannelOrder::DepthStencil),
            "sRGB" => Some(ImageChannelOrder::sRGB),
            "sRGBx" => Some(ImageChannelOrder::sRGBx),
            "sRGBA" => Some(ImageChannelOrder::sRGBA),
            "sBGRA" => Some(ImageChannelOrder::sBGRA),
            "ABGR" => Some(ImageChannelOrder::ABGR),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum ImageChannelDataType {
    SnormInt8 = 0u32,
    SnormInt16 = 1u32,
    UnormInt8 = 2u32,
    UnormInt16 = 3u32,
    UnormShort565 = 4u32,
    UnormShort555 = 5u32,
    UnormInt101010 = 6u32,
    SignedInt8 = 7u32,
    SignedInt16 = 8u32,
    SignedInt32 = 9u32,
    UnsignedInt8 = 10u32,
    UnsignedInt16 = 11u32,
    UnsignedInt32 = 12u32,
    HalfFloat = 13u32,
    Float = 14u32,
    UnormInt24 = 15u32,
    UnormInt101010_2 = 16u32,
}
impl ImageChannelDataType {}
impl ImageChannelDataType {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            ImageChannelDataType::SnormInt8 => &[],
            ImageChannelDataType::SnormInt16 => &[],
            ImageChannelDataType::UnormInt8 => &[],
            ImageChannelDataType::UnormInt16 => &[],
            ImageChannelDataType::UnormShort565 => &[],
            ImageChannelDataType::UnormShort555 => &[],
            ImageChannelDataType::UnormInt101010 => &[],
            ImageChannelDataType::SignedInt8 => &[],
            ImageChannelDataType::SignedInt16 => &[],
            ImageChannelDataType::SignedInt32 => &[],
            ImageChannelDataType::UnsignedInt8 => &[],
            ImageChannelDataType::UnsignedInt16 => &[],
            ImageChannelDataType::UnsignedInt32 => &[],
            ImageChannelDataType::HalfFloat => &[],
            ImageChannelDataType::Float => &[],
            ImageChannelDataType::UnormInt24 => &[],
            ImageChannelDataType::UnormInt101010_2 => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            ImageChannelDataType::SnormInt8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::SnormInt16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormInt8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormInt16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormShort565 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormShort555 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormInt101010 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::SignedInt8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::SignedInt16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::SignedInt32 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnsignedInt8 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnsignedInt16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnsignedInt32 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::HalfFloat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::Float => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormInt24 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            ImageChannelDataType::UnormInt101010_2 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for ImageChannelDataType {
    fn from_str(tok: &str) -> Option<ImageChannelDataType> {
        match tok {
            "SnormInt8" => Some(ImageChannelDataType::SnormInt8),
            "SnormInt16" => Some(ImageChannelDataType::SnormInt16),
            "UnormInt8" => Some(ImageChannelDataType::UnormInt8),
            "UnormInt16" => Some(ImageChannelDataType::UnormInt16),
            "UnormShort565" => Some(ImageChannelDataType::UnormShort565),
            "UnormShort555" => Some(ImageChannelDataType::UnormShort555),
            "UnormInt101010" => Some(ImageChannelDataType::UnormInt101010),
            "SignedInt8" => Some(ImageChannelDataType::SignedInt8),
            "SignedInt16" => Some(ImageChannelDataType::SignedInt16),
            "SignedInt32" => Some(ImageChannelDataType::SignedInt32),
            "UnsignedInt8" => Some(ImageChannelDataType::UnsignedInt8),
            "UnsignedInt16" => Some(ImageChannelDataType::UnsignedInt16),
            "UnsignedInt32" => Some(ImageChannelDataType::UnsignedInt32),
            "HalfFloat" => Some(ImageChannelDataType::HalfFloat),
            "Float" => Some(ImageChannelDataType::Float),
            "UnormInt24" => Some(ImageChannelDataType::UnormInt24),
            "UnormInt101010_2" => Some(ImageChannelDataType::UnormInt101010_2),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FPRoundingMode {
    RTE = 0u32,
    RTZ = 1u32,
    RTP = 2u32,
    RTN = 3u32,
}
impl FPRoundingMode {}
impl FPRoundingMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FPRoundingMode::RTE => &[],
            FPRoundingMode::RTZ => &[],
            FPRoundingMode::RTP => &[],
            FPRoundingMode::RTN => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FPRoundingMode::RTE => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FPRoundingMode::RTZ => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FPRoundingMode::RTP => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            FPRoundingMode::RTN => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
        }
    }
}
impl EnumValue for FPRoundingMode {
    fn from_str(tok: &str) -> Option<FPRoundingMode> {
        match tok {
            "RTE" => Some(FPRoundingMode::RTE),
            "RTZ" => Some(FPRoundingMode::RTZ),
            "RTP" => Some(FPRoundingMode::RTP),
            "RTN" => Some(FPRoundingMode::RTN),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FPDenormMode {
    Preserve = 0u32,
    FlushToZero = 1u32,
}
impl FPDenormMode {}
impl FPDenormMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FPDenormMode::Preserve => &[],
            FPDenormMode::FlushToZero => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FPDenormMode::Preserve => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
            FPDenormMode::FlushToZero => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for FPDenormMode {
    fn from_str(tok: &str) -> Option<FPDenormMode> {
        match tok {
            "Preserve" => Some(FPDenormMode::Preserve),
            "FlushToZero" => Some(FPDenormMode::FlushToZero),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FPOperationMode {
    IEEE = 0u32,
    ALT = 1u32,
}
impl FPOperationMode {}
impl FPOperationMode {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FPOperationMode::IEEE => &[],
            FPOperationMode::ALT => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FPOperationMode::IEEE => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
            FPOperationMode::ALT => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for FPOperationMode {
    fn from_str(tok: &str) -> Option<FPOperationMode> {
        match tok {
            "IEEE" => Some(FPOperationMode::IEEE),
            "ALT" => Some(FPOperationMode::ALT),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum LinkageType {
    Export = 0u32,
    Import = 1u32,
}
impl LinkageType {}
impl LinkageType {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            LinkageType::Export => &[],
            LinkageType::Import => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            LinkageType::Export => Requirements {
                extensions: &[],
                capabilities: &[Capability::Linkage],
                version: "",
            },
            LinkageType::Import => Requirements {
                extensions: &[],
                capabilities: &[Capability::Linkage],
                version: "",
            },
        }
    }
}
impl EnumValue for LinkageType {
    fn from_str(tok: &str) -> Option<LinkageType> {
        match tok {
            "Export" => Some(LinkageType::Export),
            "Import" => Some(LinkageType::Import),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum AccessQualifier {
    ReadOnly = 0u32,
    WriteOnly = 1u32,
    ReadWrite = 2u32,
}
impl AccessQualifier {}
impl AccessQualifier {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            AccessQualifier::ReadOnly => &[],
            AccessQualifier::WriteOnly => &[],
            AccessQualifier::ReadWrite => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            AccessQualifier::ReadOnly => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            AccessQualifier::WriteOnly => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            AccessQualifier::ReadWrite => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for AccessQualifier {
    fn from_str(tok: &str) -> Option<AccessQualifier> {
        match tok {
            "ReadOnly" => Some(AccessQualifier::ReadOnly),
            "WriteOnly" => Some(AccessQualifier::WriteOnly),
            "ReadWrite" => Some(AccessQualifier::ReadWrite),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum FunctionParameterAttribute {
    Zext = 0u32,
    Sext = 1u32,
    ByVal = 2u32,
    Sret = 3u32,
    NoAlias = 4u32,
    NoCapture = 5u32,
    NoWrite = 6u32,
    NoReadWrite = 7u32,
}
impl FunctionParameterAttribute {}
impl FunctionParameterAttribute {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            FunctionParameterAttribute::Zext => &[],
            FunctionParameterAttribute::Sext => &[],
            FunctionParameterAttribute::ByVal => &[],
            FunctionParameterAttribute::Sret => &[],
            FunctionParameterAttribute::NoAlias => &[],
            FunctionParameterAttribute::NoCapture => &[],
            FunctionParameterAttribute::NoWrite => &[],
            FunctionParameterAttribute::NoReadWrite => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            FunctionParameterAttribute::Zext => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::Sext => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::ByVal => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::Sret => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::NoAlias => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::NoCapture => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::NoWrite => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            FunctionParameterAttribute::NoReadWrite => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for FunctionParameterAttribute {
    fn from_str(tok: &str) -> Option<FunctionParameterAttribute> {
        match tok {
            "Zext" => Some(FunctionParameterAttribute::Zext),
            "Sext" => Some(FunctionParameterAttribute::Sext),
            "ByVal" => Some(FunctionParameterAttribute::ByVal),
            "Sret" => Some(FunctionParameterAttribute::Sret),
            "NoAlias" => Some(FunctionParameterAttribute::NoAlias),
            "NoCapture" => Some(FunctionParameterAttribute::NoCapture),
            "NoWrite" => Some(FunctionParameterAttribute::NoWrite),
            "NoReadWrite" => Some(FunctionParameterAttribute::NoReadWrite),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum Decoration {
    RelaxedPrecision = 0u32,
    SpecId = 1u32,
    Block = 2u32,
    BufferBlock = 3u32,
    RowMajor = 4u32,
    ColMajor = 5u32,
    ArrayStride = 6u32,
    MatrixStride = 7u32,
    GLSLShared = 8u32,
    GLSLPacked = 9u32,
    CPacked = 10u32,
    BuiltIn = 11u32,
    NoPerspective = 13u32,
    Flat = 14u32,
    Patch = 15u32,
    Centroid = 16u32,
    Sample = 17u32,
    Invariant = 18u32,
    Restrict = 19u32,
    Aliased = 20u32,
    Volatile = 21u32,
    Constant = 22u32,
    Coherent = 23u32,
    NonWritable = 24u32,
    NonReadable = 25u32,
    Uniform = 26u32,
    UniformId = 27u32,
    SaturatedConversion = 28u32,
    Stream = 29u32,
    Location = 30u32,
    Component = 31u32,
    Index = 32u32,
    Binding = 33u32,
    DescriptorSet = 34u32,
    Offset = 35u32,
    XfbBuffer = 36u32,
    XfbStride = 37u32,
    FuncParamAttr = 38u32,
    FPRoundingMode = 39u32,
    FPFastMathMode = 40u32,
    LinkageAttributes = 41u32,
    NoContraction = 42u32,
    InputAttachmentIndex = 43u32,
    Alignment = 44u32,
    MaxByteOffset = 45u32,
    AlignmentId = 46u32,
    MaxByteOffsetId = 47u32,
    NoSignedWrap = 4469u32,
    NoUnsignedWrap = 4470u32,
    ExplicitInterpAMD = 4999u32,
    OverrideCoverageNV = 5248u32,
    PassthroughNV = 5250u32,
    ViewportRelativeNV = 5252u32,
    SecondaryViewportRelativeNV = 5256u32,
    PerPrimitiveNV = 5271u32,
    PerViewNV = 5272u32,
    PerTaskNV = 5273u32,
    PerVertexNV = 5285u32,
    NonUniform = 5300u32,
    RestrictPointer = 5355u32,
    AliasedPointer = 5356u32,
    SIMTCallINTEL = 5599u32,
    ReferencedIndirectlyINTEL = 5602u32,
    ClobberINTEL = 5607u32,
    SideEffectsINTEL = 5608u32,
    VectorComputeVariableINTEL = 5624u32,
    FuncParamIOKindINTEL = 5625u32,
    VectorComputeFunctionINTEL = 5626u32,
    StackCallINTEL = 5627u32,
    GlobalVariableOffsetINTEL = 5628u32,
    CounterBuffer = 5634u32,
    UserSemantic = 5635u32,
    UserTypeGOOGLE = 5636u32,
    FunctionRoundingModeINTEL = 5822u32,
    FunctionDenormModeINTEL = 5823u32,
    RegisterINTEL = 5825u32,
    MemoryINTEL = 5826u32,
    NumbanksINTEL = 5827u32,
    BankwidthINTEL = 5828u32,
    MaxPrivateCopiesINTEL = 5829u32,
    SinglepumpINTEL = 5830u32,
    DoublepumpINTEL = 5831u32,
    MaxReplicatesINTEL = 5832u32,
    SimpleDualPortINTEL = 5833u32,
    MergeINTEL = 5834u32,
    BankBitsINTEL = 5835u32,
    ForcePow2DepthINTEL = 5836u32,
    BurstCoalesceINTEL = 5899u32,
    CacheSizeINTEL = 5900u32,
    DontStaticallyCoalesceINTEL = 5901u32,
    PrefetchINTEL = 5902u32,
    StallEnableINTEL = 5905u32,
    FuseLoopsInFunctionINTEL = 5907u32,
    BufferLocationINTEL = 5921u32,
    IOPipeStorageINTEL = 5944u32,
    FunctionFloatingPointModeINTEL = 6080u32,
    SingleElementVectorINTEL = 6085u32,
    VectorComputeCallableFunctionINTEL = 6087u32,
}
impl Decoration {
    const NonUniformEXT: Decoration = Decoration::NonUniform;
    const RestrictPointerEXT: Decoration = Decoration::RestrictPointer;
    const AliasedPointerEXT: Decoration = Decoration::AliasedPointer;
    const HlslCounterBufferGOOGLE: Decoration = Decoration::CounterBuffer;
    const HlslSemanticGOOGLE: Decoration = Decoration::UserSemantic;
}
impl Decoration {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            Decoration::RelaxedPrecision => &[],
            Decoration::SpecId => &[OpKind::LiteralInteger],
            Decoration::Block => &[],
            Decoration::BufferBlock => &[],
            Decoration::RowMajor => &[],
            Decoration::ColMajor => &[],
            Decoration::ArrayStride => &[OpKind::LiteralInteger],
            Decoration::MatrixStride => &[OpKind::LiteralInteger],
            Decoration::GLSLShared => &[],
            Decoration::GLSLPacked => &[],
            Decoration::CPacked => &[],
            Decoration::BuiltIn => &[OpKind::BuiltIn],
            Decoration::NoPerspective => &[],
            Decoration::Flat => &[],
            Decoration::Patch => &[],
            Decoration::Centroid => &[],
            Decoration::Sample => &[],
            Decoration::Invariant => &[],
            Decoration::Restrict => &[],
            Decoration::Aliased => &[],
            Decoration::Volatile => &[],
            Decoration::Constant => &[],
            Decoration::Coherent => &[],
            Decoration::NonWritable => &[],
            Decoration::NonReadable => &[],
            Decoration::Uniform => &[],
            Decoration::UniformId => &[OpKind::IdScope],
            Decoration::SaturatedConversion => &[],
            Decoration::Stream => &[OpKind::LiteralInteger],
            Decoration::Location => &[OpKind::LiteralInteger],
            Decoration::Component => &[OpKind::LiteralInteger],
            Decoration::Index => &[OpKind::LiteralInteger],
            Decoration::Binding => &[OpKind::LiteralInteger],
            Decoration::DescriptorSet => &[OpKind::LiteralInteger],
            Decoration::Offset => &[OpKind::LiteralInteger],
            Decoration::XfbBuffer => &[OpKind::LiteralInteger],
            Decoration::XfbStride => &[OpKind::LiteralInteger],
            Decoration::FuncParamAttr => &[OpKind::FunctionParameterAttribute],
            Decoration::FPRoundingMode => &[OpKind::FPRoundingMode],
            Decoration::FPFastMathMode => &[OpKind::FPFastMathMode],
            Decoration::LinkageAttributes => &[OpKind::LiteralString, OpKind::LinkageType],
            Decoration::NoContraction => &[],
            Decoration::InputAttachmentIndex => &[OpKind::LiteralInteger],
            Decoration::Alignment => &[OpKind::LiteralInteger],
            Decoration::MaxByteOffset => &[OpKind::LiteralInteger],
            Decoration::AlignmentId => &[OpKind::IdRef],
            Decoration::MaxByteOffsetId => &[OpKind::IdRef],
            Decoration::NoSignedWrap => &[],
            Decoration::NoUnsignedWrap => &[],
            Decoration::ExplicitInterpAMD => &[],
            Decoration::OverrideCoverageNV => &[],
            Decoration::PassthroughNV => &[],
            Decoration::ViewportRelativeNV => &[],
            Decoration::SecondaryViewportRelativeNV => &[OpKind::LiteralInteger],
            Decoration::PerPrimitiveNV => &[],
            Decoration::PerViewNV => &[],
            Decoration::PerTaskNV => &[],
            Decoration::PerVertexNV => &[],
            Decoration::NonUniform => &[],
            Decoration::RestrictPointer => &[],
            Decoration::AliasedPointer => &[],
            Decoration::SIMTCallINTEL => &[OpKind::LiteralInteger],
            Decoration::ReferencedIndirectlyINTEL => &[],
            Decoration::ClobberINTEL => &[OpKind::LiteralString],
            Decoration::SideEffectsINTEL => &[],
            Decoration::VectorComputeVariableINTEL => &[],
            Decoration::FuncParamIOKindINTEL => &[OpKind::LiteralInteger],
            Decoration::VectorComputeFunctionINTEL => &[],
            Decoration::StackCallINTEL => &[],
            Decoration::GlobalVariableOffsetINTEL => &[OpKind::LiteralInteger],
            Decoration::CounterBuffer => &[OpKind::IdRef],
            Decoration::UserSemantic => &[OpKind::LiteralString],
            Decoration::UserTypeGOOGLE => &[OpKind::LiteralString],
            Decoration::FunctionRoundingModeINTEL => {
                &[OpKind::LiteralInteger, OpKind::FPRoundingMode]
            }
            Decoration::FunctionDenormModeINTEL => &[OpKind::LiteralInteger, OpKind::FPDenormMode],
            Decoration::RegisterINTEL => &[],
            Decoration::MemoryINTEL => &[OpKind::LiteralString],
            Decoration::NumbanksINTEL => &[OpKind::LiteralInteger],
            Decoration::BankwidthINTEL => &[OpKind::LiteralInteger],
            Decoration::MaxPrivateCopiesINTEL => &[OpKind::LiteralInteger],
            Decoration::SinglepumpINTEL => &[],
            Decoration::DoublepumpINTEL => &[],
            Decoration::MaxReplicatesINTEL => &[OpKind::LiteralInteger],
            Decoration::SimpleDualPortINTEL => &[],
            Decoration::MergeINTEL => &[OpKind::LiteralString, OpKind::LiteralString],
            Decoration::BankBitsINTEL => &[OpKind::LiteralInteger],
            Decoration::ForcePow2DepthINTEL => &[OpKind::LiteralInteger],
            Decoration::BurstCoalesceINTEL => &[],
            Decoration::CacheSizeINTEL => &[OpKind::LiteralInteger],
            Decoration::DontStaticallyCoalesceINTEL => &[],
            Decoration::PrefetchINTEL => &[OpKind::LiteralInteger],
            Decoration::StallEnableINTEL => &[],
            Decoration::FuseLoopsInFunctionINTEL => &[],
            Decoration::BufferLocationINTEL => &[OpKind::LiteralInteger],
            Decoration::IOPipeStorageINTEL => &[OpKind::LiteralInteger],
            Decoration::FunctionFloatingPointModeINTEL => {
                &[OpKind::LiteralInteger, OpKind::FPOperationMode]
            }
            Decoration::SingleElementVectorINTEL => &[],
            Decoration::VectorComputeCallableFunctionINTEL => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            Decoration::RelaxedPrecision => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::SpecId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader, Capability::Kernel],
                version: "",
            },
            Decoration::Block => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::BufferBlock => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::RowMajor => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Decoration::ColMajor => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Decoration::ArrayStride => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::MatrixStride => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Decoration::GLSLShared => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::GLSLPacked => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::CPacked => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::BuiltIn => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::NoPerspective => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Flat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Patch => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            Decoration::Centroid => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Sample => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampleRateShading],
                version: "",
            },
            Decoration::Invariant => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Restrict => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::Aliased => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::Volatile => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::Constant => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::Coherent => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::NonWritable => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::NonReadable => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::Uniform => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::UniformId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "1.4",
            },
            Decoration::SaturatedConversion => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::Stream => Requirements {
                extensions: &[],
                capabilities: &[Capability::GeometryStreams],
                version: "",
            },
            Decoration::Location => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Component => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Index => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Binding => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::DescriptorSet => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::Offset => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::XfbBuffer => Requirements {
                extensions: &[],
                capabilities: &[Capability::TransformFeedback],
                version: "",
            },
            Decoration::XfbStride => Requirements {
                extensions: &[],
                capabilities: &[Capability::TransformFeedback],
                version: "",
            },
            Decoration::FuncParamAttr => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::FPRoundingMode => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Decoration::FPFastMathMode => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::LinkageAttributes => Requirements {
                extensions: &[],
                capabilities: &[Capability::Linkage],
                version: "",
            },
            Decoration::NoContraction => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Decoration::InputAttachmentIndex => Requirements {
                extensions: &[],
                capabilities: &[Capability::InputAttachment],
                version: "",
            },
            Decoration::Alignment => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Decoration::MaxByteOffset => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "1.1",
            },
            Decoration::AlignmentId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "1.2",
            },
            Decoration::MaxByteOffsetId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "1.2",
            },
            Decoration::NoSignedWrap => Requirements {
                extensions: &["SPV_KHR_no_integer_wrap_decoration"],
                capabilities: &[],
                version: "1.4",
            },
            Decoration::NoUnsignedWrap => Requirements {
                extensions: &["SPV_KHR_no_integer_wrap_decoration"],
                capabilities: &[],
                version: "1.4",
            },
            Decoration::ExplicitInterpAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            Decoration::OverrideCoverageNV => Requirements {
                extensions: &["SPV_NV_sample_mask_override_coverage"],
                capabilities: &[Capability::SampleMaskOverrideCoverageNV],
                version: "None",
            },
            Decoration::PassthroughNV => Requirements {
                extensions: &["SPV_NV_geometry_shader_passthrough"],
                capabilities: &[Capability::GeometryShaderPassthroughNV],
                version: "None",
            },
            Decoration::ViewportRelativeNV => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderViewportMaskNV],
                version: "None",
            },
            Decoration::SecondaryViewportRelativeNV => Requirements {
                extensions: &["SPV_NV_stereo_view_rendering"],
                capabilities: &[Capability::ShaderStereoViewNV],
                version: "None",
            },
            Decoration::PerPrimitiveNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            Decoration::PerViewNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            Decoration::PerTaskNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            Decoration::PerVertexNV => Requirements {
                extensions: &["SPV_NV_fragment_shader_barycentric"],
                capabilities: &[Capability::FragmentBarycentricNV],
                version: "None",
            },
            Decoration::NonUniform => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderNonUniform],
                version: "1.5",
            },
            Decoration::RestrictPointer => Requirements {
                extensions: &[
                    "SPV_EXT_physical_storage_buffer",
                    "SPV_KHR_physical_storage_buffer",
                ],
                capabilities: &[Capability::PhysicalStorageBufferAddresses],
                version: "1.5",
            },
            Decoration::AliasedPointer => Requirements {
                extensions: &[
                    "SPV_EXT_physical_storage_buffer",
                    "SPV_KHR_physical_storage_buffer",
                ],
                capabilities: &[Capability::PhysicalStorageBufferAddresses],
                version: "1.5",
            },
            Decoration::SIMTCallINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::ReferencedIndirectlyINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[Capability::IndirectReferencesINTEL],
                version: "None",
            },
            Decoration::ClobberINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::AsmINTEL],
                version: "None",
            },
            Decoration::SideEffectsINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::AsmINTEL],
                version: "None",
            },
            Decoration::VectorComputeVariableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::FuncParamIOKindINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::VectorComputeFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::StackCallINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::GlobalVariableOffsetINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::CounterBuffer => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            Decoration::UserSemantic => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.4",
            },
            Decoration::UserTypeGOOGLE => Requirements {
                extensions: &["SPV_GOOGLE_user_type"],
                capabilities: &[],
                version: "None",
            },
            Decoration::FunctionRoundingModeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
            Decoration::FunctionDenormModeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
            Decoration::RegisterINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::MemoryINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::NumbanksINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::BankwidthINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::MaxPrivateCopiesINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::SinglepumpINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::DoublepumpINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::MaxReplicatesINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::SimpleDualPortINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::MergeINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::BankBitsINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::ForcePow2DepthINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[Capability::FPGAMemoryAttributesINTEL],
                version: "None",
            },
            Decoration::BurstCoalesceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAMemoryAccessesINTEL],
                version: "None",
            },
            Decoration::CacheSizeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAMemoryAccessesINTEL],
                version: "None",
            },
            Decoration::DontStaticallyCoalesceINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAMemoryAccessesINTEL],
                version: "None",
            },
            Decoration::PrefetchINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAMemoryAccessesINTEL],
                version: "None",
            },
            Decoration::StallEnableINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGAClusterAttributesINTEL],
                version: "None",
            },
            Decoration::FuseLoopsInFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::LoopFuseINTEL],
                version: "None",
            },
            Decoration::BufferLocationINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FPGABufferLocationINTEL],
                version: "None",
            },
            Decoration::IOPipeStorageINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::IOPipesINTEL],
                version: "None",
            },
            Decoration::FunctionFloatingPointModeINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::FunctionFloatControlINTEL],
                version: "None",
            },
            Decoration::SingleElementVectorINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
            Decoration::VectorComputeCallableFunctionINTEL => Requirements {
                extensions: &[],
                capabilities: &[Capability::VectorComputeINTEL],
                version: "None",
            },
        }
    }
}
impl EnumValue for Decoration {
    fn from_str(tok: &str) -> Option<Decoration> {
        match tok {
            "RelaxedPrecision" => Some(Decoration::RelaxedPrecision),
            "SpecId" => Some(Decoration::SpecId),
            "Block" => Some(Decoration::Block),
            "BufferBlock" => Some(Decoration::BufferBlock),
            "RowMajor" => Some(Decoration::RowMajor),
            "ColMajor" => Some(Decoration::ColMajor),
            "ArrayStride" => Some(Decoration::ArrayStride),
            "MatrixStride" => Some(Decoration::MatrixStride),
            "GLSLShared" => Some(Decoration::GLSLShared),
            "GLSLPacked" => Some(Decoration::GLSLPacked),
            "CPacked" => Some(Decoration::CPacked),
            "BuiltIn" => Some(Decoration::BuiltIn),
            "NoPerspective" => Some(Decoration::NoPerspective),
            "Flat" => Some(Decoration::Flat),
            "Patch" => Some(Decoration::Patch),
            "Centroid" => Some(Decoration::Centroid),
            "Sample" => Some(Decoration::Sample),
            "Invariant" => Some(Decoration::Invariant),
            "Restrict" => Some(Decoration::Restrict),
            "Aliased" => Some(Decoration::Aliased),
            "Volatile" => Some(Decoration::Volatile),
            "Constant" => Some(Decoration::Constant),
            "Coherent" => Some(Decoration::Coherent),
            "NonWritable" => Some(Decoration::NonWritable),
            "NonReadable" => Some(Decoration::NonReadable),
            "Uniform" => Some(Decoration::Uniform),
            "UniformId" => Some(Decoration::UniformId),
            "SaturatedConversion" => Some(Decoration::SaturatedConversion),
            "Stream" => Some(Decoration::Stream),
            "Location" => Some(Decoration::Location),
            "Component" => Some(Decoration::Component),
            "Index" => Some(Decoration::Index),
            "Binding" => Some(Decoration::Binding),
            "DescriptorSet" => Some(Decoration::DescriptorSet),
            "Offset" => Some(Decoration::Offset),
            "XfbBuffer" => Some(Decoration::XfbBuffer),
            "XfbStride" => Some(Decoration::XfbStride),
            "FuncParamAttr" => Some(Decoration::FuncParamAttr),
            "FPRoundingMode" => Some(Decoration::FPRoundingMode),
            "FPFastMathMode" => Some(Decoration::FPFastMathMode),
            "LinkageAttributes" => Some(Decoration::LinkageAttributes),
            "NoContraction" => Some(Decoration::NoContraction),
            "InputAttachmentIndex" => Some(Decoration::InputAttachmentIndex),
            "Alignment" => Some(Decoration::Alignment),
            "MaxByteOffset" => Some(Decoration::MaxByteOffset),
            "AlignmentId" => Some(Decoration::AlignmentId),
            "MaxByteOffsetId" => Some(Decoration::MaxByteOffsetId),
            "NoSignedWrap" => Some(Decoration::NoSignedWrap),
            "NoUnsignedWrap" => Some(Decoration::NoUnsignedWrap),
            "ExplicitInterpAMD" => Some(Decoration::ExplicitInterpAMD),
            "OverrideCoverageNV" => Some(Decoration::OverrideCoverageNV),
            "PassthroughNV" => Some(Decoration::PassthroughNV),
            "ViewportRelativeNV" => Some(Decoration::ViewportRelativeNV),
            "SecondaryViewportRelativeNV" => Some(Decoration::SecondaryViewportRelativeNV),
            "PerPrimitiveNV" => Some(Decoration::PerPrimitiveNV),
            "PerViewNV" => Some(Decoration::PerViewNV),
            "PerTaskNV" => Some(Decoration::PerTaskNV),
            "PerVertexNV" => Some(Decoration::PerVertexNV),
            "NonUniform" => Some(Decoration::NonUniform),
            "RestrictPointer" => Some(Decoration::RestrictPointer),
            "AliasedPointer" => Some(Decoration::AliasedPointer),
            "SIMTCallINTEL" => Some(Decoration::SIMTCallINTEL),
            "ReferencedIndirectlyINTEL" => Some(Decoration::ReferencedIndirectlyINTEL),
            "ClobberINTEL" => Some(Decoration::ClobberINTEL),
            "SideEffectsINTEL" => Some(Decoration::SideEffectsINTEL),
            "VectorComputeVariableINTEL" => Some(Decoration::VectorComputeVariableINTEL),
            "FuncParamIOKindINTEL" => Some(Decoration::FuncParamIOKindINTEL),
            "VectorComputeFunctionINTEL" => Some(Decoration::VectorComputeFunctionINTEL),
            "StackCallINTEL" => Some(Decoration::StackCallINTEL),
            "GlobalVariableOffsetINTEL" => Some(Decoration::GlobalVariableOffsetINTEL),
            "CounterBuffer" => Some(Decoration::CounterBuffer),
            "UserSemantic" => Some(Decoration::UserSemantic),
            "UserTypeGOOGLE" => Some(Decoration::UserTypeGOOGLE),
            "FunctionRoundingModeINTEL" => Some(Decoration::FunctionRoundingModeINTEL),
            "FunctionDenormModeINTEL" => Some(Decoration::FunctionDenormModeINTEL),
            "RegisterINTEL" => Some(Decoration::RegisterINTEL),
            "MemoryINTEL" => Some(Decoration::MemoryINTEL),
            "NumbanksINTEL" => Some(Decoration::NumbanksINTEL),
            "BankwidthINTEL" => Some(Decoration::BankwidthINTEL),
            "MaxPrivateCopiesINTEL" => Some(Decoration::MaxPrivateCopiesINTEL),
            "SinglepumpINTEL" => Some(Decoration::SinglepumpINTEL),
            "DoublepumpINTEL" => Some(Decoration::DoublepumpINTEL),
            "MaxReplicatesINTEL" => Some(Decoration::MaxReplicatesINTEL),
            "SimpleDualPortINTEL" => Some(Decoration::SimpleDualPortINTEL),
            "MergeINTEL" => Some(Decoration::MergeINTEL),
            "BankBitsINTEL" => Some(Decoration::BankBitsINTEL),
            "ForcePow2DepthINTEL" => Some(Decoration::ForcePow2DepthINTEL),
            "BurstCoalesceINTEL" => Some(Decoration::BurstCoalesceINTEL),
            "CacheSizeINTEL" => Some(Decoration::CacheSizeINTEL),
            "DontStaticallyCoalesceINTEL" => Some(Decoration::DontStaticallyCoalesceINTEL),
            "PrefetchINTEL" => Some(Decoration::PrefetchINTEL),
            "StallEnableINTEL" => Some(Decoration::StallEnableINTEL),
            "FuseLoopsInFunctionINTEL" => Some(Decoration::FuseLoopsInFunctionINTEL),
            "BufferLocationINTEL" => Some(Decoration::BufferLocationINTEL),
            "IOPipeStorageINTEL" => Some(Decoration::IOPipeStorageINTEL),
            "FunctionFloatingPointModeINTEL" => Some(Decoration::FunctionFloatingPointModeINTEL),
            "SingleElementVectorINTEL" => Some(Decoration::SingleElementVectorINTEL),
            "VectorComputeCallableFunctionINTEL" => {
                Some(Decoration::VectorComputeCallableFunctionINTEL)
            }
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum BuiltIn {
    Position = 0u32,
    PointSize = 1u32,
    ClipDistance = 3u32,
    CullDistance = 4u32,
    VertexId = 5u32,
    InstanceId = 6u32,
    PrimitiveId = 7u32,
    InvocationId = 8u32,
    Layer = 9u32,
    ViewportIndex = 10u32,
    TessLevelOuter = 11u32,
    TessLevelInner = 12u32,
    TessCoord = 13u32,
    PatchVertices = 14u32,
    FragCoord = 15u32,
    PointCoord = 16u32,
    FrontFacing = 17u32,
    SampleId = 18u32,
    SamplePosition = 19u32,
    SampleMask = 20u32,
    FragDepth = 22u32,
    HelperInvocation = 23u32,
    NumWorkgroups = 24u32,
    WorkgroupSize = 25u32,
    WorkgroupId = 26u32,
    LocalInvocationId = 27u32,
    GlobalInvocationId = 28u32,
    LocalInvocationIndex = 29u32,
    WorkDim = 30u32,
    GlobalSize = 31u32,
    EnqueuedWorkgroupSize = 32u32,
    GlobalOffset = 33u32,
    GlobalLinearId = 34u32,
    SubgroupSize = 36u32,
    SubgroupMaxSize = 37u32,
    NumSubgroups = 38u32,
    NumEnqueuedSubgroups = 39u32,
    SubgroupId = 40u32,
    SubgroupLocalInvocationId = 41u32,
    VertexIndex = 42u32,
    InstanceIndex = 43u32,
    SubgroupEqMask = 4416u32,
    SubgroupGeMask = 4417u32,
    SubgroupGtMask = 4418u32,
    SubgroupLeMask = 4419u32,
    SubgroupLtMask = 4420u32,
    BaseVertex = 4424u32,
    BaseInstance = 4425u32,
    DrawIndex = 4426u32,
    PrimitiveShadingRateKHR = 4432u32,
    DeviceIndex = 4438u32,
    ViewIndex = 4440u32,
    ShadingRateKHR = 4444u32,
    BaryCoordNoPerspAMD = 4992u32,
    BaryCoordNoPerspCentroidAMD = 4993u32,
    BaryCoordNoPerspSampleAMD = 4994u32,
    BaryCoordSmoothAMD = 4995u32,
    BaryCoordSmoothCentroidAMD = 4996u32,
    BaryCoordSmoothSampleAMD = 4997u32,
    BaryCoordPullModelAMD = 4998u32,
    FragStencilRefEXT = 5014u32,
    ViewportMaskNV = 5253u32,
    SecondaryPositionNV = 5257u32,
    SecondaryViewportMaskNV = 5258u32,
    PositionPerViewNV = 5261u32,
    ViewportMaskPerViewNV = 5262u32,
    FullyCoveredEXT = 5264u32,
    TaskCountNV = 5274u32,
    PrimitiveCountNV = 5275u32,
    PrimitiveIndicesNV = 5276u32,
    ClipDistancePerViewNV = 5277u32,
    CullDistancePerViewNV = 5278u32,
    LayerPerViewNV = 5279u32,
    MeshViewCountNV = 5280u32,
    MeshViewIndicesNV = 5281u32,
    BaryCoordNV = 5286u32,
    BaryCoordNoPerspNV = 5287u32,
    FragSizeEXT = 5292u32,
    FragInvocationCountEXT = 5293u32,
    LaunchIdNV = 5319u32,
    LaunchSizeNV = 5320u32,
    WorldRayOriginNV = 5321u32,
    WorldRayDirectionNV = 5322u32,
    ObjectRayOriginNV = 5323u32,
    ObjectRayDirectionNV = 5324u32,
    RayTminNV = 5325u32,
    RayTmaxNV = 5326u32,
    InstanceCustomIndexNV = 5327u32,
    ObjectToWorldNV = 5330u32,
    WorldToObjectNV = 5331u32,
    HitTNV = 5332u32,
    HitKindNV = 5333u32,
    IncomingRayFlagsNV = 5351u32,
    RayGeometryIndexKHR = 5352u32,
    WarpsPerSMNV = 5374u32,
    SMCountNV = 5375u32,
    WarpIDNV = 5376u32,
    SMIDNV = 5377u32,
}
impl BuiltIn {
    const SubgroupEqMaskKHR: BuiltIn = BuiltIn::SubgroupEqMask;
    const SubgroupGeMaskKHR: BuiltIn = BuiltIn::SubgroupGeMask;
    const SubgroupGtMaskKHR: BuiltIn = BuiltIn::SubgroupGtMask;
    const SubgroupLeMaskKHR: BuiltIn = BuiltIn::SubgroupLeMask;
    const SubgroupLtMaskKHR: BuiltIn = BuiltIn::SubgroupLtMask;
    const FragmentSizeNV: BuiltIn = BuiltIn::FragSizeEXT;
    const InvocationsPerPixelNV: BuiltIn = BuiltIn::FragInvocationCountEXT;
    const LaunchIdKHR: BuiltIn = BuiltIn::LaunchIdNV;
    const LaunchSizeKHR: BuiltIn = BuiltIn::LaunchSizeNV;
    const WorldRayOriginKHR: BuiltIn = BuiltIn::WorldRayOriginNV;
    const WorldRayDirectionKHR: BuiltIn = BuiltIn::WorldRayDirectionNV;
    const ObjectRayOriginKHR: BuiltIn = BuiltIn::ObjectRayOriginNV;
    const ObjectRayDirectionKHR: BuiltIn = BuiltIn::ObjectRayDirectionNV;
    const RayTminKHR: BuiltIn = BuiltIn::RayTminNV;
    const RayTmaxKHR: BuiltIn = BuiltIn::RayTmaxNV;
    const InstanceCustomIndexKHR: BuiltIn = BuiltIn::InstanceCustomIndexNV;
    const ObjectToWorldKHR: BuiltIn = BuiltIn::ObjectToWorldNV;
    const WorldToObjectKHR: BuiltIn = BuiltIn::WorldToObjectNV;
    const HitKindKHR: BuiltIn = BuiltIn::HitKindNV;
    const IncomingRayFlagsKHR: BuiltIn = BuiltIn::IncomingRayFlagsNV;
}
impl BuiltIn {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            BuiltIn::Position => &[],
            BuiltIn::PointSize => &[],
            BuiltIn::ClipDistance => &[],
            BuiltIn::CullDistance => &[],
            BuiltIn::VertexId => &[],
            BuiltIn::InstanceId => &[],
            BuiltIn::PrimitiveId => &[],
            BuiltIn::InvocationId => &[],
            BuiltIn::Layer => &[],
            BuiltIn::ViewportIndex => &[],
            BuiltIn::TessLevelOuter => &[],
            BuiltIn::TessLevelInner => &[],
            BuiltIn::TessCoord => &[],
            BuiltIn::PatchVertices => &[],
            BuiltIn::FragCoord => &[],
            BuiltIn::PointCoord => &[],
            BuiltIn::FrontFacing => &[],
            BuiltIn::SampleId => &[],
            BuiltIn::SamplePosition => &[],
            BuiltIn::SampleMask => &[],
            BuiltIn::FragDepth => &[],
            BuiltIn::HelperInvocation => &[],
            BuiltIn::NumWorkgroups => &[],
            BuiltIn::WorkgroupSize => &[],
            BuiltIn::WorkgroupId => &[],
            BuiltIn::LocalInvocationId => &[],
            BuiltIn::GlobalInvocationId => &[],
            BuiltIn::LocalInvocationIndex => &[],
            BuiltIn::WorkDim => &[],
            BuiltIn::GlobalSize => &[],
            BuiltIn::EnqueuedWorkgroupSize => &[],
            BuiltIn::GlobalOffset => &[],
            BuiltIn::GlobalLinearId => &[],
            BuiltIn::SubgroupSize => &[],
            BuiltIn::SubgroupMaxSize => &[],
            BuiltIn::NumSubgroups => &[],
            BuiltIn::NumEnqueuedSubgroups => &[],
            BuiltIn::SubgroupId => &[],
            BuiltIn::SubgroupLocalInvocationId => &[],
            BuiltIn::VertexIndex => &[],
            BuiltIn::InstanceIndex => &[],
            BuiltIn::SubgroupEqMask => &[],
            BuiltIn::SubgroupGeMask => &[],
            BuiltIn::SubgroupGtMask => &[],
            BuiltIn::SubgroupLeMask => &[],
            BuiltIn::SubgroupLtMask => &[],
            BuiltIn::BaseVertex => &[],
            BuiltIn::BaseInstance => &[],
            BuiltIn::DrawIndex => &[],
            BuiltIn::PrimitiveShadingRateKHR => &[],
            BuiltIn::DeviceIndex => &[],
            BuiltIn::ViewIndex => &[],
            BuiltIn::ShadingRateKHR => &[],
            BuiltIn::BaryCoordNoPerspAMD => &[],
            BuiltIn::BaryCoordNoPerspCentroidAMD => &[],
            BuiltIn::BaryCoordNoPerspSampleAMD => &[],
            BuiltIn::BaryCoordSmoothAMD => &[],
            BuiltIn::BaryCoordSmoothCentroidAMD => &[],
            BuiltIn::BaryCoordSmoothSampleAMD => &[],
            BuiltIn::BaryCoordPullModelAMD => &[],
            BuiltIn::FragStencilRefEXT => &[],
            BuiltIn::ViewportMaskNV => &[],
            BuiltIn::SecondaryPositionNV => &[],
            BuiltIn::SecondaryViewportMaskNV => &[],
            BuiltIn::PositionPerViewNV => &[],
            BuiltIn::ViewportMaskPerViewNV => &[],
            BuiltIn::FullyCoveredEXT => &[],
            BuiltIn::TaskCountNV => &[],
            BuiltIn::PrimitiveCountNV => &[],
            BuiltIn::PrimitiveIndicesNV => &[],
            BuiltIn::ClipDistancePerViewNV => &[],
            BuiltIn::CullDistancePerViewNV => &[],
            BuiltIn::LayerPerViewNV => &[],
            BuiltIn::MeshViewCountNV => &[],
            BuiltIn::MeshViewIndicesNV => &[],
            BuiltIn::BaryCoordNV => &[],
            BuiltIn::BaryCoordNoPerspNV => &[],
            BuiltIn::FragSizeEXT => &[],
            BuiltIn::FragInvocationCountEXT => &[],
            BuiltIn::LaunchIdNV => &[],
            BuiltIn::LaunchSizeNV => &[],
            BuiltIn::WorldRayOriginNV => &[],
            BuiltIn::WorldRayDirectionNV => &[],
            BuiltIn::ObjectRayOriginNV => &[],
            BuiltIn::ObjectRayDirectionNV => &[],
            BuiltIn::RayTminNV => &[],
            BuiltIn::RayTmaxNV => &[],
            BuiltIn::InstanceCustomIndexNV => &[],
            BuiltIn::ObjectToWorldNV => &[],
            BuiltIn::WorldToObjectNV => &[],
            BuiltIn::HitTNV => &[],
            BuiltIn::HitKindNV => &[],
            BuiltIn::IncomingRayFlagsNV => &[],
            BuiltIn::RayGeometryIndexKHR => &[],
            BuiltIn::WarpsPerSMNV => &[],
            BuiltIn::SMCountNV => &[],
            BuiltIn::WarpIDNV => &[],
            BuiltIn::SMIDNV => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            BuiltIn::Position => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::PointSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::ClipDistance => Requirements {
                extensions: &[],
                capabilities: &[Capability::ClipDistance],
                version: "",
            },
            BuiltIn::CullDistance => Requirements {
                extensions: &[],
                capabilities: &[Capability::CullDistance],
                version: "",
            },
            BuiltIn::VertexId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::InstanceId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::PrimitiveId => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Geometry,
                    Capability::Tessellation,
                    Capability::RayTracingNV,
                    Capability::RayTracingKHR,
                    Capability::MeshShadingNV,
                ],
                version: "",
            },
            BuiltIn::InvocationId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry, Capability::Tessellation],
                version: "",
            },
            BuiltIn::Layer => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Geometry,
                    Capability::ShaderLayer,
                    Capability::ShaderViewportIndexLayerEXT,
                    Capability::MeshShadingNV,
                ],
                version: "",
            },
            BuiltIn::ViewportIndex => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::MultiViewport,
                    Capability::ShaderViewportIndex,
                    Capability::ShaderViewportIndexLayerEXT,
                    Capability::MeshShadingNV,
                ],
                version: "",
            },
            BuiltIn::TessLevelOuter => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            BuiltIn::TessLevelInner => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            BuiltIn::TessCoord => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            BuiltIn::PatchVertices => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            BuiltIn::FragCoord => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::PointCoord => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::FrontFacing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::SampleId => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampleRateShading],
                version: "",
            },
            BuiltIn::SamplePosition => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampleRateShading],
                version: "",
            },
            BuiltIn::SampleMask => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::FragDepth => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::HelperInvocation => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::NumWorkgroups => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::WorkgroupSize => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::WorkgroupId => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::LocalInvocationId => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::GlobalInvocationId => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::LocalInvocationIndex => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            BuiltIn::WorkDim => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::GlobalSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::EnqueuedWorkgroupSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::GlobalOffset => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::GlobalLinearId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::SubgroupSize => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Kernel,
                    Capability::GroupNonUniform,
                    Capability::SubgroupBallotKHR,
                ],
                version: "",
            },
            BuiltIn::SubgroupMaxSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::NumSubgroups => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::GroupNonUniform],
                version: "",
            },
            BuiltIn::NumEnqueuedSubgroups => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            BuiltIn::SubgroupId => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel, Capability::GroupNonUniform],
                version: "",
            },
            BuiltIn::SubgroupLocalInvocationId => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Kernel,
                    Capability::GroupNonUniform,
                    Capability::SubgroupBallotKHR,
                ],
                version: "",
            },
            BuiltIn::VertexIndex => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::InstanceIndex => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            BuiltIn::SubgroupEqMask => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupBallotKHR,
                    Capability::GroupNonUniformBallot,
                ],
                version: "1.3",
            },
            BuiltIn::SubgroupGeMask => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupBallotKHR,
                    Capability::GroupNonUniformBallot,
                ],
                version: "1.3",
            },
            BuiltIn::SubgroupGtMask => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupBallotKHR,
                    Capability::GroupNonUniformBallot,
                ],
                version: "1.3",
            },
            BuiltIn::SubgroupLeMask => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupBallotKHR,
                    Capability::GroupNonUniformBallot,
                ],
                version: "1.3",
            },
            BuiltIn::SubgroupLtMask => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::SubgroupBallotKHR,
                    Capability::GroupNonUniformBallot,
                ],
                version: "1.3",
            },
            BuiltIn::BaseVertex => Requirements {
                extensions: &["SPV_KHR_shader_draw_parameters"],
                capabilities: &[Capability::DrawParameters],
                version: "1.3",
            },
            BuiltIn::BaseInstance => Requirements {
                extensions: &["SPV_KHR_shader_draw_parameters"],
                capabilities: &[Capability::DrawParameters],
                version: "1.3",
            },
            BuiltIn::DrawIndex => Requirements {
                extensions: &["SPV_KHR_shader_draw_parameters", "SPV_NV_mesh_shader"],
                capabilities: &[Capability::DrawParameters, Capability::MeshShadingNV],
                version: "1.3",
            },
            BuiltIn::PrimitiveShadingRateKHR => Requirements {
                extensions: &["SPV_KHR_fragment_shading_rate"],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
            BuiltIn::DeviceIndex => Requirements {
                extensions: &["SPV_KHR_device_group"],
                capabilities: &[Capability::DeviceGroup],
                version: "1.3",
            },
            BuiltIn::ViewIndex => Requirements {
                extensions: &["SPV_KHR_multiview"],
                capabilities: &[Capability::MultiView],
                version: "1.3",
            },
            BuiltIn::ShadingRateKHR => Requirements {
                extensions: &["SPV_KHR_fragment_shading_rate"],
                capabilities: &[Capability::FragmentShadingRateKHR],
                version: "None",
            },
            BuiltIn::BaryCoordNoPerspAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordNoPerspCentroidAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordNoPerspSampleAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordSmoothAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordSmoothCentroidAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordSmoothSampleAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::BaryCoordPullModelAMD => Requirements {
                extensions: &["SPV_AMD_shader_explicit_vertex_parameter"],
                capabilities: &[],
                version: "None",
            },
            BuiltIn::FragStencilRefEXT => Requirements {
                extensions: &["SPV_EXT_shader_stencil_export"],
                capabilities: &[Capability::StencilExportEXT],
                version: "None",
            },
            BuiltIn::ViewportMaskNV => Requirements {
                extensions: &["SPV_NV_viewport_array2", "SPV_NV_mesh_shader"],
                capabilities: &[Capability::ShaderViewportMaskNV, Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::SecondaryPositionNV => Requirements {
                extensions: &["SPV_NV_stereo_view_rendering"],
                capabilities: &[Capability::ShaderStereoViewNV],
                version: "None",
            },
            BuiltIn::SecondaryViewportMaskNV => Requirements {
                extensions: &["SPV_NV_stereo_view_rendering"],
                capabilities: &[Capability::ShaderStereoViewNV],
                version: "None",
            },
            BuiltIn::PositionPerViewNV => Requirements {
                extensions: &[
                    "SPV_NVX_multiview_per_view_attributes",
                    "SPV_NV_mesh_shader",
                ],
                capabilities: &[Capability::PerViewAttributesNV, Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::ViewportMaskPerViewNV => Requirements {
                extensions: &[
                    "SPV_NVX_multiview_per_view_attributes",
                    "SPV_NV_mesh_shader",
                ],
                capabilities: &[Capability::PerViewAttributesNV, Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::FullyCoveredEXT => Requirements {
                extensions: &["SPV_EXT_fragment_fully_covered"],
                capabilities: &[Capability::FragmentFullyCoveredEXT],
                version: "None",
            },
            BuiltIn::TaskCountNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::PrimitiveCountNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::PrimitiveIndicesNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::ClipDistancePerViewNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::CullDistancePerViewNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::LayerPerViewNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::MeshViewCountNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::MeshViewIndicesNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::MeshShadingNV],
                version: "None",
            },
            BuiltIn::BaryCoordNV => Requirements {
                extensions: &["SPV_NV_fragment_shader_barycentric"],
                capabilities: &[Capability::FragmentBarycentricNV],
                version: "None",
            },
            BuiltIn::BaryCoordNoPerspNV => Requirements {
                extensions: &["SPV_NV_fragment_shader_barycentric"],
                capabilities: &[Capability::FragmentBarycentricNV],
                version: "None",
            },
            BuiltIn::FragSizeEXT => Requirements {
                extensions: &["SPV_EXT_fragment_invocation_density", "SPV_NV_shading_rate"],
                capabilities: &[Capability::FragmentDensityEXT, Capability::ShadingRateNV],
                version: "None",
            },
            BuiltIn::FragInvocationCountEXT => Requirements {
                extensions: &["SPV_EXT_fragment_invocation_density", "SPV_NV_shading_rate"],
                capabilities: &[Capability::FragmentDensityEXT, Capability::ShadingRateNV],
                version: "None",
            },
            BuiltIn::LaunchIdNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::LaunchSizeNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::WorldRayOriginNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::WorldRayDirectionNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::ObjectRayOriginNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::ObjectRayDirectionNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::RayTminNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::RayTmaxNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::InstanceCustomIndexNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::ObjectToWorldNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::WorldToObjectNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::HitTNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::RayTracingNV],
                version: "None",
            },
            BuiltIn::HitKindNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::IncomingRayFlagsNV => Requirements {
                extensions: &["SPV_NV_ray_tracing", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingNV, Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::RayGeometryIndexKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
            BuiltIn::WarpsPerSMNV => Requirements {
                extensions: &["SPV_NV_shader_sm_builtins"],
                capabilities: &[Capability::ShaderSMBuiltinsNV],
                version: "None",
            },
            BuiltIn::SMCountNV => Requirements {
                extensions: &["SPV_NV_shader_sm_builtins"],
                capabilities: &[Capability::ShaderSMBuiltinsNV],
                version: "None",
            },
            BuiltIn::WarpIDNV => Requirements {
                extensions: &["SPV_NV_shader_sm_builtins"],
                capabilities: &[Capability::ShaderSMBuiltinsNV],
                version: "None",
            },
            BuiltIn::SMIDNV => Requirements {
                extensions: &["SPV_NV_shader_sm_builtins"],
                capabilities: &[Capability::ShaderSMBuiltinsNV],
                version: "None",
            },
        }
    }
}
impl EnumValue for BuiltIn {
    fn from_str(tok: &str) -> Option<BuiltIn> {
        match tok {
            "Position" => Some(BuiltIn::Position),
            "PointSize" => Some(BuiltIn::PointSize),
            "ClipDistance" => Some(BuiltIn::ClipDistance),
            "CullDistance" => Some(BuiltIn::CullDistance),
            "VertexId" => Some(BuiltIn::VertexId),
            "InstanceId" => Some(BuiltIn::InstanceId),
            "PrimitiveId" => Some(BuiltIn::PrimitiveId),
            "InvocationId" => Some(BuiltIn::InvocationId),
            "Layer" => Some(BuiltIn::Layer),
            "ViewportIndex" => Some(BuiltIn::ViewportIndex),
            "TessLevelOuter" => Some(BuiltIn::TessLevelOuter),
            "TessLevelInner" => Some(BuiltIn::TessLevelInner),
            "TessCoord" => Some(BuiltIn::TessCoord),
            "PatchVertices" => Some(BuiltIn::PatchVertices),
            "FragCoord" => Some(BuiltIn::FragCoord),
            "PointCoord" => Some(BuiltIn::PointCoord),
            "FrontFacing" => Some(BuiltIn::FrontFacing),
            "SampleId" => Some(BuiltIn::SampleId),
            "SamplePosition" => Some(BuiltIn::SamplePosition),
            "SampleMask" => Some(BuiltIn::SampleMask),
            "FragDepth" => Some(BuiltIn::FragDepth),
            "HelperInvocation" => Some(BuiltIn::HelperInvocation),
            "NumWorkgroups" => Some(BuiltIn::NumWorkgroups),
            "WorkgroupSize" => Some(BuiltIn::WorkgroupSize),
            "WorkgroupId" => Some(BuiltIn::WorkgroupId),
            "LocalInvocationId" => Some(BuiltIn::LocalInvocationId),
            "GlobalInvocationId" => Some(BuiltIn::GlobalInvocationId),
            "LocalInvocationIndex" => Some(BuiltIn::LocalInvocationIndex),
            "WorkDim" => Some(BuiltIn::WorkDim),
            "GlobalSize" => Some(BuiltIn::GlobalSize),
            "EnqueuedWorkgroupSize" => Some(BuiltIn::EnqueuedWorkgroupSize),
            "GlobalOffset" => Some(BuiltIn::GlobalOffset),
            "GlobalLinearId" => Some(BuiltIn::GlobalLinearId),
            "SubgroupSize" => Some(BuiltIn::SubgroupSize),
            "SubgroupMaxSize" => Some(BuiltIn::SubgroupMaxSize),
            "NumSubgroups" => Some(BuiltIn::NumSubgroups),
            "NumEnqueuedSubgroups" => Some(BuiltIn::NumEnqueuedSubgroups),
            "SubgroupId" => Some(BuiltIn::SubgroupId),
            "SubgroupLocalInvocationId" => Some(BuiltIn::SubgroupLocalInvocationId),
            "VertexIndex" => Some(BuiltIn::VertexIndex),
            "InstanceIndex" => Some(BuiltIn::InstanceIndex),
            "SubgroupEqMask" => Some(BuiltIn::SubgroupEqMask),
            "SubgroupGeMask" => Some(BuiltIn::SubgroupGeMask),
            "SubgroupGtMask" => Some(BuiltIn::SubgroupGtMask),
            "SubgroupLeMask" => Some(BuiltIn::SubgroupLeMask),
            "SubgroupLtMask" => Some(BuiltIn::SubgroupLtMask),
            "BaseVertex" => Some(BuiltIn::BaseVertex),
            "BaseInstance" => Some(BuiltIn::BaseInstance),
            "DrawIndex" => Some(BuiltIn::DrawIndex),
            "PrimitiveShadingRateKHR" => Some(BuiltIn::PrimitiveShadingRateKHR),
            "DeviceIndex" => Some(BuiltIn::DeviceIndex),
            "ViewIndex" => Some(BuiltIn::ViewIndex),
            "ShadingRateKHR" => Some(BuiltIn::ShadingRateKHR),
            "BaryCoordNoPerspAMD" => Some(BuiltIn::BaryCoordNoPerspAMD),
            "BaryCoordNoPerspCentroidAMD" => Some(BuiltIn::BaryCoordNoPerspCentroidAMD),
            "BaryCoordNoPerspSampleAMD" => Some(BuiltIn::BaryCoordNoPerspSampleAMD),
            "BaryCoordSmoothAMD" => Some(BuiltIn::BaryCoordSmoothAMD),
            "BaryCoordSmoothCentroidAMD" => Some(BuiltIn::BaryCoordSmoothCentroidAMD),
            "BaryCoordSmoothSampleAMD" => Some(BuiltIn::BaryCoordSmoothSampleAMD),
            "BaryCoordPullModelAMD" => Some(BuiltIn::BaryCoordPullModelAMD),
            "FragStencilRefEXT" => Some(BuiltIn::FragStencilRefEXT),
            "ViewportMaskNV" => Some(BuiltIn::ViewportMaskNV),
            "SecondaryPositionNV" => Some(BuiltIn::SecondaryPositionNV),
            "SecondaryViewportMaskNV" => Some(BuiltIn::SecondaryViewportMaskNV),
            "PositionPerViewNV" => Some(BuiltIn::PositionPerViewNV),
            "ViewportMaskPerViewNV" => Some(BuiltIn::ViewportMaskPerViewNV),
            "FullyCoveredEXT" => Some(BuiltIn::FullyCoveredEXT),
            "TaskCountNV" => Some(BuiltIn::TaskCountNV),
            "PrimitiveCountNV" => Some(BuiltIn::PrimitiveCountNV),
            "PrimitiveIndicesNV" => Some(BuiltIn::PrimitiveIndicesNV),
            "ClipDistancePerViewNV" => Some(BuiltIn::ClipDistancePerViewNV),
            "CullDistancePerViewNV" => Some(BuiltIn::CullDistancePerViewNV),
            "LayerPerViewNV" => Some(BuiltIn::LayerPerViewNV),
            "MeshViewCountNV" => Some(BuiltIn::MeshViewCountNV),
            "MeshViewIndicesNV" => Some(BuiltIn::MeshViewIndicesNV),
            "BaryCoordNV" => Some(BuiltIn::BaryCoordNV),
            "BaryCoordNoPerspNV" => Some(BuiltIn::BaryCoordNoPerspNV),
            "FragSizeEXT" => Some(BuiltIn::FragSizeEXT),
            "FragInvocationCountEXT" => Some(BuiltIn::FragInvocationCountEXT),
            "LaunchIdNV" => Some(BuiltIn::LaunchIdNV),
            "LaunchSizeNV" => Some(BuiltIn::LaunchSizeNV),
            "WorldRayOriginNV" => Some(BuiltIn::WorldRayOriginNV),
            "WorldRayDirectionNV" => Some(BuiltIn::WorldRayDirectionNV),
            "ObjectRayOriginNV" => Some(BuiltIn::ObjectRayOriginNV),
            "ObjectRayDirectionNV" => Some(BuiltIn::ObjectRayDirectionNV),
            "RayTminNV" => Some(BuiltIn::RayTminNV),
            "RayTmaxNV" => Some(BuiltIn::RayTmaxNV),
            "InstanceCustomIndexNV" => Some(BuiltIn::InstanceCustomIndexNV),
            "ObjectToWorldNV" => Some(BuiltIn::ObjectToWorldNV),
            "WorldToObjectNV" => Some(BuiltIn::WorldToObjectNV),
            "HitTNV" => Some(BuiltIn::HitTNV),
            "HitKindNV" => Some(BuiltIn::HitKindNV),
            "IncomingRayFlagsNV" => Some(BuiltIn::IncomingRayFlagsNV),
            "RayGeometryIndexKHR" => Some(BuiltIn::RayGeometryIndexKHR),
            "WarpsPerSMNV" => Some(BuiltIn::WarpsPerSMNV),
            "SMCountNV" => Some(BuiltIn::SMCountNV),
            "WarpIDNV" => Some(BuiltIn::WarpIDNV),
            "SMIDNV" => Some(BuiltIn::SMIDNV),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum Scope {
    CrossDevice = 0u32,
    Device = 1u32,
    Workgroup = 2u32,
    Subgroup = 3u32,
    Invocation = 4u32,
    QueueFamily = 5u32,
    ShaderCallKHR = 6u32,
}
impl Scope {
    const QueueFamilyKHR: Scope = Scope::QueueFamily;
}
impl Scope {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            Scope::CrossDevice => &[],
            Scope::Device => &[],
            Scope::Workgroup => &[],
            Scope::Subgroup => &[],
            Scope::Invocation => &[],
            Scope::QueueFamily => &[],
            Scope::ShaderCallKHR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            Scope::CrossDevice => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Scope::Device => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Scope::Workgroup => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Scope::Subgroup => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Scope::Invocation => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Scope::QueueFamily => Requirements {
                extensions: &[],
                capabilities: &[Capability::VulkanMemoryModel],
                version: "1.5",
            },
            Scope::ShaderCallKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayTracingKHR],
                version: "None",
            },
        }
    }
}
impl EnumValue for Scope {
    fn from_str(tok: &str) -> Option<Scope> {
        match tok {
            "CrossDevice" => Some(Scope::CrossDevice),
            "Device" => Some(Scope::Device),
            "Workgroup" => Some(Scope::Workgroup),
            "Subgroup" => Some(Scope::Subgroup),
            "Invocation" => Some(Scope::Invocation),
            "QueueFamily" => Some(Scope::QueueFamily),
            "ShaderCallKHR" => Some(Scope::ShaderCallKHR),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum GroupOperation {
    Reduce = 0u32,
    InclusiveScan = 1u32,
    ExclusiveScan = 2u32,
    ClusteredReduce = 3u32,
    PartitionedReduceNV = 6u32,
    PartitionedInclusiveScanNV = 7u32,
    PartitionedExclusiveScanNV = 8u32,
}
impl GroupOperation {}
impl GroupOperation {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            GroupOperation::Reduce => &[],
            GroupOperation::InclusiveScan => &[],
            GroupOperation::ExclusiveScan => &[],
            GroupOperation::ClusteredReduce => &[],
            GroupOperation::PartitionedReduceNV => &[],
            GroupOperation::PartitionedInclusiveScanNV => &[],
            GroupOperation::PartitionedExclusiveScanNV => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            GroupOperation::Reduce => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Kernel,
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformBallot,
                ],
                version: "",
            },
            GroupOperation::InclusiveScan => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Kernel,
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformBallot,
                ],
                version: "",
            },
            GroupOperation::ExclusiveScan => Requirements {
                extensions: &[],
                capabilities: &[
                    Capability::Kernel,
                    Capability::GroupNonUniformArithmetic,
                    Capability::GroupNonUniformBallot,
                ],
                version: "",
            },
            GroupOperation::ClusteredReduce => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniformClustered],
                version: "1.3",
            },
            GroupOperation::PartitionedReduceNV => Requirements {
                extensions: &["SPV_NV_shader_subgroup_partitioned"],
                capabilities: &[Capability::GroupNonUniformPartitionedNV],
                version: "None",
            },
            GroupOperation::PartitionedInclusiveScanNV => Requirements {
                extensions: &["SPV_NV_shader_subgroup_partitioned"],
                capabilities: &[Capability::GroupNonUniformPartitionedNV],
                version: "None",
            },
            GroupOperation::PartitionedExclusiveScanNV => Requirements {
                extensions: &["SPV_NV_shader_subgroup_partitioned"],
                capabilities: &[Capability::GroupNonUniformPartitionedNV],
                version: "None",
            },
        }
    }
}
impl EnumValue for GroupOperation {
    fn from_str(tok: &str) -> Option<GroupOperation> {
        match tok {
            "Reduce" => Some(GroupOperation::Reduce),
            "InclusiveScan" => Some(GroupOperation::InclusiveScan),
            "ExclusiveScan" => Some(GroupOperation::ExclusiveScan),
            "ClusteredReduce" => Some(GroupOperation::ClusteredReduce),
            "PartitionedReduceNV" => Some(GroupOperation::PartitionedReduceNV),
            "PartitionedInclusiveScanNV" => Some(GroupOperation::PartitionedInclusiveScanNV),
            "PartitionedExclusiveScanNV" => Some(GroupOperation::PartitionedExclusiveScanNV),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum KernelEnqueueFlags {
    NoWait = 0u32,
    WaitKernel = 1u32,
    WaitWorkGroup = 2u32,
}
impl KernelEnqueueFlags {}
impl KernelEnqueueFlags {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            KernelEnqueueFlags::NoWait => &[],
            KernelEnqueueFlags::WaitKernel => &[],
            KernelEnqueueFlags::WaitWorkGroup => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            KernelEnqueueFlags::NoWait => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            KernelEnqueueFlags::WaitKernel => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            KernelEnqueueFlags::WaitWorkGroup => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
        }
    }
}
impl EnumValue for KernelEnqueueFlags {
    fn from_str(tok: &str) -> Option<KernelEnqueueFlags> {
        match tok {
            "NoWait" => Some(KernelEnqueueFlags::NoWait),
            "WaitKernel" => Some(KernelEnqueueFlags::WaitKernel),
            "WaitWorkGroup" => Some(KernelEnqueueFlags::WaitWorkGroup),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum Capability {
    Matrix = 0u32,
    Shader = 1u32,
    Geometry = 2u32,
    Tessellation = 3u32,
    Addresses = 4u32,
    Linkage = 5u32,
    Kernel = 6u32,
    Vector16 = 7u32,
    Float16Buffer = 8u32,
    Float16 = 9u32,
    Float64 = 10u32,
    Int64 = 11u32,
    Int64Atomics = 12u32,
    ImageBasic = 13u32,
    ImageReadWrite = 14u32,
    ImageMipmap = 15u32,
    Pipes = 17u32,
    Groups = 18u32,
    DeviceEnqueue = 19u32,
    LiteralSampler = 20u32,
    AtomicStorage = 21u32,
    Int16 = 22u32,
    TessellationPointSize = 23u32,
    GeometryPointSize = 24u32,
    ImageGatherExtended = 25u32,
    StorageImageMultisample = 27u32,
    UniformBufferArrayDynamicIndexing = 28u32,
    SampledImageArrayDynamicIndexing = 29u32,
    StorageBufferArrayDynamicIndexing = 30u32,
    StorageImageArrayDynamicIndexing = 31u32,
    ClipDistance = 32u32,
    CullDistance = 33u32,
    ImageCubeArray = 34u32,
    SampleRateShading = 35u32,
    ImageRect = 36u32,
    SampledRect = 37u32,
    GenericPointer = 38u32,
    Int8 = 39u32,
    InputAttachment = 40u32,
    SparseResidency = 41u32,
    MinLod = 42u32,
    Sampled1D = 43u32,
    Image1D = 44u32,
    SampledCubeArray = 45u32,
    SampledBuffer = 46u32,
    ImageBuffer = 47u32,
    ImageMSArray = 48u32,
    StorageImageExtendedFormats = 49u32,
    ImageQuery = 50u32,
    DerivativeControl = 51u32,
    InterpolationFunction = 52u32,
    TransformFeedback = 53u32,
    GeometryStreams = 54u32,
    StorageImageReadWithoutFormat = 55u32,
    StorageImageWriteWithoutFormat = 56u32,
    MultiViewport = 57u32,
    SubgroupDispatch = 58u32,
    NamedBarrier = 59u32,
    PipeStorage = 60u32,
    GroupNonUniform = 61u32,
    GroupNonUniformVote = 62u32,
    GroupNonUniformArithmetic = 63u32,
    GroupNonUniformBallot = 64u32,
    GroupNonUniformShuffle = 65u32,
    GroupNonUniformShuffleRelative = 66u32,
    GroupNonUniformClustered = 67u32,
    GroupNonUniformQuad = 68u32,
    ShaderLayer = 69u32,
    ShaderViewportIndex = 70u32,
    FragmentShadingRateKHR = 4422u32,
    SubgroupBallotKHR = 4423u32,
    DrawParameters = 4427u32,
    WorkgroupMemoryExplicitLayoutKHR = 4428u32,
    WorkgroupMemoryExplicitLayout8BitAccessKHR = 4429u32,
    WorkgroupMemoryExplicitLayout16BitAccessKHR = 4430u32,
    SubgroupVoteKHR = 4431u32,
    StorageBuffer16BitAccess = 4433u32,
    UniformAndStorageBuffer16BitAccess = 4434u32,
    StoragePushConstant16 = 4435u32,
    StorageInputOutput16 = 4436u32,
    DeviceGroup = 4437u32,
    MultiView = 4439u32,
    VariablePointersStorageBuffer = 4441u32,
    VariablePointers = 4442u32,
    AtomicStorageOps = 4445u32,
    SampleMaskPostDepthCoverage = 4447u32,
    StorageBuffer8BitAccess = 4448u32,
    UniformAndStorageBuffer8BitAccess = 4449u32,
    StoragePushConstant8 = 4450u32,
    DenormPreserve = 4464u32,
    DenormFlushToZero = 4465u32,
    SignedZeroInfNanPreserve = 4466u32,
    RoundingModeRTE = 4467u32,
    RoundingModeRTZ = 4468u32,
    RayQueryProvisionalKHR = 4471u32,
    RayQueryKHR = 4472u32,
    RayTraversalPrimitiveCullingKHR = 4478u32,
    RayTracingKHR = 4479u32,
    Float16ImageAMD = 5008u32,
    ImageGatherBiasLodAMD = 5009u32,
    FragmentMaskAMD = 5010u32,
    StencilExportEXT = 5013u32,
    ImageReadWriteLodAMD = 5015u32,
    Int64ImageEXT = 5016u32,
    ShaderClockKHR = 5055u32,
    SampleMaskOverrideCoverageNV = 5249u32,
    GeometryShaderPassthroughNV = 5251u32,
    ShaderViewportIndexLayerEXT = 5254u32,
    ShaderViewportMaskNV = 5255u32,
    ShaderStereoViewNV = 5259u32,
    PerViewAttributesNV = 5260u32,
    FragmentFullyCoveredEXT = 5265u32,
    MeshShadingNV = 5266u32,
    ImageFootprintNV = 5282u32,
    FragmentBarycentricNV = 5284u32,
    ComputeDerivativeGroupQuadsNV = 5288u32,
    FragmentDensityEXT = 5291u32,
    GroupNonUniformPartitionedNV = 5297u32,
    ShaderNonUniform = 5301u32,
    RuntimeDescriptorArray = 5302u32,
    InputAttachmentArrayDynamicIndexing = 5303u32,
    UniformTexelBufferArrayDynamicIndexing = 5304u32,
    StorageTexelBufferArrayDynamicIndexing = 5305u32,
    UniformBufferArrayNonUniformIndexing = 5306u32,
    SampledImageArrayNonUniformIndexing = 5307u32,
    StorageBufferArrayNonUniformIndexing = 5308u32,
    StorageImageArrayNonUniformIndexing = 5309u32,
    InputAttachmentArrayNonUniformIndexing = 5310u32,
    UniformTexelBufferArrayNonUniformIndexing = 5311u32,
    StorageTexelBufferArrayNonUniformIndexing = 5312u32,
    RayTracingNV = 5340u32,
    VulkanMemoryModel = 5345u32,
    VulkanMemoryModelDeviceScope = 5346u32,
    PhysicalStorageBufferAddresses = 5347u32,
    ComputeDerivativeGroupLinearNV = 5350u32,
    RayTracingProvisionalKHR = 5353u32,
    CooperativeMatrixNV = 5357u32,
    FragmentShaderSampleInterlockEXT = 5363u32,
    FragmentShaderShadingRateInterlockEXT = 5372u32,
    ShaderSMBuiltinsNV = 5373u32,
    FragmentShaderPixelInterlockEXT = 5378u32,
    DemoteToHelperInvocationEXT = 5379u32,
    SubgroupShuffleINTEL = 5568u32,
    SubgroupBufferBlockIOINTEL = 5569u32,
    SubgroupImageBlockIOINTEL = 5570u32,
    SubgroupImageMediaBlockIOINTEL = 5579u32,
    RoundToInfinityINTEL = 5582u32,
    FloatingPointModeINTEL = 5583u32,
    IntegerFunctions2INTEL = 5584u32,
    FunctionPointersINTEL = 5603u32,
    IndirectReferencesINTEL = 5604u32,
    AsmINTEL = 5606u32,
    AtomicFloat32MinMaxEXT = 5612u32,
    AtomicFloat64MinMaxEXT = 5613u32,
    AtomicFloat16MinMaxEXT = 5616u32,
    VectorComputeINTEL = 5617u32,
    VectorAnyINTEL = 5619u32,
    SubgroupAvcMotionEstimationINTEL = 5696u32,
    SubgroupAvcMotionEstimationIntraINTEL = 5697u32,
    SubgroupAvcMotionEstimationChromaINTEL = 5698u32,
    VariableLengthArrayINTEL = 5817u32,
    FunctionFloatControlINTEL = 5821u32,
    FPGAMemoryAttributesINTEL = 5824u32,
    FPFastMathModeINTEL = 5837u32,
    ArbitraryPrecisionIntegersINTEL = 5844u32,
    UnstructuredLoopControlsINTEL = 5886u32,
    FPGALoopControlsINTEL = 5888u32,
    KernelAttributesINTEL = 5892u32,
    FPGAKernelAttributesINTEL = 5897u32,
    FPGAMemoryAccessesINTEL = 5898u32,
    FPGAClusterAttributesINTEL = 5904u32,
    LoopFuseINTEL = 5906u32,
    FPGABufferLocationINTEL = 5920u32,
    USMStorageClassesINTEL = 5935u32,
    IOPipesINTEL = 5943u32,
    BlockingPipesINTEL = 5945u32,
    FPGARegINTEL = 5948u32,
    AtomicFloat32AddEXT = 6033u32,
    AtomicFloat64AddEXT = 6034u32,
    LongConstantCompositeINTEL = 6089u32,
}
impl Capability {
    const StorageUniformBufferBlock16: Capability = Capability::StorageBuffer16BitAccess;
    const StorageUniform16: Capability = Capability::UniformAndStorageBuffer16BitAccess;
    const ShaderViewportIndexLayerNV: Capability = Capability::ShaderViewportIndexLayerEXT;
    const ShadingRateNV: Capability = Capability::FragmentDensityEXT;
    const ShaderNonUniformEXT: Capability = Capability::ShaderNonUniform;
    const RuntimeDescriptorArrayEXT: Capability = Capability::RuntimeDescriptorArray;
    const InputAttachmentArrayDynamicIndexingEXT: Capability =
        Capability::InputAttachmentArrayDynamicIndexing;
    const UniformTexelBufferArrayDynamicIndexingEXT: Capability =
        Capability::UniformTexelBufferArrayDynamicIndexing;
    const StorageTexelBufferArrayDynamicIndexingEXT: Capability =
        Capability::StorageTexelBufferArrayDynamicIndexing;
    const UniformBufferArrayNonUniformIndexingEXT: Capability =
        Capability::UniformBufferArrayNonUniformIndexing;
    const SampledImageArrayNonUniformIndexingEXT: Capability =
        Capability::SampledImageArrayNonUniformIndexing;
    const StorageBufferArrayNonUniformIndexingEXT: Capability =
        Capability::StorageBufferArrayNonUniformIndexing;
    const StorageImageArrayNonUniformIndexingEXT: Capability =
        Capability::StorageImageArrayNonUniformIndexing;
    const InputAttachmentArrayNonUniformIndexingEXT: Capability =
        Capability::InputAttachmentArrayNonUniformIndexing;
    const UniformTexelBufferArrayNonUniformIndexingEXT: Capability =
        Capability::UniformTexelBufferArrayNonUniformIndexing;
    const StorageTexelBufferArrayNonUniformIndexingEXT: Capability =
        Capability::StorageTexelBufferArrayNonUniformIndexing;
    const VulkanMemoryModelKHR: Capability = Capability::VulkanMemoryModel;
    const VulkanMemoryModelDeviceScopeKHR: Capability = Capability::VulkanMemoryModelDeviceScope;
    const PhysicalStorageBufferAddressesEXT: Capability =
        Capability::PhysicalStorageBufferAddresses;
}
impl Capability {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            Capability::Matrix => &[],
            Capability::Shader => &[],
            Capability::Geometry => &[],
            Capability::Tessellation => &[],
            Capability::Addresses => &[],
            Capability::Linkage => &[],
            Capability::Kernel => &[],
            Capability::Vector16 => &[],
            Capability::Float16Buffer => &[],
            Capability::Float16 => &[],
            Capability::Float64 => &[],
            Capability::Int64 => &[],
            Capability::Int64Atomics => &[],
            Capability::ImageBasic => &[],
            Capability::ImageReadWrite => &[],
            Capability::ImageMipmap => &[],
            Capability::Pipes => &[],
            Capability::Groups => &[],
            Capability::DeviceEnqueue => &[],
            Capability::LiteralSampler => &[],
            Capability::AtomicStorage => &[],
            Capability::Int16 => &[],
            Capability::TessellationPointSize => &[],
            Capability::GeometryPointSize => &[],
            Capability::ImageGatherExtended => &[],
            Capability::StorageImageMultisample => &[],
            Capability::UniformBufferArrayDynamicIndexing => &[],
            Capability::SampledImageArrayDynamicIndexing => &[],
            Capability::StorageBufferArrayDynamicIndexing => &[],
            Capability::StorageImageArrayDynamicIndexing => &[],
            Capability::ClipDistance => &[],
            Capability::CullDistance => &[],
            Capability::ImageCubeArray => &[],
            Capability::SampleRateShading => &[],
            Capability::ImageRect => &[],
            Capability::SampledRect => &[],
            Capability::GenericPointer => &[],
            Capability::Int8 => &[],
            Capability::InputAttachment => &[],
            Capability::SparseResidency => &[],
            Capability::MinLod => &[],
            Capability::Sampled1D => &[],
            Capability::Image1D => &[],
            Capability::SampledCubeArray => &[],
            Capability::SampledBuffer => &[],
            Capability::ImageBuffer => &[],
            Capability::ImageMSArray => &[],
            Capability::StorageImageExtendedFormats => &[],
            Capability::ImageQuery => &[],
            Capability::DerivativeControl => &[],
            Capability::InterpolationFunction => &[],
            Capability::TransformFeedback => &[],
            Capability::GeometryStreams => &[],
            Capability::StorageImageReadWithoutFormat => &[],
            Capability::StorageImageWriteWithoutFormat => &[],
            Capability::MultiViewport => &[],
            Capability::SubgroupDispatch => &[],
            Capability::NamedBarrier => &[],
            Capability::PipeStorage => &[],
            Capability::GroupNonUniform => &[],
            Capability::GroupNonUniformVote => &[],
            Capability::GroupNonUniformArithmetic => &[],
            Capability::GroupNonUniformBallot => &[],
            Capability::GroupNonUniformShuffle => &[],
            Capability::GroupNonUniformShuffleRelative => &[],
            Capability::GroupNonUniformClustered => &[],
            Capability::GroupNonUniformQuad => &[],
            Capability::ShaderLayer => &[],
            Capability::ShaderViewportIndex => &[],
            Capability::FragmentShadingRateKHR => &[],
            Capability::SubgroupBallotKHR => &[],
            Capability::DrawParameters => &[],
            Capability::WorkgroupMemoryExplicitLayoutKHR => &[],
            Capability::WorkgroupMemoryExplicitLayout8BitAccessKHR => &[],
            Capability::WorkgroupMemoryExplicitLayout16BitAccessKHR => &[],
            Capability::SubgroupVoteKHR => &[],
            Capability::StorageBuffer16BitAccess => &[],
            Capability::UniformAndStorageBuffer16BitAccess => &[],
            Capability::StoragePushConstant16 => &[],
            Capability::StorageInputOutput16 => &[],
            Capability::DeviceGroup => &[],
            Capability::MultiView => &[],
            Capability::VariablePointersStorageBuffer => &[],
            Capability::VariablePointers => &[],
            Capability::AtomicStorageOps => &[],
            Capability::SampleMaskPostDepthCoverage => &[],
            Capability::StorageBuffer8BitAccess => &[],
            Capability::UniformAndStorageBuffer8BitAccess => &[],
            Capability::StoragePushConstant8 => &[],
            Capability::DenormPreserve => &[],
            Capability::DenormFlushToZero => &[],
            Capability::SignedZeroInfNanPreserve => &[],
            Capability::RoundingModeRTE => &[],
            Capability::RoundingModeRTZ => &[],
            Capability::RayQueryProvisionalKHR => &[],
            Capability::RayQueryKHR => &[],
            Capability::RayTraversalPrimitiveCullingKHR => &[],
            Capability::RayTracingKHR => &[],
            Capability::Float16ImageAMD => &[],
            Capability::ImageGatherBiasLodAMD => &[],
            Capability::FragmentMaskAMD => &[],
            Capability::StencilExportEXT => &[],
            Capability::ImageReadWriteLodAMD => &[],
            Capability::Int64ImageEXT => &[],
            Capability::ShaderClockKHR => &[],
            Capability::SampleMaskOverrideCoverageNV => &[],
            Capability::GeometryShaderPassthroughNV => &[],
            Capability::ShaderViewportIndexLayerEXT => &[],
            Capability::ShaderViewportMaskNV => &[],
            Capability::ShaderStereoViewNV => &[],
            Capability::PerViewAttributesNV => &[],
            Capability::FragmentFullyCoveredEXT => &[],
            Capability::MeshShadingNV => &[],
            Capability::ImageFootprintNV => &[],
            Capability::FragmentBarycentricNV => &[],
            Capability::ComputeDerivativeGroupQuadsNV => &[],
            Capability::FragmentDensityEXT => &[],
            Capability::GroupNonUniformPartitionedNV => &[],
            Capability::ShaderNonUniform => &[],
            Capability::RuntimeDescriptorArray => &[],
            Capability::InputAttachmentArrayDynamicIndexing => &[],
            Capability::UniformTexelBufferArrayDynamicIndexing => &[],
            Capability::StorageTexelBufferArrayDynamicIndexing => &[],
            Capability::UniformBufferArrayNonUniformIndexing => &[],
            Capability::SampledImageArrayNonUniformIndexing => &[],
            Capability::StorageBufferArrayNonUniformIndexing => &[],
            Capability::StorageImageArrayNonUniformIndexing => &[],
            Capability::InputAttachmentArrayNonUniformIndexing => &[],
            Capability::UniformTexelBufferArrayNonUniformIndexing => &[],
            Capability::StorageTexelBufferArrayNonUniformIndexing => &[],
            Capability::RayTracingNV => &[],
            Capability::VulkanMemoryModel => &[],
            Capability::VulkanMemoryModelDeviceScope => &[],
            Capability::PhysicalStorageBufferAddresses => &[],
            Capability::ComputeDerivativeGroupLinearNV => &[],
            Capability::RayTracingProvisionalKHR => &[],
            Capability::CooperativeMatrixNV => &[],
            Capability::FragmentShaderSampleInterlockEXT => &[],
            Capability::FragmentShaderShadingRateInterlockEXT => &[],
            Capability::ShaderSMBuiltinsNV => &[],
            Capability::FragmentShaderPixelInterlockEXT => &[],
            Capability::DemoteToHelperInvocationEXT => &[],
            Capability::SubgroupShuffleINTEL => &[],
            Capability::SubgroupBufferBlockIOINTEL => &[],
            Capability::SubgroupImageBlockIOINTEL => &[],
            Capability::SubgroupImageMediaBlockIOINTEL => &[],
            Capability::RoundToInfinityINTEL => &[],
            Capability::FloatingPointModeINTEL => &[],
            Capability::IntegerFunctions2INTEL => &[],
            Capability::FunctionPointersINTEL => &[],
            Capability::IndirectReferencesINTEL => &[],
            Capability::AsmINTEL => &[],
            Capability::AtomicFloat32MinMaxEXT => &[],
            Capability::AtomicFloat64MinMaxEXT => &[],
            Capability::AtomicFloat16MinMaxEXT => &[],
            Capability::VectorComputeINTEL => &[],
            Capability::VectorAnyINTEL => &[],
            Capability::SubgroupAvcMotionEstimationINTEL => &[],
            Capability::SubgroupAvcMotionEstimationIntraINTEL => &[],
            Capability::SubgroupAvcMotionEstimationChromaINTEL => &[],
            Capability::VariableLengthArrayINTEL => &[],
            Capability::FunctionFloatControlINTEL => &[],
            Capability::FPGAMemoryAttributesINTEL => &[],
            Capability::FPFastMathModeINTEL => &[],
            Capability::ArbitraryPrecisionIntegersINTEL => &[],
            Capability::UnstructuredLoopControlsINTEL => &[],
            Capability::FPGALoopControlsINTEL => &[],
            Capability::KernelAttributesINTEL => &[],
            Capability::FPGAKernelAttributesINTEL => &[],
            Capability::FPGAMemoryAccessesINTEL => &[],
            Capability::FPGAClusterAttributesINTEL => &[],
            Capability::LoopFuseINTEL => &[],
            Capability::FPGABufferLocationINTEL => &[],
            Capability::USMStorageClassesINTEL => &[],
            Capability::IOPipesINTEL => &[],
            Capability::BlockingPipesINTEL => &[],
            Capability::FPGARegINTEL => &[],
            Capability::AtomicFloat32AddEXT => &[],
            Capability::AtomicFloat64AddEXT => &[],
            Capability::LongConstantCompositeINTEL => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            Capability::Matrix => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Shader => Requirements {
                extensions: &[],
                capabilities: &[Capability::Matrix],
                version: "",
            },
            Capability::Geometry => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::Tessellation => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::Addresses => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Linkage => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Kernel => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Vector16 => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::Float16Buffer => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::Float16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Float64 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Int64 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Int64Atomics => Requirements {
                extensions: &[],
                capabilities: &[Capability::Int64],
                version: "",
            },
            Capability::ImageBasic => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::ImageReadWrite => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageBasic],
                version: "",
            },
            Capability::ImageMipmap => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageBasic],
                version: "",
            },
            Capability::Pipes => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::Groups => Requirements {
                extensions: &["SPV_AMD_shader_ballot"],
                capabilities: &[],
                version: "",
            },
            Capability::DeviceEnqueue => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::LiteralSampler => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "",
            },
            Capability::AtomicStorage => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::Int16 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::TessellationPointSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Tessellation],
                version: "",
            },
            Capability::GeometryPointSize => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            Capability::ImageGatherExtended => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::StorageImageMultisample => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::UniformBufferArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::SampledImageArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::StorageBufferArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::StorageImageArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::ClipDistance => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::CullDistance => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::ImageCubeArray => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledCubeArray],
                version: "",
            },
            Capability::SampleRateShading => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::ImageRect => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledRect],
                version: "",
            },
            Capability::SampledRect => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::GenericPointer => Requirements {
                extensions: &[],
                capabilities: &[Capability::Addresses],
                version: "",
            },
            Capability::Int8 => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::InputAttachment => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::SparseResidency => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::MinLod => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::Sampled1D => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::Image1D => Requirements {
                extensions: &[],
                capabilities: &[Capability::Sampled1D],
                version: "",
            },
            Capability::SampledCubeArray => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::SampledBuffer => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "",
            },
            Capability::ImageBuffer => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledBuffer],
                version: "",
            },
            Capability::ImageMSArray => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::StorageImageExtendedFormats => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::ImageQuery => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::DerivativeControl => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::InterpolationFunction => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::TransformFeedback => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::GeometryStreams => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            Capability::StorageImageReadWithoutFormat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::StorageImageWriteWithoutFormat => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "",
            },
            Capability::MultiViewport => Requirements {
                extensions: &[],
                capabilities: &[Capability::Geometry],
                version: "",
            },
            Capability::SubgroupDispatch => Requirements {
                extensions: &[],
                capabilities: &[Capability::DeviceEnqueue],
                version: "1.1",
            },
            Capability::NamedBarrier => Requirements {
                extensions: &[],
                capabilities: &[Capability::Kernel],
                version: "1.1",
            },
            Capability::PipeStorage => Requirements {
                extensions: &[],
                capabilities: &[Capability::Pipes],
                version: "1.1",
            },
            Capability::GroupNonUniform => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.3",
            },
            Capability::GroupNonUniformVote => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformArithmetic => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformBallot => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformShuffle => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformShuffleRelative => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformClustered => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::GroupNonUniformQuad => Requirements {
                extensions: &[],
                capabilities: &[Capability::GroupNonUniform],
                version: "1.3",
            },
            Capability::ShaderLayer => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.5",
            },
            Capability::ShaderViewportIndex => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.5",
            },
            Capability::FragmentShadingRateKHR => Requirements {
                extensions: &["SPV_KHR_fragment_shading_rate"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::SubgroupBallotKHR => Requirements {
                extensions: &["SPV_KHR_shader_ballot"],
                capabilities: &[],
                version: "None",
            },
            Capability::DrawParameters => Requirements {
                extensions: &["SPV_KHR_shader_draw_parameters"],
                capabilities: &[Capability::Shader],
                version: "1.3",
            },
            Capability::WorkgroupMemoryExplicitLayoutKHR => Requirements {
                extensions: &["SPV_KHR_workgroup_memory_explicit_layout"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::WorkgroupMemoryExplicitLayout8BitAccessKHR => Requirements {
                extensions: &["SPV_KHR_workgroup_memory_explicit_layout"],
                capabilities: &[Capability::WorkgroupMemoryExplicitLayoutKHR],
                version: "None",
            },
            Capability::WorkgroupMemoryExplicitLayout16BitAccessKHR => Requirements {
                extensions: &["SPV_KHR_workgroup_memory_explicit_layout"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::SubgroupVoteKHR => Requirements {
                extensions: &["SPV_KHR_subgroup_vote"],
                capabilities: &[],
                version: "None",
            },
            Capability::StorageBuffer16BitAccess => Requirements {
                extensions: &["SPV_KHR_16bit_storage"],
                capabilities: &[],
                version: "1.3",
            },
            Capability::UniformAndStorageBuffer16BitAccess => Requirements {
                extensions: &["SPV_KHR_16bit_storage"],
                capabilities: &[
                    Capability::StorageBuffer16BitAccess,
                    Capability::StorageUniformBufferBlock16,
                ],
                version: "1.3",
            },
            Capability::StoragePushConstant16 => Requirements {
                extensions: &["SPV_KHR_16bit_storage"],
                capabilities: &[],
                version: "1.3",
            },
            Capability::StorageInputOutput16 => Requirements {
                extensions: &["SPV_KHR_16bit_storage"],
                capabilities: &[],
                version: "1.3",
            },
            Capability::DeviceGroup => Requirements {
                extensions: &["SPV_KHR_device_group"],
                capabilities: &[],
                version: "1.3",
            },
            Capability::MultiView => Requirements {
                extensions: &["SPV_KHR_multiview"],
                capabilities: &[Capability::Shader],
                version: "1.3",
            },
            Capability::VariablePointersStorageBuffer => Requirements {
                extensions: &["SPV_KHR_variable_pointers"],
                capabilities: &[Capability::Shader],
                version: "1.3",
            },
            Capability::VariablePointers => Requirements {
                extensions: &["SPV_KHR_variable_pointers"],
                capabilities: &[Capability::VariablePointersStorageBuffer],
                version: "1.3",
            },
            Capability::AtomicStorageOps => Requirements {
                extensions: &["SPV_KHR_shader_atomic_counter_ops"],
                capabilities: &[],
                version: "None",
            },
            Capability::SampleMaskPostDepthCoverage => Requirements {
                extensions: &["SPV_KHR_post_depth_coverage"],
                capabilities: &[],
                version: "None",
            },
            Capability::StorageBuffer8BitAccess => Requirements {
                extensions: &["SPV_KHR_8bit_storage"],
                capabilities: &[],
                version: "1.5",
            },
            Capability::UniformAndStorageBuffer8BitAccess => Requirements {
                extensions: &["SPV_KHR_8bit_storage"],
                capabilities: &[Capability::StorageBuffer8BitAccess],
                version: "1.5",
            },
            Capability::StoragePushConstant8 => Requirements {
                extensions: &["SPV_KHR_8bit_storage"],
                capabilities: &[],
                version: "1.5",
            },
            Capability::DenormPreserve => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[],
                version: "1.4",
            },
            Capability::DenormFlushToZero => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[],
                version: "1.4",
            },
            Capability::SignedZeroInfNanPreserve => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[],
                version: "1.4",
            },
            Capability::RoundingModeRTE => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[],
                version: "1.4",
            },
            Capability::RoundingModeRTZ => Requirements {
                extensions: &["SPV_KHR_float_controls"],
                capabilities: &[],
                version: "1.4",
            },
            Capability::RayQueryProvisionalKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::RayQueryKHR => Requirements {
                extensions: &["SPV_KHR_ray_query"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::RayTraversalPrimitiveCullingKHR => Requirements {
                extensions: &["SPV_KHR_ray_query", "SPV_KHR_ray_tracing"],
                capabilities: &[Capability::RayQueryKHR, Capability::RayTracingKHR],
                version: "None",
            },
            Capability::RayTracingKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::Float16ImageAMD => Requirements {
                extensions: &["SPV_AMD_gpu_shader_half_float_fetch"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::ImageGatherBiasLodAMD => Requirements {
                extensions: &["SPV_AMD_texture_gather_bias_lod"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::FragmentMaskAMD => Requirements {
                extensions: &["SPV_AMD_shader_fragment_mask"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::StencilExportEXT => Requirements {
                extensions: &["SPV_EXT_shader_stencil_export"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::ImageReadWriteLodAMD => Requirements {
                extensions: &["SPV_AMD_shader_image_load_store_lod"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::Int64ImageEXT => Requirements {
                extensions: &["SPV_EXT_shader_image_int64"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::ShaderClockKHR => Requirements {
                extensions: &["SPV_KHR_shader_clock"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::SampleMaskOverrideCoverageNV => Requirements {
                extensions: &["SPV_NV_sample_mask_override_coverage"],
                capabilities: &[Capability::SampleRateShading],
                version: "None",
            },
            Capability::GeometryShaderPassthroughNV => Requirements {
                extensions: &["SPV_NV_geometry_shader_passthrough"],
                capabilities: &[Capability::Geometry],
                version: "None",
            },
            Capability::ShaderViewportIndexLayerEXT => Requirements {
                extensions: &["SPV_EXT_shader_viewport_index_layer"],
                capabilities: &[Capability::MultiViewport],
                version: "None",
            },
            Capability::ShaderViewportMaskNV => Requirements {
                extensions: &["SPV_NV_viewport_array2"],
                capabilities: &[Capability::ShaderViewportIndexLayerNV],
                version: "None",
            },
            Capability::ShaderStereoViewNV => Requirements {
                extensions: &["SPV_NV_stereo_view_rendering"],
                capabilities: &[Capability::ShaderViewportMaskNV],
                version: "None",
            },
            Capability::PerViewAttributesNV => Requirements {
                extensions: &["SPV_NVX_multiview_per_view_attributes"],
                capabilities: &[Capability::MultiView],
                version: "None",
            },
            Capability::FragmentFullyCoveredEXT => Requirements {
                extensions: &["SPV_EXT_fragment_fully_covered"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::MeshShadingNV => Requirements {
                extensions: &["SPV_NV_mesh_shader"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::ImageFootprintNV => Requirements {
                extensions: &["SPV_NV_shader_image_footprint"],
                capabilities: &[],
                version: "None",
            },
            Capability::FragmentBarycentricNV => Requirements {
                extensions: &["SPV_NV_fragment_shader_barycentric"],
                capabilities: &[],
                version: "None",
            },
            Capability::ComputeDerivativeGroupQuadsNV => Requirements {
                extensions: &["SPV_NV_compute_shader_derivatives"],
                capabilities: &[],
                version: "None",
            },
            Capability::FragmentDensityEXT => Requirements {
                extensions: &["SPV_EXT_fragment_invocation_density", "SPV_NV_shading_rate"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::GroupNonUniformPartitionedNV => Requirements {
                extensions: &["SPV_NV_shader_subgroup_partitioned"],
                capabilities: &[],
                version: "None",
            },
            Capability::ShaderNonUniform => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "1.5",
            },
            Capability::RuntimeDescriptorArray => Requirements {
                extensions: &[],
                capabilities: &[Capability::Shader],
                version: "1.5",
            },
            Capability::InputAttachmentArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::InputAttachment],
                version: "1.5",
            },
            Capability::UniformTexelBufferArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledBuffer],
                version: "1.5",
            },
            Capability::StorageTexelBufferArrayDynamicIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageBuffer],
                version: "1.5",
            },
            Capability::UniformBufferArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::SampledImageArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::StorageBufferArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::StorageImageArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::InputAttachmentArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::InputAttachment, Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::UniformTexelBufferArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::SampledBuffer, Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::StorageTexelBufferArrayNonUniformIndexing => Requirements {
                extensions: &[],
                capabilities: &[Capability::ImageBuffer, Capability::ShaderNonUniform],
                version: "1.5",
            },
            Capability::RayTracingNV => Requirements {
                extensions: &["SPV_NV_ray_tracing"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::VulkanMemoryModel => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.5",
            },
            Capability::VulkanMemoryModelDeviceScope => Requirements {
                extensions: &[],
                capabilities: &[],
                version: "1.5",
            },
            Capability::PhysicalStorageBufferAddresses => Requirements {
                extensions: &[
                    "SPV_EXT_physical_storage_buffer",
                    "SPV_KHR_physical_storage_buffer",
                ],
                capabilities: &[Capability::Shader],
                version: "1.5",
            },
            Capability::ComputeDerivativeGroupLinearNV => Requirements {
                extensions: &["SPV_NV_compute_shader_derivatives"],
                capabilities: &[],
                version: "None",
            },
            Capability::RayTracingProvisionalKHR => Requirements {
                extensions: &["SPV_KHR_ray_tracing"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::CooperativeMatrixNV => Requirements {
                extensions: &["SPV_NV_cooperative_matrix"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::FragmentShaderSampleInterlockEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::FragmentShaderShadingRateInterlockEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::ShaderSMBuiltinsNV => Requirements {
                extensions: &["SPV_NV_shader_sm_builtins"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::FragmentShaderPixelInterlockEXT => Requirements {
                extensions: &["SPV_EXT_fragment_shader_interlock"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::DemoteToHelperInvocationEXT => Requirements {
                extensions: &["SPV_EXT_demote_to_helper_invocation"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::SubgroupShuffleINTEL => Requirements {
                extensions: &["SPV_INTEL_subgroups"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupBufferBlockIOINTEL => Requirements {
                extensions: &["SPV_INTEL_subgroups"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupImageBlockIOINTEL => Requirements {
                extensions: &["SPV_INTEL_subgroups"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupImageMediaBlockIOINTEL => Requirements {
                extensions: &["SPV_INTEL_media_block_io"],
                capabilities: &[],
                version: "None",
            },
            Capability::RoundToInfinityINTEL => Requirements {
                extensions: &["SPV_INTEL_float_controls2"],
                capabilities: &[],
                version: "None",
            },
            Capability::FloatingPointModeINTEL => Requirements {
                extensions: &["SPV_INTEL_float_controls2"],
                capabilities: &[],
                version: "None",
            },
            Capability::IntegerFunctions2INTEL => Requirements {
                extensions: &["SPV_INTEL_shader_integer_functions2"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::FunctionPointersINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[],
                version: "None",
            },
            Capability::IndirectReferencesINTEL => Requirements {
                extensions: &["SPV_INTEL_function_pointers"],
                capabilities: &[],
                version: "None",
            },
            Capability::AsmINTEL => Requirements {
                extensions: &["SPV_INTEL_inline_assembly"],
                capabilities: &[],
                version: "None",
            },
            Capability::AtomicFloat32MinMaxEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_min_max"],
                capabilities: &[],
                version: "None",
            },
            Capability::AtomicFloat64MinMaxEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_min_max"],
                capabilities: &[],
                version: "None",
            },
            Capability::AtomicFloat16MinMaxEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_min_max"],
                capabilities: &[],
                version: "None",
            },
            Capability::VectorComputeINTEL => Requirements {
                extensions: &["SPV_INTEL_vector_compute"],
                capabilities: &[Capability::VectorAnyINTEL],
                version: "None",
            },
            Capability::VectorAnyINTEL => Requirements {
                extensions: &["SPV_INTEL_vector_compute"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupAvcMotionEstimationINTEL => Requirements {
                extensions: &["SPV_INTEL_device_side_avc_motion_estimation"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupAvcMotionEstimationIntraINTEL => Requirements {
                extensions: &["SPV_INTEL_device_side_avc_motion_estimation"],
                capabilities: &[],
                version: "None",
            },
            Capability::SubgroupAvcMotionEstimationChromaINTEL => Requirements {
                extensions: &["SPV_INTEL_device_side_avc_motion_estimation"],
                capabilities: &[],
                version: "None",
            },
            Capability::VariableLengthArrayINTEL => Requirements {
                extensions: &["SPV_INTEL_variable_length_array"],
                capabilities: &[],
                version: "None",
            },
            Capability::FunctionFloatControlINTEL => Requirements {
                extensions: &["SPV_INTEL_float_controls2"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGAMemoryAttributesINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_attributes"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPFastMathModeINTEL => Requirements {
                extensions: &["SPV_INTEL_fp_fast_math_mode"],
                capabilities: &[Capability::Kernel],
                version: "None",
            },
            Capability::ArbitraryPrecisionIntegersINTEL => Requirements {
                extensions: &["SPV_INTEL_arbitrary_precision_integers"],
                capabilities: &[],
                version: "None",
            },
            Capability::UnstructuredLoopControlsINTEL => Requirements {
                extensions: &["SPV_INTEL_unstructured_loop_controls"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGALoopControlsINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_loop_controls"],
                capabilities: &[],
                version: "None",
            },
            Capability::KernelAttributesINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGAKernelAttributesINTEL => Requirements {
                extensions: &["SPV_INTEL_kernel_attributes"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGAMemoryAccessesINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_memory_accesses"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGAClusterAttributesINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_cluster_attributes"],
                capabilities: &[],
                version: "None",
            },
            Capability::LoopFuseINTEL => Requirements {
                extensions: &["SPV_INTEL_loop_fuse"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGABufferLocationINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_buffer_location"],
                capabilities: &[],
                version: "None",
            },
            Capability::USMStorageClassesINTEL => Requirements {
                extensions: &["SPV_INTEL_usm_storage_classes"],
                capabilities: &[],
                version: "None",
            },
            Capability::IOPipesINTEL => Requirements {
                extensions: &["SPV_INTEL_io_pipes"],
                capabilities: &[],
                version: "None",
            },
            Capability::BlockingPipesINTEL => Requirements {
                extensions: &["SPV_INTEL_blocking_pipes"],
                capabilities: &[],
                version: "None",
            },
            Capability::FPGARegINTEL => Requirements {
                extensions: &["SPV_INTEL_fpga_reg"],
                capabilities: &[],
                version: "None",
            },
            Capability::AtomicFloat32AddEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_add"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::AtomicFloat64AddEXT => Requirements {
                extensions: &["SPV_EXT_shader_atomic_float_add"],
                capabilities: &[Capability::Shader],
                version: "None",
            },
            Capability::LongConstantCompositeINTEL => Requirements {
                extensions: &["SPV_INTEL_long_constant_composite"],
                capabilities: &[],
                version: "None",
            },
        }
    }
}
impl EnumValue for Capability {
    fn from_str(tok: &str) -> Option<Capability> {
        match tok {
            "Matrix" => Some(Capability::Matrix),
            "Shader" => Some(Capability::Shader),
            "Geometry" => Some(Capability::Geometry),
            "Tessellation" => Some(Capability::Tessellation),
            "Addresses" => Some(Capability::Addresses),
            "Linkage" => Some(Capability::Linkage),
            "Kernel" => Some(Capability::Kernel),
            "Vector16" => Some(Capability::Vector16),
            "Float16Buffer" => Some(Capability::Float16Buffer),
            "Float16" => Some(Capability::Float16),
            "Float64" => Some(Capability::Float64),
            "Int64" => Some(Capability::Int64),
            "Int64Atomics" => Some(Capability::Int64Atomics),
            "ImageBasic" => Some(Capability::ImageBasic),
            "ImageReadWrite" => Some(Capability::ImageReadWrite),
            "ImageMipmap" => Some(Capability::ImageMipmap),
            "Pipes" => Some(Capability::Pipes),
            "Groups" => Some(Capability::Groups),
            "DeviceEnqueue" => Some(Capability::DeviceEnqueue),
            "LiteralSampler" => Some(Capability::LiteralSampler),
            "AtomicStorage" => Some(Capability::AtomicStorage),
            "Int16" => Some(Capability::Int16),
            "TessellationPointSize" => Some(Capability::TessellationPointSize),
            "GeometryPointSize" => Some(Capability::GeometryPointSize),
            "ImageGatherExtended" => Some(Capability::ImageGatherExtended),
            "StorageImageMultisample" => Some(Capability::StorageImageMultisample),
            "UniformBufferArrayDynamicIndexing" => {
                Some(Capability::UniformBufferArrayDynamicIndexing)
            }
            "SampledImageArrayDynamicIndexing" => {
                Some(Capability::SampledImageArrayDynamicIndexing)
            }
            "StorageBufferArrayDynamicIndexing" => {
                Some(Capability::StorageBufferArrayDynamicIndexing)
            }
            "StorageImageArrayDynamicIndexing" => {
                Some(Capability::StorageImageArrayDynamicIndexing)
            }
            "ClipDistance" => Some(Capability::ClipDistance),
            "CullDistance" => Some(Capability::CullDistance),
            "ImageCubeArray" => Some(Capability::ImageCubeArray),
            "SampleRateShading" => Some(Capability::SampleRateShading),
            "ImageRect" => Some(Capability::ImageRect),
            "SampledRect" => Some(Capability::SampledRect),
            "GenericPointer" => Some(Capability::GenericPointer),
            "Int8" => Some(Capability::Int8),
            "InputAttachment" => Some(Capability::InputAttachment),
            "SparseResidency" => Some(Capability::SparseResidency),
            "MinLod" => Some(Capability::MinLod),
            "Sampled1D" => Some(Capability::Sampled1D),
            "Image1D" => Some(Capability::Image1D),
            "SampledCubeArray" => Some(Capability::SampledCubeArray),
            "SampledBuffer" => Some(Capability::SampledBuffer),
            "ImageBuffer" => Some(Capability::ImageBuffer),
            "ImageMSArray" => Some(Capability::ImageMSArray),
            "StorageImageExtendedFormats" => Some(Capability::StorageImageExtendedFormats),
            "ImageQuery" => Some(Capability::ImageQuery),
            "DerivativeControl" => Some(Capability::DerivativeControl),
            "InterpolationFunction" => Some(Capability::InterpolationFunction),
            "TransformFeedback" => Some(Capability::TransformFeedback),
            "GeometryStreams" => Some(Capability::GeometryStreams),
            "StorageImageReadWithoutFormat" => Some(Capability::StorageImageReadWithoutFormat),
            "StorageImageWriteWithoutFormat" => Some(Capability::StorageImageWriteWithoutFormat),
            "MultiViewport" => Some(Capability::MultiViewport),
            "SubgroupDispatch" => Some(Capability::SubgroupDispatch),
            "NamedBarrier" => Some(Capability::NamedBarrier),
            "PipeStorage" => Some(Capability::PipeStorage),
            "GroupNonUniform" => Some(Capability::GroupNonUniform),
            "GroupNonUniformVote" => Some(Capability::GroupNonUniformVote),
            "GroupNonUniformArithmetic" => Some(Capability::GroupNonUniformArithmetic),
            "GroupNonUniformBallot" => Some(Capability::GroupNonUniformBallot),
            "GroupNonUniformShuffle" => Some(Capability::GroupNonUniformShuffle),
            "GroupNonUniformShuffleRelative" => Some(Capability::GroupNonUniformShuffleRelative),
            "GroupNonUniformClustered" => Some(Capability::GroupNonUniformClustered),
            "GroupNonUniformQuad" => Some(Capability::GroupNonUniformQuad),
            "ShaderLayer" => Some(Capability::ShaderLayer),
            "ShaderViewportIndex" => Some(Capability::ShaderViewportIndex),
            "FragmentShadingRateKHR" => Some(Capability::FragmentShadingRateKHR),
            "SubgroupBallotKHR" => Some(Capability::SubgroupBallotKHR),
            "DrawParameters" => Some(Capability::DrawParameters),
            "WorkgroupMemoryExplicitLayoutKHR" => {
                Some(Capability::WorkgroupMemoryExplicitLayoutKHR)
            }
            "WorkgroupMemoryExplicitLayout8BitAccessKHR" => {
                Some(Capability::WorkgroupMemoryExplicitLayout8BitAccessKHR)
            }
            "WorkgroupMemoryExplicitLayout16BitAccessKHR" => {
                Some(Capability::WorkgroupMemoryExplicitLayout16BitAccessKHR)
            }
            "SubgroupVoteKHR" => Some(Capability::SubgroupVoteKHR),
            "StorageBuffer16BitAccess" => Some(Capability::StorageBuffer16BitAccess),
            "UniformAndStorageBuffer16BitAccess" => {
                Some(Capability::UniformAndStorageBuffer16BitAccess)
            }
            "StoragePushConstant16" => Some(Capability::StoragePushConstant16),
            "StorageInputOutput16" => Some(Capability::StorageInputOutput16),
            "DeviceGroup" => Some(Capability::DeviceGroup),
            "MultiView" => Some(Capability::MultiView),
            "VariablePointersStorageBuffer" => Some(Capability::VariablePointersStorageBuffer),
            "VariablePointers" => Some(Capability::VariablePointers),
            "AtomicStorageOps" => Some(Capability::AtomicStorageOps),
            "SampleMaskPostDepthCoverage" => Some(Capability::SampleMaskPostDepthCoverage),
            "StorageBuffer8BitAccess" => Some(Capability::StorageBuffer8BitAccess),
            "UniformAndStorageBuffer8BitAccess" => {
                Some(Capability::UniformAndStorageBuffer8BitAccess)
            }
            "StoragePushConstant8" => Some(Capability::StoragePushConstant8),
            "DenormPreserve" => Some(Capability::DenormPreserve),
            "DenormFlushToZero" => Some(Capability::DenormFlushToZero),
            "SignedZeroInfNanPreserve" => Some(Capability::SignedZeroInfNanPreserve),
            "RoundingModeRTE" => Some(Capability::RoundingModeRTE),
            "RoundingModeRTZ" => Some(Capability::RoundingModeRTZ),
            "RayQueryProvisionalKHR" => Some(Capability::RayQueryProvisionalKHR),
            "RayQueryKHR" => Some(Capability::RayQueryKHR),
            "RayTraversalPrimitiveCullingKHR" => Some(Capability::RayTraversalPrimitiveCullingKHR),
            "RayTracingKHR" => Some(Capability::RayTracingKHR),
            "Float16ImageAMD" => Some(Capability::Float16ImageAMD),
            "ImageGatherBiasLodAMD" => Some(Capability::ImageGatherBiasLodAMD),
            "FragmentMaskAMD" => Some(Capability::FragmentMaskAMD),
            "StencilExportEXT" => Some(Capability::StencilExportEXT),
            "ImageReadWriteLodAMD" => Some(Capability::ImageReadWriteLodAMD),
            "Int64ImageEXT" => Some(Capability::Int64ImageEXT),
            "ShaderClockKHR" => Some(Capability::ShaderClockKHR),
            "SampleMaskOverrideCoverageNV" => Some(Capability::SampleMaskOverrideCoverageNV),
            "GeometryShaderPassthroughNV" => Some(Capability::GeometryShaderPassthroughNV),
            "ShaderViewportIndexLayerEXT" => Some(Capability::ShaderViewportIndexLayerEXT),
            "ShaderViewportMaskNV" => Some(Capability::ShaderViewportMaskNV),
            "ShaderStereoViewNV" => Some(Capability::ShaderStereoViewNV),
            "PerViewAttributesNV" => Some(Capability::PerViewAttributesNV),
            "FragmentFullyCoveredEXT" => Some(Capability::FragmentFullyCoveredEXT),
            "MeshShadingNV" => Some(Capability::MeshShadingNV),
            "ImageFootprintNV" => Some(Capability::ImageFootprintNV),
            "FragmentBarycentricNV" => Some(Capability::FragmentBarycentricNV),
            "ComputeDerivativeGroupQuadsNV" => Some(Capability::ComputeDerivativeGroupQuadsNV),
            "FragmentDensityEXT" => Some(Capability::FragmentDensityEXT),
            "GroupNonUniformPartitionedNV" => Some(Capability::GroupNonUniformPartitionedNV),
            "ShaderNonUniform" => Some(Capability::ShaderNonUniform),
            "RuntimeDescriptorArray" => Some(Capability::RuntimeDescriptorArray),
            "InputAttachmentArrayDynamicIndexing" => {
                Some(Capability::InputAttachmentArrayDynamicIndexing)
            }
            "UniformTexelBufferArrayDynamicIndexing" => {
                Some(Capability::UniformTexelBufferArrayDynamicIndexing)
            }
            "StorageTexelBufferArrayDynamicIndexing" => {
                Some(Capability::StorageTexelBufferArrayDynamicIndexing)
            }
            "UniformBufferArrayNonUniformIndexing" => {
                Some(Capability::UniformBufferArrayNonUniformIndexing)
            }
            "SampledImageArrayNonUniformIndexing" => {
                Some(Capability::SampledImageArrayNonUniformIndexing)
            }
            "StorageBufferArrayNonUniformIndexing" => {
                Some(Capability::StorageBufferArrayNonUniformIndexing)
            }
            "StorageImageArrayNonUniformIndexing" => {
                Some(Capability::StorageImageArrayNonUniformIndexing)
            }
            "InputAttachmentArrayNonUniformIndexing" => {
                Some(Capability::InputAttachmentArrayNonUniformIndexing)
            }
            "UniformTexelBufferArrayNonUniformIndexing" => {
                Some(Capability::UniformTexelBufferArrayNonUniformIndexing)
            }
            "StorageTexelBufferArrayNonUniformIndexing" => {
                Some(Capability::StorageTexelBufferArrayNonUniformIndexing)
            }
            "RayTracingNV" => Some(Capability::RayTracingNV),
            "VulkanMemoryModel" => Some(Capability::VulkanMemoryModel),
            "VulkanMemoryModelDeviceScope" => Some(Capability::VulkanMemoryModelDeviceScope),
            "PhysicalStorageBufferAddresses" => Some(Capability::PhysicalStorageBufferAddresses),
            "ComputeDerivativeGroupLinearNV" => Some(Capability::ComputeDerivativeGroupLinearNV),
            "RayTracingProvisionalKHR" => Some(Capability::RayTracingProvisionalKHR),
            "CooperativeMatrixNV" => Some(Capability::CooperativeMatrixNV),
            "FragmentShaderSampleInterlockEXT" => {
                Some(Capability::FragmentShaderSampleInterlockEXT)
            }
            "FragmentShaderShadingRateInterlockEXT" => {
                Some(Capability::FragmentShaderShadingRateInterlockEXT)
            }
            "ShaderSMBuiltinsNV" => Some(Capability::ShaderSMBuiltinsNV),
            "FragmentShaderPixelInterlockEXT" => Some(Capability::FragmentShaderPixelInterlockEXT),
            "DemoteToHelperInvocationEXT" => Some(Capability::DemoteToHelperInvocationEXT),
            "SubgroupShuffleINTEL" => Some(Capability::SubgroupShuffleINTEL),
            "SubgroupBufferBlockIOINTEL" => Some(Capability::SubgroupBufferBlockIOINTEL),
            "SubgroupImageBlockIOINTEL" => Some(Capability::SubgroupImageBlockIOINTEL),
            "SubgroupImageMediaBlockIOINTEL" => Some(Capability::SubgroupImageMediaBlockIOINTEL),
            "RoundToInfinityINTEL" => Some(Capability::RoundToInfinityINTEL),
            "FloatingPointModeINTEL" => Some(Capability::FloatingPointModeINTEL),
            "IntegerFunctions2INTEL" => Some(Capability::IntegerFunctions2INTEL),
            "FunctionPointersINTEL" => Some(Capability::FunctionPointersINTEL),
            "IndirectReferencesINTEL" => Some(Capability::IndirectReferencesINTEL),
            "AsmINTEL" => Some(Capability::AsmINTEL),
            "AtomicFloat32MinMaxEXT" => Some(Capability::AtomicFloat32MinMaxEXT),
            "AtomicFloat64MinMaxEXT" => Some(Capability::AtomicFloat64MinMaxEXT),
            "AtomicFloat16MinMaxEXT" => Some(Capability::AtomicFloat16MinMaxEXT),
            "VectorComputeINTEL" => Some(Capability::VectorComputeINTEL),
            "VectorAnyINTEL" => Some(Capability::VectorAnyINTEL),
            "SubgroupAvcMotionEstimationINTEL" => {
                Some(Capability::SubgroupAvcMotionEstimationINTEL)
            }
            "SubgroupAvcMotionEstimationIntraINTEL" => {
                Some(Capability::SubgroupAvcMotionEstimationIntraINTEL)
            }
            "SubgroupAvcMotionEstimationChromaINTEL" => {
                Some(Capability::SubgroupAvcMotionEstimationChromaINTEL)
            }
            "VariableLengthArrayINTEL" => Some(Capability::VariableLengthArrayINTEL),
            "FunctionFloatControlINTEL" => Some(Capability::FunctionFloatControlINTEL),
            "FPGAMemoryAttributesINTEL" => Some(Capability::FPGAMemoryAttributesINTEL),
            "FPFastMathModeINTEL" => Some(Capability::FPFastMathModeINTEL),
            "ArbitraryPrecisionIntegersINTEL" => Some(Capability::ArbitraryPrecisionIntegersINTEL),
            "UnstructuredLoopControlsINTEL" => Some(Capability::UnstructuredLoopControlsINTEL),
            "FPGALoopControlsINTEL" => Some(Capability::FPGALoopControlsINTEL),
            "KernelAttributesINTEL" => Some(Capability::KernelAttributesINTEL),
            "FPGAKernelAttributesINTEL" => Some(Capability::FPGAKernelAttributesINTEL),
            "FPGAMemoryAccessesINTEL" => Some(Capability::FPGAMemoryAccessesINTEL),
            "FPGAClusterAttributesINTEL" => Some(Capability::FPGAClusterAttributesINTEL),
            "LoopFuseINTEL" => Some(Capability::LoopFuseINTEL),
            "FPGABufferLocationINTEL" => Some(Capability::FPGABufferLocationINTEL),
            "USMStorageClassesINTEL" => Some(Capability::USMStorageClassesINTEL),
            "IOPipesINTEL" => Some(Capability::IOPipesINTEL),
            "BlockingPipesINTEL" => Some(Capability::BlockingPipesINTEL),
            "FPGARegINTEL" => Some(Capability::FPGARegINTEL),
            "AtomicFloat32AddEXT" => Some(Capability::AtomicFloat32AddEXT),
            "AtomicFloat64AddEXT" => Some(Capability::AtomicFloat64AddEXT),
            "LongConstantCompositeINTEL" => Some(Capability::LongConstantCompositeINTEL),
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum RayQueryIntersection {
    RayQueryCandidateIntersectionKHR = 0u32,
    RayQueryCommittedIntersectionKHR = 1u32,
}
impl RayQueryIntersection {}
impl RayQueryIntersection {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            RayQueryIntersection::RayQueryCandidateIntersectionKHR => &[],
            RayQueryIntersection::RayQueryCommittedIntersectionKHR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            RayQueryIntersection::RayQueryCandidateIntersectionKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
            RayQueryIntersection::RayQueryCommittedIntersectionKHR => Requirements {
                extensions: &[],
                capabilities: &[Capability::RayQueryKHR],
                version: "None",
            },
        }
    }
}
impl EnumValue for RayQueryIntersection {
    fn from_str(tok: &str) -> Option<RayQueryIntersection> {
        match tok {
            "RayQueryCandidateIntersectionKHR" => {
                Some(RayQueryIntersection::RayQueryCandidateIntersectionKHR)
            }
            "RayQueryCommittedIntersectionKHR" => {
                Some(RayQueryIntersection::RayQueryCommittedIntersectionKHR)
            }
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum RayQueryCommittedIntersectionType {
    RayQueryCommittedIntersectionNoneKHR = 0u32,
    RayQueryCommittedIntersectionTriangleKHR = 1u32,
    RayQueryCommittedIntersectionGeneratedKHR = 2u32,
}
impl RayQueryCommittedIntersectionType {}
impl RayQueryCommittedIntersectionType {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionNoneKHR => &[],
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionTriangleKHR => &[],
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionGeneratedKHR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionNoneKHR => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionTriangleKHR => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
            RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionGeneratedKHR => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
        }
    }
}
impl EnumValue for RayQueryCommittedIntersectionType {
    fn from_str(tok: &str) -> Option<RayQueryCommittedIntersectionType> {
        match tok {
            "RayQueryCommittedIntersectionNoneKHR" => {
                Some(RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionNoneKHR)
            }
            "RayQueryCommittedIntersectionTriangleKHR" => {
                Some(RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionTriangleKHR)
            }
            "RayQueryCommittedIntersectionGeneratedKHR" => {
                Some(RayQueryCommittedIntersectionType::RayQueryCommittedIntersectionGeneratedKHR)
            }
            _ => None,
        }
    }
}
#[repr(u32)]
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum RayQueryCandidateIntersectionType {
    RayQueryCandidateIntersectionTriangleKHR = 0u32,
    RayQueryCandidateIntersectionAABBKHR = 1u32,
}
impl RayQueryCandidateIntersectionType {}
impl RayQueryCandidateIntersectionType {
    pub fn params(self) -> &'static [OpKind] {
        match self {
            RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionTriangleKHR => &[],
            RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionAABBKHR => &[],
        }
    }
    pub fn get_requirements(self) -> Requirements {
        match self {
            RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionTriangleKHR => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
            RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionAABBKHR => {
                Requirements {
                    extensions: &[],
                    capabilities: &[Capability::RayQueryKHR],
                    version: "None",
                }
            }
        }
    }
}
impl EnumValue for RayQueryCandidateIntersectionType {
    fn from_str(tok: &str) -> Option<RayQueryCandidateIntersectionType> {
        match tok {
            "RayQueryCandidateIntersectionTriangleKHR" => {
                Some(RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionTriangleKHR)
            }
            "RayQueryCandidateIntersectionAABBKHR" => {
                Some(RayQueryCandidateIntersectionType::RayQueryCandidateIntersectionAABBKHR)
            }
            _ => None,
        }
    }
}
pub trait EnumValue: Sized {
    fn from_str(tok: &str) -> Option<Self>;
}
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
pub enum OpKind {
    ImageOperands,
    FPFastMathMode,
    SelectionControl,
    LoopControl,
    FunctionControl,
    MemorySemantics,
    MemoryAccess,
    KernelProfilingInfo,
    RayFlags,
    FragmentShadingRate,
    SourceLanguage,
    ExecutionModel,
    AddressingModel,
    MemoryModel,
    ExecutionMode,
    StorageClass,
    Dim,
    SamplerAddressingMode,
    SamplerFilterMode,
    ImageFormat,
    ImageChannelOrder,
    ImageChannelDataType,
    FPRoundingMode,
    FPDenormMode,
    FPOperationMode,
    LinkageType,
    AccessQualifier,
    FunctionParameterAttribute,
    Decoration,
    BuiltIn,
    Scope,
    GroupOperation,
    KernelEnqueueFlags,
    Capability,
    RayQueryIntersection,
    RayQueryCommittedIntersectionType,
    RayQueryCandidateIntersectionType,
    IdResultType,
    IdResult,
    IdMemorySemantics,
    IdScope,
    IdRef,
    LiteralInteger,
    LiteralString,
    LiteralContextDependentNumber,
    LiteralExtInstInteger,
    LiteralSpecConstantOpInteger,
    PairLiteralIntegerIdRef,
    PairIdRefLiteralInteger,
    PairIdRefIdRef,
}
impl OpKind {
    pub fn from_str(self, s: &str) -> Option<u32> {
        match self {
            OpKind::ImageOperands => ImageOperands::from_str(s).map(|r| r as u32),
            OpKind::FPFastMathMode => FPFastMathMode::from_str(s).map(|r| r as u32),
            OpKind::SelectionControl => SelectionControl::from_str(s).map(|r| r as u32),
            OpKind::LoopControl => LoopControl::from_str(s).map(|r| r as u32),
            OpKind::FunctionControl => FunctionControl::from_str(s).map(|r| r as u32),
            OpKind::MemorySemantics => MemorySemantics::from_str(s).map(|r| r as u32),
            OpKind::MemoryAccess => MemoryAccess::from_str(s).map(|r| r as u32),
            OpKind::KernelProfilingInfo => KernelProfilingInfo::from_str(s).map(|r| r as u32),
            OpKind::RayFlags => RayFlags::from_str(s).map(|r| r as u32),
            OpKind::FragmentShadingRate => FragmentShadingRate::from_str(s).map(|r| r as u32),
            OpKind::SourceLanguage => SourceLanguage::from_str(s).map(|r| r as u32),
            OpKind::ExecutionModel => ExecutionModel::from_str(s).map(|r| r as u32),
            OpKind::AddressingModel => AddressingModel::from_str(s).map(|r| r as u32),
            OpKind::MemoryModel => MemoryModel::from_str(s).map(|r| r as u32),
            OpKind::ExecutionMode => ExecutionMode::from_str(s).map(|r| r as u32),
            OpKind::StorageClass => StorageClass::from_str(s).map(|r| r as u32),
            OpKind::Dim => Dim::from_str(s).map(|r| r as u32),
            OpKind::SamplerAddressingMode => SamplerAddressingMode::from_str(s).map(|r| r as u32),
            OpKind::SamplerFilterMode => SamplerFilterMode::from_str(s).map(|r| r as u32),
            OpKind::ImageFormat => ImageFormat::from_str(s).map(|r| r as u32),
            OpKind::ImageChannelOrder => ImageChannelOrder::from_str(s).map(|r| r as u32),
            OpKind::ImageChannelDataType => ImageChannelDataType::from_str(s).map(|r| r as u32),
            OpKind::FPRoundingMode => FPRoundingMode::from_str(s).map(|r| r as u32),
            OpKind::FPDenormMode => FPDenormMode::from_str(s).map(|r| r as u32),
            OpKind::FPOperationMode => FPOperationMode::from_str(s).map(|r| r as u32),
            OpKind::LinkageType => LinkageType::from_str(s).map(|r| r as u32),
            OpKind::AccessQualifier => AccessQualifier::from_str(s).map(|r| r as u32),
            OpKind::FunctionParameterAttribute => {
                FunctionParameterAttribute::from_str(s).map(|r| r as u32)
            }
            OpKind::Decoration => Decoration::from_str(s).map(|r| r as u32),
            OpKind::BuiltIn => BuiltIn::from_str(s).map(|r| r as u32),
            OpKind::Scope => Scope::from_str(s).map(|r| r as u32),
            OpKind::GroupOperation => GroupOperation::from_str(s).map(|r| r as u32),
            OpKind::KernelEnqueueFlags => KernelEnqueueFlags::from_str(s).map(|r| r as u32),
            OpKind::Capability => Capability::from_str(s).map(|r| r as u32),
            OpKind::RayQueryIntersection => RayQueryIntersection::from_str(s).map(|r| r as u32),
            OpKind::RayQueryCommittedIntersectionType => {
                RayQueryCommittedIntersectionType::from_str(s).map(|r| r as u32)
            }
            OpKind::RayQueryCandidateIntersectionType => {
                RayQueryCandidateIntersectionType::from_str(s).map(|r| r as u32)
            }
            _ => None,
        }
    }
    pub fn get_params(self, val: u32) -> &'static [OpKind] {
        match self {
            OpKind::ImageOperands => {
                unsafe { std::mem::transmute::<u32, ImageOperands>(val) }.params()
            }
            OpKind::FPFastMathMode => {
                unsafe { std::mem::transmute::<u32, FPFastMathMode>(val) }.params()
            }
            OpKind::SelectionControl => {
                unsafe { std::mem::transmute::<u32, SelectionControl>(val) }.params()
            }
            OpKind::LoopControl => unsafe { std::mem::transmute::<u32, LoopControl>(val) }.params(),
            OpKind::FunctionControl => {
                unsafe { std::mem::transmute::<u32, FunctionControl>(val) }.params()
            }
            OpKind::MemorySemantics => {
                unsafe { std::mem::transmute::<u32, MemorySemantics>(val) }.params()
            }
            OpKind::MemoryAccess => {
                unsafe { std::mem::transmute::<u32, MemoryAccess>(val) }.params()
            }
            OpKind::KernelProfilingInfo => {
                unsafe { std::mem::transmute::<u32, KernelProfilingInfo>(val) }.params()
            }
            OpKind::RayFlags => unsafe { std::mem::transmute::<u32, RayFlags>(val) }.params(),
            OpKind::FragmentShadingRate => {
                unsafe { std::mem::transmute::<u32, FragmentShadingRate>(val) }.params()
            }
            OpKind::SourceLanguage => {
                unsafe { std::mem::transmute::<u32, SourceLanguage>(val) }.params()
            }
            OpKind::ExecutionModel => {
                unsafe { std::mem::transmute::<u32, ExecutionModel>(val) }.params()
            }
            OpKind::AddressingModel => {
                unsafe { std::mem::transmute::<u32, AddressingModel>(val) }.params()
            }
            OpKind::MemoryModel => unsafe { std::mem::transmute::<u32, MemoryModel>(val) }.params(),
            OpKind::ExecutionMode => {
                unsafe { std::mem::transmute::<u32, ExecutionMode>(val) }.params()
            }
            OpKind::StorageClass => {
                unsafe { std::mem::transmute::<u32, StorageClass>(val) }.params()
            }
            OpKind::Dim => unsafe { std::mem::transmute::<u32, Dim>(val) }.params(),
            OpKind::SamplerAddressingMode => {
                unsafe { std::mem::transmute::<u32, SamplerAddressingMode>(val) }.params()
            }
            OpKind::SamplerFilterMode => {
                unsafe { std::mem::transmute::<u32, SamplerFilterMode>(val) }.params()
            }
            OpKind::ImageFormat => unsafe { std::mem::transmute::<u32, ImageFormat>(val) }.params(),
            OpKind::ImageChannelOrder => {
                unsafe { std::mem::transmute::<u32, ImageChannelOrder>(val) }.params()
            }
            OpKind::ImageChannelDataType => {
                unsafe { std::mem::transmute::<u32, ImageChannelDataType>(val) }.params()
            }
            OpKind::FPRoundingMode => {
                unsafe { std::mem::transmute::<u32, FPRoundingMode>(val) }.params()
            }
            OpKind::FPDenormMode => {
                unsafe { std::mem::transmute::<u32, FPDenormMode>(val) }.params()
            }
            OpKind::FPOperationMode => {
                unsafe { std::mem::transmute::<u32, FPOperationMode>(val) }.params()
            }
            OpKind::LinkageType => unsafe { std::mem::transmute::<u32, LinkageType>(val) }.params(),
            OpKind::AccessQualifier => {
                unsafe { std::mem::transmute::<u32, AccessQualifier>(val) }.params()
            }
            OpKind::FunctionParameterAttribute => {
                unsafe { std::mem::transmute::<u32, FunctionParameterAttribute>(val) }.params()
            }
            OpKind::Decoration => unsafe { std::mem::transmute::<u32, Decoration>(val) }.params(),
            OpKind::BuiltIn => unsafe { std::mem::transmute::<u32, BuiltIn>(val) }.params(),
            OpKind::Scope => unsafe { std::mem::transmute::<u32, Scope>(val) }.params(),
            OpKind::GroupOperation => {
                unsafe { std::mem::transmute::<u32, GroupOperation>(val) }.params()
            }
            OpKind::KernelEnqueueFlags => {
                unsafe { std::mem::transmute::<u32, KernelEnqueueFlags>(val) }.params()
            }
            OpKind::Capability => unsafe { std::mem::transmute::<u32, Capability>(val) }.params(),
            OpKind::RayQueryIntersection => {
                unsafe { std::mem::transmute::<u32, RayQueryIntersection>(val) }.params()
            }
            OpKind::RayQueryCommittedIntersectionType => {
                unsafe { std::mem::transmute::<u32, RayQueryCommittedIntersectionType>(val) }
                    .params()
            }
            OpKind::RayQueryCandidateIntersectionType => {
                unsafe { std::mem::transmute::<u32, RayQueryCandidateIntersectionType>(val) }
                    .params()
            }
            _ => &[],
        }
    }
}
