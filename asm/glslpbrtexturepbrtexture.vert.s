; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 100
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %outWorldPos %outNormal %inNormal %outTangent %inTangent %outUV %inUV %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %locPos "locPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "camPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outWorldPos "outWorldPos"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outTangent "outTangent"
               OpName %inTangent "inTangent"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
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
               OpDecorate %inPos Location 0
               OpDecorate %outWorldPos Location 0
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 1
               OpDecorate %outTangent Location 3
               OpDecorate %inTangent Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outWorldPos = OpVariable %_ptr_Output_v3float Output
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
 %outTangent = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Input_float = OpTypePointer Input %float
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
      %int_2 = OpConstant %int 2
       %main = OpFunction %void None %3
          %5 = OpLabel
     %locPos = OpVariable %_ptr_Function_v3float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %19 = OpLoad %mat4v4float %18
         %22 = OpLoad %v3float %inPos
         %24 = OpCompositeExtract %float %22 0
         %25 = OpCompositeExtract %float %22 1
         %26 = OpCompositeExtract %float %22 2
         %27 = OpCompositeConstruct %v4float %24 %25 %26 %float_1
         %28 = OpMatrixTimesVector %v4float %19 %27
         %29 = OpCompositeExtract %float %28 0
         %30 = OpCompositeExtract %float %28 1
         %31 = OpCompositeExtract %float %28 2
         %32 = OpCompositeConstruct %v3float %29 %30 %31
               OpStore %locPos %32
         %35 = OpLoad %v3float %locPos
               OpStore %outWorldPos %35
         %37 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %38 = OpLoad %mat4v4float %37
         %40 = OpCompositeExtract %v4float %38 0
         %41 = OpVectorShuffle %v3float %40 %40 0 1 2
         %42 = OpCompositeExtract %v4float %38 1
         %43 = OpVectorShuffle %v3float %42 %42 0 1 2
         %44 = OpCompositeExtract %v4float %38 2
         %45 = OpVectorShuffle %v3float %44 %44 0 1 2
         %46 = OpCompositeConstruct %mat3v3float %41 %43 %45
         %48 = OpLoad %v3float %inNormal
         %49 = OpMatrixTimesVector %v3float %46 %48
               OpStore %outNormal %49
         %52 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %53 = OpLoad %mat4v4float %52
         %54 = OpCompositeExtract %v4float %53 0
         %55 = OpVectorShuffle %v3float %54 %54 0 1 2
         %56 = OpCompositeExtract %v4float %53 1
         %57 = OpVectorShuffle %v3float %56 %56 0 1 2
         %58 = OpCompositeExtract %v4float %53 2
         %59 = OpVectorShuffle %v3float %58 %58 0 1 2
         %60 = OpCompositeConstruct %mat3v3float %55 %57 %59
         %63 = OpLoad %v4float %inTangent
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpMatrixTimesVector %v3float %60 %64
         %69 = OpAccessChain %_ptr_Input_float %inTangent %uint_3
         %70 = OpLoad %float %69
         %71 = OpCompositeExtract %float %65 0
         %72 = OpCompositeExtract %float %65 1
         %73 = OpCompositeExtract %float %65 2
         %74 = OpCompositeConstruct %v4float %71 %72 %73 %70
               OpStore %outTangent %74
         %80 = OpLoad %v2float %inUV
               OpStore %outUV %80
         %87 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %88 = OpLoad %mat4v4float %87
         %90 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %91 = OpLoad %mat4v4float %90
         %92 = OpMatrixTimesMatrix %mat4v4float %88 %91
         %93 = OpLoad %v3float %outWorldPos
         %94 = OpCompositeExtract %float %93 0
         %95 = OpCompositeExtract %float %93 1
         %96 = OpCompositeExtract %float %93 2
         %97 = OpCompositeConstruct %v4float %94 %95 %96 %float_1
         %98 = OpMatrixTimesVector %v4float %92 %97
         %99 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %99 %98
               OpReturn
               OpFunctionEnd
