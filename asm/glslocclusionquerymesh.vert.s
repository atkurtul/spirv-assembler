; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 96
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outVisible %_ %inPos %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "color"
               OpMemberName %UBO 4 "lightPos"
               OpMemberName %UBO 5 "visible"
               OpName %ubo "ubo"
               OpName %outVisible "outVisible"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inPos "inPos"
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
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpMemberDecorate %UBO 4 Offset 208
               OpMemberDecorate %UBO 5 Offset 224
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outVisible Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
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
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Output_float = OpTypePointer Output %float
 %outVisible = OpVariable %_ptr_Output_float Output
      %int_5 = OpConstant %int 5
%_ptr_Uniform_float = OpTypePointer Uniform %float
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
         %24 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %25 = OpLoad %v4float %24
         %26 = OpVectorShuffle %v3float %25 %25 0 1 2
         %27 = OpFMul %v3float %15 %26
               OpStore %outColor %27
         %32 = OpAccessChain %_ptr_Uniform_float %ubo %int_5
         %33 = OpLoad %float %32
               OpStore %outVisible %33
         %42 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %43 = OpLoad %mat4v4float %42
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %46 = OpLoad %mat4v4float %45
         %47 = OpMatrixTimesMatrix %mat4v4float %43 %46
         %49 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %50 = OpLoad %mat4v4float %49
         %51 = OpMatrixTimesMatrix %mat4v4float %47 %50
         %53 = OpLoad %v3float %inPos
         %55 = OpCompositeExtract %float %53 0
         %56 = OpCompositeExtract %float %53 1
         %57 = OpCompositeExtract %float %53 2
         %58 = OpCompositeConstruct %v4float %55 %56 %57 %float_1
         %59 = OpMatrixTimesVector %v4float %51 %58
         %61 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %61 %59
         %64 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %65 = OpLoad %mat4v4float %64
         %66 = OpLoad %v3float %inPos
         %67 = OpCompositeExtract %float %66 0
         %68 = OpCompositeExtract %float %66 1
         %69 = OpCompositeExtract %float %66 2
         %70 = OpCompositeConstruct %v4float %67 %68 %69 %float_1
         %71 = OpMatrixTimesVector %v4float %65 %70
               OpStore %pos %71
         %72 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %73 = OpLoad %mat4v4float %72
         %75 = OpCompositeExtract %v4float %73 0
         %76 = OpVectorShuffle %v3float %75 %75 0 1 2
         %77 = OpCompositeExtract %v4float %73 1
         %78 = OpVectorShuffle %v3float %77 %77 0 1 2
         %79 = OpCompositeExtract %v4float %73 2
         %80 = OpVectorShuffle %v3float %79 %79 0 1 2
         %81 = OpCompositeConstruct %mat3v3float %76 %78 %80
         %82 = OpLoad %v3float %inNormal
         %83 = OpMatrixTimesVector %v3float %81 %82
               OpStore %outNormal %83
         %86 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_4
         %87 = OpLoad %v4float %86
         %88 = OpVectorShuffle %v3float %87 %87 0 1 2
         %89 = OpLoad %v4float %pos
         %90 = OpVectorShuffle %v3float %89 %89 0 1 2
         %91 = OpFSub %v3float %88 %90
               OpStore %outLightVec %91
         %93 = OpLoad %v4float %pos
         %94 = OpVectorShuffle %v3float %93 %93 0 1 2
         %95 = OpFNegate %v3float %94
               OpStore %outViewVec %95
               OpReturn
               OpFunctionEnd
