; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 75
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outNormal %inNormal %_ %inPos %outEyePos %outLightVec %outWorldPos %outLightPos
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
               OpMemberName %UBO 3 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outEyePos "outEyePos"
               OpName %outLightVec "outLightVec"
               OpName %outWorldPos "outWorldPos"
               OpName %outLightPos "outLightPos"
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 2
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
               OpMemberDecorate %UBO 3 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outEyePos Location 2
               OpDecorate %outLightVec Location 3
               OpDecorate %outWorldPos Location 4
               OpDecorate %outLightPos Location 5
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outEyePos = OpVariable %_ptr_Output_v3float Output
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outWorldPos = OpVariable %_ptr_Output_v3float Output
%outLightPos = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
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
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %49 = OpLoad %mat4v4float %48
         %50 = OpLoad %v3float %inPos
         %51 = OpCompositeExtract %float %50 0
         %52 = OpCompositeExtract %float %50 1
         %53 = OpCompositeExtract %float %50 2
         %54 = OpCompositeConstruct %v4float %51 %52 %53 %float_1
         %55 = OpMatrixTimesVector %v4float %49 %54
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v3float %56 %57 %58
               OpStore %outEyePos %59
         %63 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %64 = OpLoad %v4float %63
         %65 = OpVectorShuffle %v3float %64 %64 0 1 2
         %66 = OpLoad %v3float %inPos
         %67 = OpFSub %v3float %65 %66
         %68 = OpExtInst %v3float %1 Normalize %67
               OpStore %outLightVec %68
         %70 = OpLoad %v3float %inPos
               OpStore %outWorldPos %70
         %72 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %73 = OpLoad %v4float %72
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
               OpStore %outLightPos %74
               OpReturn
               OpFunctionEnd
