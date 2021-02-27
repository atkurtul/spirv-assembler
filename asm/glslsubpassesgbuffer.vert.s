; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 77
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outWorldPos %outNormal %inNormal %outColor %inColor %outTangent
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
               OpName %outWorldPos "outWorldPos"
               OpName %mNormal "mNormal"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outTangent "outTangent"
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
               OpDecorate %outWorldPos Location 2
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 2
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
               OpDecorate %outTangent Location 3
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
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outWorldPos = OpVariable %_ptr_Output_v3float Output
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_ptr_Output_float = OpTypePointer Output %float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
 %outTangent = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
    %mNormal = OpVariable %_ptr_Function_mat3v3float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %19 = OpLoad %mat4v4float %18
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %22 = OpLoad %mat4v4float %21
         %23 = OpMatrixTimesMatrix %mat4v4float %19 %22
         %25 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %26 = OpLoad %mat4v4float %25
         %27 = OpMatrixTimesMatrix %mat4v4float %23 %26
         %30 = OpLoad %v4float %inPos
         %31 = OpMatrixTimesVector %v4float %27 %30
         %33 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %33 %31
         %37 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %38 = OpLoad %mat4v4float %37
         %39 = OpLoad %v4float %inPos
         %40 = OpMatrixTimesVector %v4float %38 %39
         %41 = OpCompositeExtract %float %40 0
         %42 = OpCompositeExtract %float %40 1
         %43 = OpCompositeExtract %float %40 2
         %44 = OpCompositeConstruct %v3float %41 %42 %43
               OpStore %outWorldPos %44
         %48 = OpAccessChain %_ptr_Output_float %outWorldPos %uint_1
         %49 = OpLoad %float %48
         %50 = OpFNegate %float %49
         %51 = OpAccessChain %_ptr_Output_float %outWorldPos %uint_1
               OpStore %51 %50
         %55 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %56 = OpLoad %mat4v4float %55
         %57 = OpCompositeExtract %v4float %56 0
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpCompositeExtract %v4float %56 1
         %60 = OpVectorShuffle %v3float %59 %59 0 1 2
         %61 = OpCompositeExtract %v4float %56 2
         %62 = OpVectorShuffle %v3float %61 %61 0 1 2
         %63 = OpCompositeConstruct %mat3v3float %58 %60 %62
         %64 = OpExtInst %mat3v3float %1 MatrixInverse %63
         %65 = OpTranspose %mat3v3float %64
               OpStore %mNormal %65
         %67 = OpLoad %mat3v3float %mNormal
         %70 = OpLoad %v3float %inNormal
         %71 = OpExtInst %v3float %1 Normalize %70
         %72 = OpMatrixTimesVector %v3float %67 %71
               OpStore %outNormal %72
         %75 = OpLoad %v3float %inColor
               OpStore %outColor %75
               OpReturn
               OpFunctionEnd
