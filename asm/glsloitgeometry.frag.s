; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 70
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %gl_FragCoord
               OpExecutionMode %main OriginUpperLeft
               OpExecutionMode %main EarlyFragmentTests
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %nodeIdx "nodeIdx"
               OpName %GeometrySBO "GeometrySBO"
               OpMemberName %GeometrySBO 0 "count"
               OpMemberName %GeometrySBO 1 "maxNodeCount"
               OpName %_ ""
               OpName %prevHeadIdx "prevHeadIdx"
               OpName %headIndexImage "headIndexImage"
               OpName %gl_FragCoord "gl_FragCoord"
               OpName %Node "Node"
               OpMemberName %Node 0 "color"
               OpMemberName %Node 1 "depth"
               OpMemberName %Node 2 "next"
               OpName %LinkedListSBO "LinkedListSBO"
               OpMemberName %LinkedListSBO 0 "nodes"
               OpName %__0 ""
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "model"
               OpMemberName %PushConsts 1 "color"
               OpName %pushConsts "pushConsts"
               OpMemberDecorate %GeometrySBO 0 Offset 0
               OpMemberDecorate %GeometrySBO 1 Offset 4
               OpDecorate %GeometrySBO BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 1
               OpDecorate %headIndexImage DescriptorSet 0
               OpDecorate %headIndexImage Binding 2
               OpDecorate %gl_FragCoord BuiltIn FragCoord
               OpMemberDecorate %Node 0 Offset 0
               OpMemberDecorate %Node 1 Offset 16
               OpMemberDecorate %Node 2 Offset 20
               OpDecorate %_runtimearr_Node ArrayStride 32
               OpMemberDecorate %LinkedListSBO 0 Offset 0
               OpDecorate %LinkedListSBO BufferBlock
               OpDecorate %__0 DescriptorSet 0
               OpDecorate %__0 Binding 3
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpMemberDecorate %PushConsts 1 Offset 64
               OpDecorate %PushConsts Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
%GeometrySBO = OpTypeStruct %uint %uint
%_ptr_Uniform_GeometrySBO = OpTypePointer Uniform %GeometrySBO
          %_ = OpVariable %_ptr_Uniform_GeometrySBO Uniform
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Uniform_uint = OpTypePointer Uniform %uint
     %uint_1 = OpConstant %uint 1
     %uint_0 = OpConstant %uint 0
      %int_1 = OpConstant %int 1
       %bool = OpTypeBool
         %28 = OpTypeImage %uint 2D 0 0 0 2 R32ui
%_ptr_UniformConstant_28 = OpTypePointer UniformConstant %28
%headIndexImage = OpVariable %_ptr_UniformConstant_28 UniformConstant
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_FragCoord = OpVariable %_ptr_Input_v4float Input
    %v2float = OpTypeVector %float 2
      %v2int = OpTypeVector %int 2
%_ptr_Image_uint = OpTypePointer Image %uint
       %Node = OpTypeStruct %v4float %float %uint
%_runtimearr_Node = OpTypeRuntimeArray %Node
%LinkedListSBO = OpTypeStruct %_runtimearr_Node
%_ptr_Uniform_LinkedListSBO = OpTypePointer Uniform %LinkedListSBO
        %__0 = OpVariable %_ptr_Uniform_LinkedListSBO Uniform
%mat4v4float = OpTypeMatrix %v4float 4
 %PushConsts = OpTypeStruct %mat4v4float %v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_v4float = OpTypePointer PushConstant %v4float
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
     %uint_2 = OpConstant %uint 2
%_ptr_Input_float = OpTypePointer Input %float
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %int_2 = OpConstant %int 2
       %main = OpFunction %void None %3
          %5 = OpLabel
    %nodeIdx = OpVariable %_ptr_Function_uint Function
%prevHeadIdx = OpVariable %_ptr_Function_uint Function
         %15 = OpAccessChain %_ptr_Uniform_uint %_ %int_0
         %18 = OpAtomicIAdd %uint %15 %uint_1 %uint_0 %uint_1
               OpStore %nodeIdx %18
         %19 = OpLoad %uint %nodeIdx
         %21 = OpAccessChain %_ptr_Uniform_uint %_ %int_1
         %22 = OpLoad %uint %21
         %24 = OpULessThan %bool %19 %22
               OpSelectionMerge %26 None
               OpBranchConditional %24 %25 %26
         %25 = OpLabel
         %36 = OpLoad %v4float %gl_FragCoord
         %37 = OpVectorShuffle %v2float %36 %36 0 1
         %39 = OpConvertFToS %v2int %37
         %40 = OpLoad %uint %nodeIdx
         %42 = OpImageTexelPointer %_ptr_Image_uint %headIndexImage %39 %uint_0
         %43 = OpAtomicExchange %uint %42 %uint_1 %uint_0 %40
               OpStore %prevHeadIdx %43
         %49 = OpLoad %uint %nodeIdx
         %55 = OpAccessChain %_ptr_PushConstant_v4float %pushConsts %int_1
         %56 = OpLoad %v4float %55
         %58 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %49 %int_0
               OpStore %58 %56
         %59 = OpLoad %uint %nodeIdx
         %62 = OpAccessChain %_ptr_Input_float %gl_FragCoord %uint_2
         %63 = OpLoad %float %62
         %65 = OpAccessChain %_ptr_Uniform_float %__0 %int_0 %59 %int_1
               OpStore %65 %63
         %66 = OpLoad %uint %nodeIdx
         %68 = OpLoad %uint %prevHeadIdx
         %69 = OpAccessChain %_ptr_Uniform_uint %__0 %int_0 %66 %int_2
               OpStore %69 %68
               OpBranch %26
         %26 = OpLabel
               OpReturn
               OpFunctionEnd
