; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 72
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %_ %outLightVec %outViewVec %outNormal %inNormal
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %eyePos "eyePos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
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
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %outLightVec Location 2
               OpDecorate %outViewVec Location 1
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %float_1 = OpConstant %float 1
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
     %eyePos = OpVariable %_ptr_Function_v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %17 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %18 = OpLoad %mat4v4float %17
         %25 = OpAccessChain %_ptr_Input_float %inPos %uint_0
         %26 = OpLoad %float %25
         %28 = OpAccessChain %_ptr_Input_float %inPos %uint_1
         %29 = OpLoad %float %28
         %31 = OpAccessChain %_ptr_Input_float %inPos %uint_2
         %32 = OpLoad %float %31
         %34 = OpCompositeConstruct %v4float %26 %29 %32 %float_1
         %35 = OpMatrixTimesVector %v4float %18 %34
               OpStore %eyePos %35
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %41 = OpLoad %mat4v4float %40
         %42 = OpLoad %v4float %eyePos
         %43 = OpMatrixTimesVector %v4float %41 %42
         %45 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %45 %43
         %47 = OpLoad %v3float %inPos
         %48 = OpCompositeExtract %float %47 0
         %49 = OpCompositeExtract %float %47 1
         %50 = OpCompositeExtract %float %47 2
         %51 = OpCompositeConstruct %v4float %48 %49 %50 %float_1
               OpStore %pos %51
         %56 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %57 = OpLoad %v4float %56
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
               OpStore %lPos %58
         %61 = OpLoad %v3float %lPos
         %62 = OpLoad %v4float %pos
         %63 = OpVectorShuffle %v3float %62 %62 0 1 2
         %64 = OpFSub %v3float %61 %63
               OpStore %outLightVec %64
         %66 = OpLoad %v4float %pos
         %67 = OpVectorShuffle %v3float %66 %66 0 1 2
         %68 = OpFNegate %v3float %67
               OpStore %outViewVec %68
         %71 = OpLoad %v3float %inNormal
               OpStore %outNormal %71
               OpReturn
               OpFunctionEnd
