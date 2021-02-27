; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 120
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %inPos %_ %outNormal %inNormal %outLightVec %outViewVec %outLodBias
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "viewPos"
               OpMemberName %UBO 3 "depth"
               OpName %ubo "ubo"
               OpName %worldPos "worldPos"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %pos "pos"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lightPos "lightPos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %outLodBias "outLodBias"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
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
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %outNormal Location 2
               OpDecorate %inNormal Location 2
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
               OpDecorate %outLodBias Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
      %outUV = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
         %91 = OpConstantComposite %v3float %float_0 %float_0 %float_0
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Output_float = OpTypePointer Output %float
 %outLodBias = OpVariable %_ptr_Output_float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %worldPos = OpVariable %_ptr_Function_v3float Function
        %pos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %13 = OpLoad %v2float %inUV
         %22 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %23 = OpLoad %float %22
         %24 = OpCompositeExtract %float %13 0
         %25 = OpCompositeExtract %float %13 1
         %26 = OpCompositeConstruct %v3float %24 %25 %23
               OpStore %outUV %26
         %31 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %32 = OpLoad %mat4v4float %31
         %35 = OpLoad %v3float %inPos
         %37 = OpCompositeExtract %float %35 0
         %38 = OpCompositeExtract %float %35 1
         %39 = OpCompositeExtract %float %35 2
         %40 = OpCompositeConstruct %v4float %37 %38 %39 %float_1
         %41 = OpMatrixTimesVector %v4float %32 %40
         %42 = OpCompositeExtract %float %41 0
         %43 = OpCompositeExtract %float %41 1
         %44 = OpCompositeExtract %float %41 2
         %45 = OpCompositeConstruct %v3float %42 %43 %44
               OpStore %worldPos %45
         %50 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %51 = OpLoad %mat4v4float %50
         %52 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %53 = OpLoad %mat4v4float %52
         %54 = OpMatrixTimesMatrix %mat4v4float %51 %53
         %55 = OpLoad %v3float %inPos
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v4float %56 %57 %58 %float_1
         %60 = OpMatrixTimesVector %v4float %54 %59
         %62 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %62 %60
         %65 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %66 = OpLoad %mat4v4float %65
         %67 = OpLoad %v3float %inPos
         %68 = OpCompositeExtract %float %67 0
         %69 = OpCompositeExtract %float %67 1
         %70 = OpCompositeExtract %float %67 2
         %71 = OpCompositeConstruct %v4float %68 %69 %70 %float_1
         %72 = OpMatrixTimesVector %v4float %66 %71
               OpStore %pos %72
         %74 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %75 = OpLoad %mat4v4float %74
         %76 = OpTranspose %mat4v4float %75
         %77 = OpExtInst %mat4v4float %1 MatrixInverse %76
         %79 = OpCompositeExtract %v4float %77 0
         %80 = OpVectorShuffle %v3float %79 %79 0 1 2
         %81 = OpCompositeExtract %v4float %77 1
         %82 = OpVectorShuffle %v3float %81 %81 0 1 2
         %83 = OpCompositeExtract %v4float %77 2
         %84 = OpVectorShuffle %v3float %83 %83 0 1 2
         %85 = OpCompositeConstruct %mat3v3float %80 %82 %84
         %87 = OpLoad %v3float %inNormal
         %88 = OpMatrixTimesVector %v3float %85 %87
               OpStore %outNormal %88
               OpStore %lightPos %91
         %93 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %94 = OpLoad %mat4v4float %93
         %95 = OpCompositeExtract %v4float %94 0
         %96 = OpVectorShuffle %v3float %95 %95 0 1 2
         %97 = OpCompositeExtract %v4float %94 1
         %98 = OpVectorShuffle %v3float %97 %97 0 1 2
         %99 = OpCompositeExtract %v4float %94 2
        %100 = OpVectorShuffle %v3float %99 %99 0 1 2
        %101 = OpCompositeConstruct %mat3v3float %96 %98 %100
        %102 = OpLoad %v3float %lightPos
        %103 = OpMatrixTimesVector %v3float %101 %102
               OpStore %lPos %103
        %105 = OpLoad %v3float %lPos
        %106 = OpLoad %v4float %pos
        %107 = OpVectorShuffle %v3float %106 %106 0 1 2
        %108 = OpFSub %v3float %105 %107
               OpStore %outLightVec %108
        %112 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %113 = OpLoad %v4float %112
        %114 = OpVectorShuffle %v3float %113 %113 0 1 2
        %115 = OpLoad %v4float %pos
        %116 = OpVectorShuffle %v3float %115 %115 0 1 2
        %117 = OpFSub %v3float %114 %116
               OpStore %outViewVec %117
               OpReturn
               OpFunctionEnd
