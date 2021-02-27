; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 103
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %inColor %outColor %_ %inPos %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %inColor "inColor"
               OpName %outColor "outColor"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "mvp"
               OpMemberName %PushConsts 1 "color"
               OpName %pushConsts "pushConsts"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outColor Location 1
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpMemberDecorate %PushConsts 1 Offset 64
               OpDecorate %PushConsts Block
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %bool = OpTypeBool
    %inColor = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
    %float_1 = OpConstant %float 1
     %uint_1 = OpConstant %uint 1
    %float_0 = OpConstant %float 0
     %uint_2 = OpConstant %uint 2
   %outColor = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
 %PushConsts = OpTypeStruct %mat4v4float %v3float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_PushConstant_v3float = OpTypePointer PushConstant %v3float
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %93 = OpConstantComposite %v3float %float_0 %float_0 %float_0
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %18 = OpAccessChain %_ptr_Input_float %inColor %uint_0
         %19 = OpLoad %float %18
         %21 = OpFOrdEqual %bool %19 %float_1
               OpSelectionMerge %23 None
               OpBranchConditional %21 %22 %23
         %22 = OpLabel
         %25 = OpAccessChain %_ptr_Input_float %inColor %uint_1
         %26 = OpLoad %float %25
         %28 = OpFOrdEqual %bool %26 %float_0
               OpBranch %23
         %23 = OpLabel
         %29 = OpPhi %bool %21 %5 %28 %22
               OpSelectionMerge %31 None
               OpBranchConditional %29 %30 %31
         %30 = OpLabel
         %33 = OpAccessChain %_ptr_Input_float %inColor %uint_2
         %34 = OpLoad %float %33
         %35 = OpFOrdEqual %bool %34 %float_0
               OpBranch %31
         %31 = OpLabel
         %36 = OpPhi %bool %29 %23 %35 %30
               OpSelectionMerge %38 None
               OpBranchConditional %36 %37 %50
         %37 = OpLabel
         %48 = OpAccessChain %_ptr_PushConstant_v3float %pushConsts %int_1
         %49 = OpLoad %v3float %48
               OpStore %outColor %49
               OpBranch %38
         %50 = OpLabel
         %51 = OpLoad %v3float %inColor
               OpStore %outColor %51
               OpBranch %38
         %38 = OpLabel
         %58 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %59 = OpLoad %mat4v4float %58
         %61 = OpLoad %v3float %inPos
         %62 = OpCompositeExtract %float %61 0
         %63 = OpCompositeExtract %float %61 1
         %64 = OpCompositeExtract %float %61 2
         %65 = OpCompositeConstruct %v4float %62 %63 %64 %float_1
         %66 = OpMatrixTimesVector %v4float %59 %65
         %68 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %68 %66
         %71 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %72 = OpLoad %mat4v4float %71
         %73 = OpLoad %v3float %inPos
         %74 = OpCompositeExtract %float %73 0
         %75 = OpCompositeExtract %float %73 1
         %76 = OpCompositeExtract %float %73 2
         %77 = OpCompositeConstruct %v4float %74 %75 %76 %float_1
         %78 = OpMatrixTimesVector %v4float %72 %77
               OpStore %pos %78
         %79 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %80 = OpLoad %mat4v4float %79
         %82 = OpCompositeExtract %v4float %80 0
         %83 = OpVectorShuffle %v3float %82 %82 0 1 2
         %84 = OpCompositeExtract %v4float %80 1
         %85 = OpVectorShuffle %v3float %84 %84 0 1 2
         %86 = OpCompositeExtract %v4float %80 2
         %87 = OpVectorShuffle %v3float %86 %86 0 1 2
         %88 = OpCompositeConstruct %mat3v3float %83 %85 %87
         %89 = OpLoad %v3float %inNormal
         %90 = OpMatrixTimesVector %v3float %88 %89
               OpStore %outNormal %90
               OpStore %lPos %93
         %95 = OpLoad %v3float %lPos
         %96 = OpLoad %v4float %pos
         %97 = OpVectorShuffle %v3float %96 %96 0 1 2
         %98 = OpFSub %v3float %95 %97
               OpStore %outLightVec %98
        %100 = OpLoad %v4float %pos
        %101 = OpVectorShuffle %v3float %100 %100 0 1 2
        %102 = OpFNegate %v3float %101
               OpStore %outViewVec %102
               OpReturn
               OpFunctionEnd
