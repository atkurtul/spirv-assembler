; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 78
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %outNormal %inNormal %inPos %_ %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
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
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 2
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
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
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
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
     %eyePos = OpVariable %_ptr_Function_v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v2float %inUV
               OpStore %outUV %12
         %18 = OpLoad %v3float %inNormal
               OpStore %outNormal %18
         %29 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %30 = OpLoad %mat4v4float %29
         %35 = OpAccessChain %_ptr_Input_float %inPos %uint_0
         %36 = OpLoad %float %35
         %38 = OpAccessChain %_ptr_Input_float %inPos %uint_1
         %39 = OpLoad %float %38
         %41 = OpAccessChain %_ptr_Input_float %inPos %uint_2
         %42 = OpLoad %float %41
         %44 = OpCompositeConstruct %v4float %36 %39 %42 %float_1
         %45 = OpMatrixTimesVector %v4float %30 %44
               OpStore %eyePos %45
         %50 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %51 = OpLoad %mat4v4float %50
         %52 = OpLoad %v4float %eyePos
         %53 = OpMatrixTimesVector %v4float %51 %52
         %55 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %55 %53
         %57 = OpLoad %v3float %inPos
         %58 = OpCompositeExtract %float %57 0
         %59 = OpCompositeExtract %float %57 1
         %60 = OpCompositeExtract %float %57 2
         %61 = OpCompositeConstruct %v4float %58 %59 %60 %float_1
               OpStore %pos %61
         %66 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %67 = OpLoad %v4float %66
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
               OpStore %lPos %68
         %70 = OpLoad %v3float %lPos
         %71 = OpLoad %v4float %pos
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpFSub %v3float %70 %72
               OpStore %outLightVec %73
         %75 = OpLoad %v4float %pos
         %76 = OpVectorShuffle %v3float %75 %75 0 1 2
         %77 = OpFNegate %v3float %76
               OpStore %outViewVec %77
               OpReturn
               OpFunctionEnd
