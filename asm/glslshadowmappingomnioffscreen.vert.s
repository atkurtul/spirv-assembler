; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 56
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outPos %outLightPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "lightPos"
               OpName %ubo "ubo"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "view"
               OpName %pushConsts "pushConsts"
               OpName %inPos "inPos"
               OpName %outPos "outPos"
               OpName %outLightPos "outLightPos"
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
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpDecorate %PushConsts Block
               OpDecorate %inPos Location 0
               OpDecorate %outPos Location 0
               OpDecorate %outLightPos Location 1
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
 %PushConsts = OpTypeStruct %mat4v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
      %int_2 = OpConstant %int 2
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
     %outPos = OpVariable %_ptr_Output_v4float Output
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outLightPos = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %19 = OpLoad %mat4v4float %18
         %24 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %25 = OpLoad %mat4v4float %24
         %26 = OpMatrixTimesMatrix %mat4v4float %19 %25
         %28 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %29 = OpLoad %mat4v4float %28
         %30 = OpMatrixTimesMatrix %mat4v4float %26 %29
         %34 = OpLoad %v3float %inPos
         %36 = OpCompositeExtract %float %34 0
         %37 = OpCompositeExtract %float %34 1
         %38 = OpCompositeExtract %float %34 2
         %39 = OpCompositeConstruct %v4float %36 %37 %38 %float_1
         %40 = OpMatrixTimesVector %v4float %30 %39
         %42 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %42 %40
         %44 = OpLoad %v3float %inPos
         %45 = OpCompositeExtract %float %44 0
         %46 = OpCompositeExtract %float %44 1
         %47 = OpCompositeExtract %float %44 2
         %48 = OpCompositeConstruct %v4float %45 %46 %47 %float_1
               OpStore %outPos %48
         %53 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %54 = OpLoad %v4float %53
         %55 = OpVectorShuffle %v3float %54 %54 0 1 2
               OpStore %outLightPos %55
               OpReturn
               OpFunctionEnd
