; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 99
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
               OpMemberName %UBOScene 2 "model"
               OpMemberName %UBOScene 3 "lightPos"
               OpMemberName %UBOScene 4 "viewPos"
               OpMemberName %UBOScene 5 "colorShadingRates"
               OpName %uboScene "uboScene"
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
               OpMemberDecorate %UBOScene 2 ColMajor
               OpMemberDecorate %UBOScene 2 Offset 128
               OpMemberDecorate %UBOScene 2 MatrixStride 16
               OpMemberDecorate %UBOScene 3 Offset 192
               OpMemberDecorate %UBOScene 4 Offset 208
               OpMemberDecorate %UBOScene 5 Offset 224
               OpDecorate %UBOScene Block
               OpDecorate %uboScene DescriptorSet 0
               OpDecorate %uboScene Binding 0
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
   %UBOScene = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %v4float %int
%_ptr_Uniform_UBOScene = OpTypePointer Uniform %UBOScene
   %uboScene = OpVariable %_ptr_Uniform_UBOScene Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v4float = OpTypePointer Function %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
 %outViewVec = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
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
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_2
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %46 %49
         %52 = OpLoad %v3float %inPos
         %54 = OpCompositeExtract %float %52 0
         %55 = OpCompositeExtract %float %52 1
         %56 = OpCompositeExtract %float %52 2
         %57 = OpCompositeConstruct %v4float %54 %55 %56 %float_1
         %58 = OpMatrixTimesVector %v4float %50 %57
         %59 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %59 %58
         %60 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_2
         %61 = OpLoad %mat4v4float %60
         %63 = OpCompositeExtract %v4float %61 0
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpCompositeExtract %v4float %61 1
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpCompositeExtract %v4float %61 2
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
         %69 = OpCompositeConstruct %mat3v3float %64 %66 %68
         %70 = OpLoad %v3float %inNormal
         %71 = OpMatrixTimesVector %v3float %69 %70
               OpStore %outNormal %71
         %74 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_2
         %75 = OpLoad %mat4v4float %74
         %76 = OpLoad %v3float %inPos
         %77 = OpCompositeExtract %float %76 0
         %78 = OpCompositeExtract %float %76 1
         %79 = OpCompositeExtract %float %76 2
         %80 = OpCompositeConstruct %v4float %77 %78 %79 %float_1
         %81 = OpMatrixTimesVector %v4float %75 %80
               OpStore %pos %81
         %85 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_3
         %86 = OpLoad %v4float %85
         %87 = OpVectorShuffle %v3float %86 %86 0 1 2
         %88 = OpLoad %v4float %pos
         %89 = OpVectorShuffle %v3float %88 %88 0 1 2
         %90 = OpFSub %v3float %87 %89
               OpStore %outLightVec %90
         %93 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_4
         %94 = OpLoad %v4float %93
         %95 = OpVectorShuffle %v3float %94 %94 0 1 2
         %96 = OpLoad %v4float %pos
         %97 = OpVectorShuffle %v3float %96 %96 0 1 2
         %98 = OpFSub %v3float %95 %97
               OpStore %outViewVec %98
               OpReturn
               OpFunctionEnd
