; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 97
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inTexCoord %outNormal %inNormal %outColor %inColor %inPos %_ %outEyePos %outLightVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inTexCoord "inTexCoord"
               OpName %outNormal "outNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "normal"
               OpMemberName %UBO 3 "view"
               OpMemberName %UBO 4 "lightpos"
               OpName %ubo "ubo"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %modelView "modelView"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %outEyePos "outEyePos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpDecorate %outUV Location 0
               OpDecorate %inTexCoord Location 2
               OpDecorate %outNormal Location 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 ColMajor
               OpMemberDecorate %UBO 3 Offset 192
               OpMemberDecorate %UBO 3 MatrixStride 16
               OpMemberDecorate %UBO 4 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 2
               OpDecorate %inColor Location 3
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %outEyePos Location 3
               OpDecorate %outLightVec Location 4
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
 %inTexCoord = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
      %int_3 = OpConstant %int 3
      %int_1 = OpConstant %int 1
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outEyePos = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
    %float_1 = OpConstant %float 1
%outLightVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
  %modelView = OpVariable %_ptr_Function_mat4v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v2float %inTexCoord
               OpStore %outUV %12
         %24 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %25 = OpLoad %mat4v4float %24
         %27 = OpCompositeExtract %v4float %25 0
         %28 = OpVectorShuffle %v3float %27 %27 0 1 2
         %29 = OpCompositeExtract %v4float %25 1
         %30 = OpVectorShuffle %v3float %29 %29 0 1 2
         %31 = OpCompositeExtract %v4float %25 2
         %32 = OpVectorShuffle %v3float %31 %31 0 1 2
         %33 = OpCompositeConstruct %mat3v3float %28 %30 %32
         %36 = OpLoad %v3float %inNormal
         %37 = OpMatrixTimesVector %v3float %33 %36
         %38 = OpExtInst %v3float %1 Normalize %37
               OpStore %outNormal %38
         %41 = OpLoad %v3float %inColor
               OpStore %outColor %41
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_3
         %46 = OpLoad %mat4v4float %45
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %46 %49
               OpStore %modelView %50
         %53 = OpLoad %mat4v4float %modelView
         %56 = OpLoad %v4float %inPos
         %57 = OpMatrixTimesVector %v4float %53 %56
               OpStore %pos %57
         %65 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %66 = OpLoad %mat4v4float %65
         %67 = OpLoad %v4float %pos
         %68 = OpMatrixTimesVector %v4float %66 %67
         %70 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %70 %68
         %72 = OpLoad %mat4v4float %modelView
         %73 = OpLoad %v4float %pos
         %74 = OpMatrixTimesVector %v4float %72 %73
         %75 = OpCompositeExtract %float %74 0
         %76 = OpCompositeExtract %float %74 1
         %77 = OpCompositeExtract %float %74 2
         %78 = OpCompositeConstruct %v3float %75 %76 %77
               OpStore %outEyePos %78
         %82 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_4
         %83 = OpLoad %v3float %82
         %85 = OpCompositeExtract %float %83 0
         %86 = OpCompositeExtract %float %83 1
         %87 = OpCompositeExtract %float %83 2
         %88 = OpCompositeConstruct %v4float %85 %86 %87 %float_1
         %89 = OpLoad %mat4v4float %modelView
         %90 = OpVectorTimesMatrix %v4float %88 %89
               OpStore %lightPos %90
         %92 = OpLoad %v4float %lightPos
         %93 = OpVectorShuffle %v3float %92 %92 0 1 2
         %94 = OpLoad %v3float %outEyePos
         %95 = OpFSub %v3float %93 %94
         %96 = OpExtInst %v3float %1 Normalize %95
               OpStore %outLightVec %96
               OpReturn
               OpFunctionEnd
