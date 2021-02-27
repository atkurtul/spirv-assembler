; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 108
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %outLodBias %outSamplerIndex %inPos %_ %outNormal %inNormal %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outLodBias "outLodBias"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "viewPos"
               OpMemberName %UBO 4 "lodBias"
               OpMemberName %UBO 5 "samplerIndex"
               OpName %ubo "ubo"
               OpName %outSamplerIndex "outSamplerIndex"
               OpName %worldPos "worldPos"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %outLodBias Location 1
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
               OpMemberDecorate %UBO 4 Offset 208
               OpMemberDecorate %UBO 5 Offset 212
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outSamplerIndex Flat
               OpDecorate %outSamplerIndex Location 2
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %outNormal Location 3
               OpDecorate %inNormal Location 2
               OpDecorate %outLightVec Location 5
               OpDecorate %outViewVec Location 4
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
         %15 = OpConstantComposite %v2float %float_2 %float_1
%_ptr_Output_float = OpTypePointer Output %float
 %outLodBias = OpVariable %_ptr_Output_float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_4 = OpConstant %int 4
%_ptr_Uniform_float = OpTypePointer Uniform %float
%_ptr_Output_int = OpTypePointer Output %int
%outSamplerIndex = OpVariable %_ptr_Output_int Output
      %int_5 = OpConstant %int 5
%_ptr_Uniform_int = OpTypePointer Uniform %int
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
      %int_1 = OpConstant %int 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
  %float_n30 = OpConstant %float -30
    %float_0 = OpConstant %float 0
         %95 = OpConstantComposite %v3float %float_n30 %float_0 %float_0
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
   %worldPos = OpVariable %_ptr_Function_v3float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v2float %inUV
         %16 = OpFMul %v2float %12 %15
               OpStore %outUV %16
         %27 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
         %28 = OpLoad %float %27
               OpStore %outLodBias %28
         %33 = OpAccessChain %_ptr_Uniform_int %ubo %int_5
         %34 = OpLoad %int %33
               OpStore %outSamplerIndex %34
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %41 = OpLoad %mat4v4float %40
         %44 = OpLoad %v3float %inPos
         %45 = OpCompositeExtract %float %44 0
         %46 = OpCompositeExtract %float %44 1
         %47 = OpCompositeExtract %float %44 2
         %48 = OpCompositeConstruct %v4float %45 %46 %47 %float_1
         %49 = OpMatrixTimesVector %v4float %41 %48
         %50 = OpCompositeExtract %float %49 0
         %51 = OpCompositeExtract %float %49 1
         %52 = OpCompositeExtract %float %49 2
         %53 = OpCompositeConstruct %v3float %50 %51 %52
               OpStore %worldPos %53
         %58 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %59 = OpLoad %mat4v4float %58
         %61 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %62 = OpLoad %mat4v4float %61
         %63 = OpMatrixTimesMatrix %mat4v4float %59 %62
         %64 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %65 = OpLoad %mat4v4float %64
         %66 = OpMatrixTimesMatrix %mat4v4float %63 %65
         %67 = OpLoad %v3float %inPos
         %68 = OpCompositeExtract %float %67 0
         %69 = OpCompositeExtract %float %67 1
         %70 = OpCompositeExtract %float %67 2
         %71 = OpCompositeConstruct %v4float %68 %69 %70 %float_1
         %72 = OpMatrixTimesVector %v4float %66 %71
         %74 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %74 %72
         %77 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %78 = OpLoad %mat4v4float %77
         %79 = OpTranspose %mat4v4float %78
         %80 = OpExtInst %mat4v4float %1 MatrixInverse %79
         %82 = OpCompositeExtract %v4float %80 0
         %83 = OpVectorShuffle %v3float %82 %82 0 1 2
         %84 = OpCompositeExtract %v4float %80 1
         %85 = OpVectorShuffle %v3float %84 %84 0 1 2
         %86 = OpCompositeExtract %v4float %80 2
         %87 = OpVectorShuffle %v3float %86 %86 0 1 2
         %88 = OpCompositeConstruct %mat3v3float %83 %85 %87
         %90 = OpLoad %v3float %inNormal
         %91 = OpMatrixTimesVector %v3float %88 %90
               OpStore %outNormal %91
               OpStore %lightPos %95
         %97 = OpLoad %v3float %worldPos
         %98 = OpLoad %v3float %lightPos
         %99 = OpFSub %v3float %97 %98
               OpStore %outLightVec %99
        %103 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
        %104 = OpLoad %v4float %103
        %105 = OpVectorShuffle %v3float %104 %104 0 1 2
        %106 = OpLoad %v3float %worldPos
        %107 = OpFSub %v3float %105 %106
               OpStore %outViewVec %107
               OpReturn
               OpFunctionEnd
