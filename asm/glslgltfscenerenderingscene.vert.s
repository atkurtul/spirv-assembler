; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 102
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %inUV %outTangent %inTangent %_ %inPos %outLightVec %outViewVec
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
               OpName %outTangent "outTangent"
               OpName %inTangent "inTangent"
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
               OpMemberName %UBOScene 3 "viewPos"
               OpName %uboScene "uboScene"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "model"
               OpName %primitive "primitive"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpDecorate %outTangent Location 5
               OpDecorate %inTangent Location 4
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
               OpMemberDecorate %UBOScene 3 Offset 144
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
%_ptr_Output_v4float = OpTypePointer Output %v4float
 %outTangent = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
   %UBOScene = OpTypeStruct %mat4v4float %mat4v4float %v4float %v4float
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
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v4float = OpTypePointer Function %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
 %outViewVec = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %27 = OpLoad %v4float %inTangent
               OpStore %outTangent %27
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_0
         %42 = OpLoad %mat4v4float %41
         %44 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
         %45 = OpLoad %mat4v4float %44
         %46 = OpMatrixTimesMatrix %mat4v4float %42 %45
         %51 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
         %52 = OpLoad %mat4v4float %51
         %53 = OpMatrixTimesMatrix %mat4v4float %46 %52
         %55 = OpLoad %v3float %inPos
         %57 = OpCompositeExtract %float %55 0
         %58 = OpCompositeExtract %float %55 1
         %59 = OpCompositeExtract %float %55 2
         %60 = OpCompositeConstruct %v4float %57 %58 %59 %float_1
         %61 = OpMatrixTimesVector %v4float %53 %60
         %62 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %62 %61
         %63 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
         %64 = OpLoad %mat4v4float %63
         %66 = OpCompositeExtract %v4float %64 0
         %67 = OpVectorShuffle %v3float %66 %66 0 1 2
         %68 = OpCompositeExtract %v4float %64 1
         %69 = OpVectorShuffle %v3float %68 %68 0 1 2
         %70 = OpCompositeExtract %v4float %64 2
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpCompositeConstruct %mat3v3float %67 %69 %71
         %73 = OpLoad %v3float %inNormal
         %74 = OpMatrixTimesVector %v3float %72 %73
               OpStore %outNormal %74
         %77 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
         %78 = OpLoad %mat4v4float %77
         %79 = OpLoad %v3float %inPos
         %80 = OpCompositeExtract %float %79 0
         %81 = OpCompositeExtract %float %79 1
         %82 = OpCompositeExtract %float %79 2
         %83 = OpCompositeConstruct %v4float %80 %81 %82 %float_1
         %84 = OpMatrixTimesVector %v4float %78 %83
               OpStore %pos %84
         %88 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_2
         %89 = OpLoad %v4float %88
         %90 = OpVectorShuffle %v3float %89 %89 0 1 2
         %91 = OpLoad %v4float %pos
         %92 = OpVectorShuffle %v3float %91 %91 0 1 2
         %93 = OpFSub %v3float %90 %92
               OpStore %outLightVec %93
         %96 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_3
         %97 = OpLoad %v4float %96
         %98 = OpVectorShuffle %v3float %97 %97 0 1 2
         %99 = OpLoad %v4float %pos
        %100 = OpVectorShuffle %v3float %99 %99 0 1 2
        %101 = OpFSub %v3float %98 %100
               OpStore %outViewVec %101
               OpReturn
               OpFunctionEnd
