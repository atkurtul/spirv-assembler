; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 105
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outNormal %inNormal %_ %inPos %outLightVec %outViewVec %outShadowCoord %inUV
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "lightSpace"
               OpMemberName %UBO 4 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %outShadowCoord "outShadowCoord"
               OpName %inUV "inUV"
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 ColMajor
               OpMemberDecorate %UBO 3 Offset 192
               OpMemberDecorate %UBO 3 MatrixStride 16
               OpMemberDecorate %UBO 4 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
               OpDecorate %outShadowCoord Location 4
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
 %outViewVec = OpVariable %_ptr_Output_v3float Output
%outShadowCoord = OpVariable %_ptr_Output_v4float Output
  %float_0_5 = OpConstant %float 0.5
    %float_0 = OpConstant %float 0
         %84 = OpConstantComposite %v4float %float_0_5 %float_0 %float_0 %float_0
         %85 = OpConstantComposite %v4float %float_0 %float_0_5 %float_0 %float_0
         %86 = OpConstantComposite %v4float %float_0 %float_0 %float_1 %float_0
         %87 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0 %float_1
         %88 = OpConstantComposite %mat4v4float %84 %85 %86 %87
      %int_3 = OpConstant %int 3
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %15 = OpLoad %v3float %inNormal
               OpStore %outNormal %15
         %27 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %28 = OpLoad %mat4v4float %27
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %31 = OpLoad %mat4v4float %30
         %32 = OpMatrixTimesMatrix %mat4v4float %28 %31
         %34 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %35 = OpLoad %mat4v4float %34
         %36 = OpMatrixTimesMatrix %mat4v4float %32 %35
         %38 = OpLoad %v3float %inPos
         %40 = OpCompositeExtract %float %38 0
         %41 = OpCompositeExtract %float %38 1
         %42 = OpCompositeExtract %float %38 2
         %43 = OpCompositeConstruct %v4float %40 %41 %42 %float_1
         %44 = OpMatrixTimesVector %v4float %36 %43
         %46 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %46 %44
         %49 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %50 = OpLoad %mat4v4float %49
         %51 = OpLoad %v3float %inPos
         %52 = OpCompositeExtract %float %51 0
         %53 = OpCompositeExtract %float %51 1
         %54 = OpCompositeExtract %float %51 2
         %55 = OpCompositeConstruct %v4float %52 %53 %54 %float_1
         %56 = OpMatrixTimesVector %v4float %50 %55
               OpStore %pos %56
         %57 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %58 = OpLoad %mat4v4float %57
         %60 = OpCompositeExtract %v4float %58 0
         %61 = OpVectorShuffle %v3float %60 %60 0 1 2
         %62 = OpCompositeExtract %v4float %58 1
         %63 = OpVectorShuffle %v3float %62 %62 0 1 2
         %64 = OpCompositeExtract %v4float %58 2
         %65 = OpVectorShuffle %v3float %64 %64 0 1 2
         %66 = OpCompositeConstruct %mat3v3float %61 %63 %65
         %67 = OpLoad %v3float %inNormal
         %68 = OpMatrixTimesVector %v3float %66 %67
               OpStore %outNormal %68
         %72 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_4
         %73 = OpLoad %v3float %72
         %74 = OpLoad %v3float %inPos
         %75 = OpFSub %v3float %73 %74
         %76 = OpExtInst %v3float %1 Normalize %75
               OpStore %outLightVec %76
         %78 = OpLoad %v4float %pos
         %79 = OpVectorShuffle %v3float %78 %78 0 1 2
         %80 = OpFNegate %v3float %79
               OpStore %outViewVec %80
         %90 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_3
         %91 = OpLoad %mat4v4float %90
         %92 = OpMatrixTimesMatrix %mat4v4float %88 %91
         %93 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %94 = OpLoad %mat4v4float %93
         %95 = OpMatrixTimesMatrix %mat4v4float %92 %94
         %96 = OpLoad %v3float %inPos
         %97 = OpCompositeExtract %float %96 0
         %98 = OpCompositeExtract %float %96 1
         %99 = OpCompositeExtract %float %96 2
        %100 = OpCompositeConstruct %v4float %97 %98 %99 %float_1
        %101 = OpMatrixTimesVector %v4float %95 %100
               OpStore %outShadowCoord %101
               OpReturn
               OpFunctionEnd
