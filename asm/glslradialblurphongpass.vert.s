; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 69
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %_ %pos %outEyePos %outLightVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outUV "outUV"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "gradientPos"
               OpName %ubo "ubo"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %pos "pos"
               OpName %outEyePos "outEyePos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outUV Location 4
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %pos Location 0
               OpDecorate %outEyePos Location 2
               OpDecorate %outLightVec Location 3
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
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_0 = OpConstant %float 0
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
%_ptr_Input_v4float = OpTypePointer Input %v4float
        %pos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outEyePos = OpVariable %_ptr_Output_v3float Output
%_ptr_Function_v4float = OpTypePointer Function %v4float
   %float_n5 = OpConstant %float -5
    %float_1 = OpConstant %float 1
         %61 = OpConstantComposite %v4float %float_0 %float_0 %float_n5 %float_1
%outLightVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %lightPos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %27 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
         %28 = OpLoad %float %27
         %30 = OpCompositeConstruct %v2float %28 %float_0
               OpStore %outUV %30
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %37 = OpLoad %mat4v4float %36
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %40 = OpLoad %mat4v4float %39
         %41 = OpMatrixTimesMatrix %mat4v4float %37 %40
         %44 = OpLoad %v4float %pos
         %45 = OpMatrixTimesVector %v4float %41 %44
         %47 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %47 %45
         %49 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %50 = OpLoad %mat4v4float %49
         %51 = OpLoad %v4float %pos
         %52 = OpMatrixTimesVector %v4float %50 %51
         %53 = OpCompositeExtract %float %52 0
         %54 = OpCompositeExtract %float %52 1
         %55 = OpCompositeExtract %float %52 2
         %56 = OpCompositeConstruct %v3float %53 %54 %55
               OpStore %outEyePos %56
               OpStore %lightPos %61
         %63 = OpLoad %v4float %lightPos
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpLoad %v4float %pos
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpFSub %v3float %64 %66
         %68 = OpExtInst %v3float %1 Normalize %67
               OpStore %outLightVec %68
               OpReturn
               OpFunctionEnd
