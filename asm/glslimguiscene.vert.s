; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 91
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %_ %inPos %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
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
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
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
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %27 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %28 = OpLoad %mat4v4float %27
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %31 = OpLoad %mat4v4float %30
         %32 = OpMatrixTimesMatrix %mat4v4float %28 %31
         %34 = OpLoad %v3float %inPos
         %36 = OpCompositeExtract %float %34 0
         %37 = OpCompositeExtract %float %34 1
         %38 = OpCompositeExtract %float %34 2
         %39 = OpCompositeConstruct %v4float %36 %37 %38 %float_1
         %40 = OpMatrixTimesVector %v4float %32 %39
         %42 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %42 %40
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %46 = OpLoad %mat4v4float %45
         %47 = OpLoad %v3float %inPos
         %48 = OpCompositeExtract %float %47 0
         %49 = OpCompositeExtract %float %47 1
         %50 = OpCompositeExtract %float %47 2
         %51 = OpCompositeConstruct %v4float %48 %49 %50 %float_1
         %52 = OpMatrixTimesVector %v4float %46 %51
               OpStore %pos %52
         %53 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %54 = OpLoad %mat4v4float %53
         %56 = OpCompositeExtract %v4float %54 0
         %57 = OpVectorShuffle %v3float %56 %56 0 1 2
         %58 = OpCompositeExtract %v4float %54 1
         %59 = OpVectorShuffle %v3float %58 %58 0 1 2
         %60 = OpCompositeExtract %v4float %54 2
         %61 = OpVectorShuffle %v3float %60 %60 0 1 2
         %62 = OpCompositeConstruct %mat3v3float %57 %59 %61
         %63 = OpLoad %v3float %inNormal
         %64 = OpMatrixTimesVector %v3float %62 %63
               OpStore %outNormal %64
         %67 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %68 = OpLoad %mat4v4float %67
         %69 = OpCompositeExtract %v4float %68 0
         %70 = OpVectorShuffle %v3float %69 %69 0 1 2
         %71 = OpCompositeExtract %v4float %68 1
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpCompositeExtract %v4float %68 2
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpCompositeConstruct %mat3v3float %70 %72 %74
         %78 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %79 = OpLoad %v4float %78
         %80 = OpVectorShuffle %v3float %79 %79 0 1 2
         %81 = OpMatrixTimesVector %v3float %75 %80
               OpStore %lPos %81
         %83 = OpLoad %v3float %lPos
         %84 = OpLoad %v4float %pos
         %85 = OpVectorShuffle %v3float %84 %84 0 1 2
         %86 = OpFSub %v3float %83 %85
               OpStore %outLightVec %86
         %88 = OpLoad %v4float %pos
         %89 = OpVectorShuffle %v3float %88 %88 0 1 2
         %90 = OpFNegate %v3float %89
               OpStore %outViewVec %90
               OpReturn
               OpFunctionEnd
