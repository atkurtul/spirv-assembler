; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 112
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %inPos %_ %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %locPos "locPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %worldPos "worldPos"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "objPos"
               OpName %pushConsts "pushConsts"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %pos "pos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
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
               OpMemberDecorate %PushConsts 0 Offset 0
               OpDecorate %PushConsts Block
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
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
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
 %PushConsts = OpTypeStruct %v3float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v3float = OpTypePointer PushConstant %v3float
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
     %locPos = OpVariable %_ptr_Function_v3float Function
   %worldPos = OpVariable %_ptr_Function_v3float Function
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %26 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %27 = OpLoad %mat4v4float %26
         %29 = OpLoad %v3float %inPos
         %31 = OpCompositeExtract %float %29 0
         %32 = OpCompositeExtract %float %29 1
         %33 = OpCompositeExtract %float %29 2
         %34 = OpCompositeConstruct %v4float %31 %32 %33 %float_1
         %35 = OpMatrixTimesVector %v4float %27 %34
         %36 = OpCompositeExtract %float %35 0
         %37 = OpCompositeExtract %float %35 1
         %38 = OpCompositeExtract %float %35 2
         %39 = OpCompositeConstruct %v3float %36 %37 %38
               OpStore %locPos %39
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %42 = OpLoad %mat4v4float %41
         %43 = OpLoad %v3float %inPos
         %49 = OpAccessChain %_ptr_PushConstant_v3float %pushConsts %int_0
         %50 = OpLoad %v3float %49
         %51 = OpFAdd %v3float %43 %50
         %52 = OpCompositeExtract %float %51 0
         %53 = OpCompositeExtract %float %51 1
         %54 = OpCompositeExtract %float %51 2
         %55 = OpCompositeConstruct %v4float %52 %53 %54 %float_1
         %56 = OpMatrixTimesVector %v4float %42 %55
         %57 = OpCompositeExtract %float %56 0
         %58 = OpCompositeExtract %float %56 1
         %59 = OpCompositeExtract %float %56 2
         %60 = OpCompositeConstruct %v3float %57 %58 %59
               OpStore %worldPos %60
         %67 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %68 = OpLoad %mat4v4float %67
         %69 = OpLoad %v3float %worldPos
         %70 = OpCompositeExtract %float %69 0
         %71 = OpCompositeExtract %float %69 1
         %72 = OpCompositeExtract %float %69 2
         %73 = OpCompositeConstruct %v4float %70 %71 %72 %float_1
         %74 = OpMatrixTimesVector %v4float %68 %73
         %76 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %76 %74
         %79 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %80 = OpLoad %mat4v4float %79
         %81 = OpLoad %v3float %worldPos
         %82 = OpCompositeExtract %float %81 0
         %83 = OpCompositeExtract %float %81 1
         %84 = OpCompositeExtract %float %81 2
         %85 = OpCompositeConstruct %v4float %82 %83 %84 %float_1
         %86 = OpMatrixTimesVector %v4float %80 %85
               OpStore %pos %86
         %87 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %88 = OpLoad %mat4v4float %87
         %90 = OpCompositeExtract %v4float %88 0
         %91 = OpVectorShuffle %v3float %90 %90 0 1 2
         %92 = OpCompositeExtract %v4float %88 1
         %93 = OpVectorShuffle %v3float %92 %92 0 1 2
         %94 = OpCompositeExtract %v4float %88 2
         %95 = OpVectorShuffle %v3float %94 %94 0 1 2
         %96 = OpCompositeConstruct %mat3v3float %91 %93 %95
         %97 = OpLoad %v3float %inNormal
         %98 = OpMatrixTimesVector %v3float %96 %97
               OpStore %outNormal %98
        %102 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %103 = OpLoad %v4float %102
        %104 = OpVectorShuffle %v3float %103 %103 0 1 2
        %105 = OpLoad %v4float %pos
        %106 = OpVectorShuffle %v3float %105 %105 0 1 2
        %107 = OpFSub %v3float %104 %106
               OpStore %outLightVec %107
        %109 = OpLoad %v4float %pos
        %110 = OpVectorShuffle %v3float %109 %109 0 1 2
        %111 = OpFNegate %v3float %110
               OpStore %outViewVec %111
               OpReturn
               OpFunctionEnd
