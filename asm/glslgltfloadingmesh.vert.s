; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 107
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %inUV %_ %inPos %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBOScene "UBOScene"
               OpMemberName %UBOScene 0 "projection"
               OpMemberName %UBOScene 1 "view"
               OpMemberName %UBOScene 2 "lightPos"
               OpName %uboScene "uboScene"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "model"
               OpName %primitive "primitive"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBOScene 0 ColMajor
               OpMemberDecorate %UBOScene 0 Offset 0
               OpMemberDecorate %UBOScene 0 MatrixStride 16
               OpMemberDecorate %UBOScene 1 ColMajor
               OpMemberDecorate %UBOScene 1 Offset 64
               OpMemberDecorate %UBOScene 1 MatrixStride 16
               OpMemberDecorate %UBOScene 2 Offset 128
               OpDecorate %UBOScene Block
               OpDecorate %uboScene DescriptorSet 0
               OpDecorate %uboScene Binding 0
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpDecorate %PushConsts Block
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
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
   %UBOScene = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBOScene = OpTypePointer Uniform %UBOScene
   %uboScene = OpVariable %_ptr_Uniform_UBOScene Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
 %PushConsts = OpTypeStruct %mat4v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
  %primitive = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_0
         %37 = OpLoad %mat4v4float %36
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
         %40 = OpLoad %mat4v4float %39
         %41 = OpMatrixTimesMatrix %mat4v4float %37 %40
         %46 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
         %47 = OpLoad %mat4v4float %46
         %48 = OpMatrixTimesMatrix %mat4v4float %41 %47
         %50 = OpLoad %v3float %inPos
         %52 = OpCompositeExtract %float %50 0
         %53 = OpCompositeExtract %float %50 1
         %54 = OpCompositeExtract %float %50 2
         %55 = OpCompositeConstruct %v4float %52 %53 %54 %float_1
         %56 = OpMatrixTimesVector %v4float %48 %55
         %58 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %58 %56
         %61 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
         %62 = OpLoad %mat4v4float %61
         %63 = OpLoad %v3float %inPos
         %64 = OpCompositeExtract %float %63 0
         %65 = OpCompositeExtract %float %63 1
         %66 = OpCompositeExtract %float %63 2
         %67 = OpCompositeConstruct %v4float %64 %65 %66 %float_1
         %68 = OpMatrixTimesVector %v4float %62 %67
               OpStore %pos %68
         %69 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
         %70 = OpLoad %mat4v4float %69
         %72 = OpCompositeExtract %v4float %70 0
         %73 = OpVectorShuffle %v3float %72 %72 0 1 2
         %74 = OpCompositeExtract %v4float %70 1
         %75 = OpVectorShuffle %v3float %74 %74 0 1 2
         %76 = OpCompositeExtract %v4float %70 2
         %77 = OpVectorShuffle %v3float %76 %76 0 1 2
         %78 = OpCompositeConstruct %mat3v3float %73 %75 %77
         %79 = OpLoad %v3float %inNormal
         %80 = OpMatrixTimesVector %v3float %78 %79
               OpStore %outNormal %80
         %83 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
         %84 = OpLoad %mat4v4float %83
         %85 = OpCompositeExtract %v4float %84 0
         %86 = OpVectorShuffle %v3float %85 %85 0 1 2
         %87 = OpCompositeExtract %v4float %84 1
         %88 = OpVectorShuffle %v3float %87 %87 0 1 2
         %89 = OpCompositeExtract %v4float %84 2
         %90 = OpVectorShuffle %v3float %89 %89 0 1 2
         %91 = OpCompositeConstruct %mat3v3float %86 %88 %90
         %94 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_2
         %95 = OpLoad %v4float %94
         %96 = OpVectorShuffle %v3float %95 %95 0 1 2
         %97 = OpMatrixTimesVector %v3float %91 %96
               OpStore %lPos %97
         %99 = OpLoad %v3float %lPos
        %100 = OpLoad %v4float %pos
        %101 = OpVectorShuffle %v3float %100 %100 0 1 2
        %102 = OpFSub %v3float %99 %101
               OpStore %outLightVec %102
        %104 = OpLoad %v4float %pos
        %105 = OpVectorShuffle %v3float %104 %104 0 1 2
        %106 = OpFNegate %v3float %105
               OpStore %outViewVec %106
               OpReturn
               OpFunctionEnd
