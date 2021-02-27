; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 53
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %inNormal %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %inNormal "inNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "lightPos"
               OpMemberName %UBO 3 "outlineWidth"
               OpName %ubo "ubo"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpDecorate %inPos Location 0
               OpDecorate %inNormal Location 2
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 144
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Input_float = OpTypePointer Input %float
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
         %13 = OpLoad %v4float %inPos
         %14 = OpVectorShuffle %v3float %13 %13 0 1 2
         %17 = OpLoad %v3float %inNormal
         %25 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %26 = OpLoad %float %25
         %27 = OpVectorTimesScalar %v3float %17 %26
         %28 = OpFAdd %v3float %14 %27
         %32 = OpAccessChain %_ptr_Input_float %inPos %uint_3
         %33 = OpLoad %float %32
         %34 = OpCompositeExtract %float %28 0
         %35 = OpCompositeExtract %float %28 1
         %36 = OpCompositeExtract %float %28 2
         %37 = OpCompositeConstruct %v4float %34 %35 %36 %33
               OpStore %pos %37
         %43 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %44 = OpLoad %mat4v4float %43
         %46 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %47 = OpLoad %mat4v4float %46
         %48 = OpMatrixTimesMatrix %mat4v4float %44 %47
         %49 = OpLoad %v4float %pos
         %50 = OpMatrixTimesVector %v4float %48 %49
         %52 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %52 %50
               OpReturn
               OpFunctionEnd
