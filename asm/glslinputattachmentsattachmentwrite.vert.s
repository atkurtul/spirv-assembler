; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 57
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outColor %inColor %outNormal %inNormal %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 1
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 2
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_2 = OpConstant %int 2
      %int_1 = OpConstant %int 1
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
%outLightVec = OpVariable %_ptr_Output_v3float Output
    %float_0 = OpConstant %float 0
    %float_5 = OpConstant %float 5
   %float_15 = OpConstant %float 15
         %51 = OpConstantComposite %v3float %float_0 %float_5 %float_15
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %19 = OpLoad %mat4v4float %18
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %22 = OpLoad %mat4v4float %21
         %23 = OpMatrixTimesMatrix %mat4v4float %19 %22
         %25 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %26 = OpLoad %mat4v4float %25
         %27 = OpMatrixTimesMatrix %mat4v4float %23 %26
         %31 = OpLoad %v3float %inPos
         %33 = OpCompositeExtract %float %31 0
         %34 = OpCompositeExtract %float %31 1
         %35 = OpCompositeExtract %float %31 2
         %36 = OpCompositeConstruct %v4float %33 %34 %35 %float_1
         %37 = OpMatrixTimesVector %v4float %27 %36
         %39 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %39 %37
         %43 = OpLoad %v3float %inColor
               OpStore %outColor %43
         %46 = OpLoad %v3float %inNormal
               OpStore %outNormal %46
         %52 = OpLoad %v3float %inPos
         %53 = OpFSub %v3float %51 %52
               OpStore %outLightVec %53
         %55 = OpLoad %v3float %inPos
         %56 = OpFNegate %v3float %55
               OpStore %outViewVec %56
               OpReturn
               OpFunctionEnd
