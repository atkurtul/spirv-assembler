; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 87
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %_ %inPos %outNormal %inNormal %outLightVec %inColor
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %inColor "inColor"
               OpDecorate %outColor Location 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
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
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 2
               OpDecorate %outLightVec Location 2
               OpDecorate %inColor Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
         %12 = OpConstantComposite %v3float %float_1 %float_0 %float_0
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
               OpStore %outColor %12
         %24 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %25 = OpLoad %mat4v4float %24
         %27 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %28 = OpLoad %mat4v4float %27
         %29 = OpMatrixTimesMatrix %mat4v4float %25 %28
         %32 = OpLoad %v3float %inPos
         %33 = OpCompositeExtract %float %32 0
         %34 = OpCompositeExtract %float %32 1
         %35 = OpCompositeExtract %float %32 2
         %36 = OpCompositeConstruct %v4float %33 %34 %35 %float_1
         %37 = OpMatrixTimesVector %v4float %29 %36
         %39 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %39 %37
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %42 = OpLoad %mat4v4float %41
         %44 = OpCompositeExtract %v4float %42 0
         %45 = OpVectorShuffle %v3float %44 %44 0 1 2
         %46 = OpCompositeExtract %v4float %42 1
         %47 = OpVectorShuffle %v3float %46 %46 0 1 2
         %48 = OpCompositeExtract %v4float %42 2
         %49 = OpVectorShuffle %v3float %48 %48 0 1 2
         %50 = OpCompositeConstruct %mat3v3float %45 %47 %49
         %52 = OpLoad %v3float %inNormal
         %53 = OpMatrixTimesVector %v3float %50 %52
               OpStore %outNormal %53
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %57 = OpLoad %mat4v4float %56
         %58 = OpLoad %v3float %inPos
         %59 = OpCompositeExtract %float %58 0
         %60 = OpCompositeExtract %float %58 1
         %61 = OpCompositeExtract %float %58 2
         %62 = OpCompositeConstruct %v4float %59 %60 %61 %float_1
         %63 = OpMatrixTimesVector %v4float %57 %62
               OpStore %pos %63
         %66 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %67 = OpLoad %mat4v4float %66
         %68 = OpCompositeExtract %v4float %67 0
         %69 = OpVectorShuffle %v3float %68 %68 0 1 2
         %70 = OpCompositeExtract %v4float %67 1
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpCompositeExtract %v4float %67 2
         %73 = OpVectorShuffle %v3float %72 %72 0 1 2
         %74 = OpCompositeConstruct %mat3v3float %69 %71 %73
         %77 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %78 = OpLoad %v4float %77
         %79 = OpVectorShuffle %v3float %78 %78 0 1 2
         %80 = OpMatrixTimesVector %v3float %74 %79
               OpStore %lPos %80
         %82 = OpLoad %v3float %lPos
         %83 = OpLoad %v4float %pos
         %84 = OpVectorShuffle %v3float %83 %83 0 1 2
         %85 = OpFSub %v3float %82 %84
               OpStore %outLightVec %85
               OpReturn
               OpFunctionEnd
