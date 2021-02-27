; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 92
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %outUV %inTexCoord %outNormal %inNormal %outColor %inColor %_ %outEyePos %outLightVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %modelView "modelView"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "normal"
               OpMemberName %UBO 3 "view"
               OpMemberName %UBO 4 "lightpos"
               OpName %ubo "ubo"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %outUV "outUV"
               OpName %inTexCoord "inTexCoord"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %outEyePos "outEyePos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
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
               OpDecorate %inPos Location 0
               OpDecorate %outUV Location 0
               OpDecorate %inTexCoord Location 2
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 2
               OpDecorate %inColor Location 3
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
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
    %v3float = OpTypeVector %float 3
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
 %inTexCoord = OpVariable %_ptr_Input_v2float Input
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
      %int_2 = OpConstant %int 2
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outEyePos = OpVariable %_ptr_Output_v3float Output
    %float_1 = OpConstant %float 1
    %float_2 = OpConstant %float 2
    %float_0 = OpConstant %float 0
         %83 = OpConstantComposite %v4float %float_1 %float_2 %float_0 %float_1
%outLightVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
  %modelView = OpVariable %_ptr_Function_mat4v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v4float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_3
         %19 = OpLoad %mat4v4float %18
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %22 = OpLoad %mat4v4float %21
         %23 = OpMatrixTimesMatrix %mat4v4float %19 %22
               OpStore %modelView %23
         %26 = OpLoad %mat4v4float %modelView
         %29 = OpLoad %v4float %inPos
         %30 = OpMatrixTimesVector %v4float %26 %29
               OpStore %pos %30
         %36 = OpLoad %v2float %inTexCoord
               OpStore %outUV %36
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %41 = OpLoad %mat4v4float %40
         %43 = OpCompositeExtract %v4float %41 0
         %44 = OpVectorShuffle %v3float %43 %43 0 1 2
         %45 = OpCompositeExtract %v4float %41 1
         %46 = OpVectorShuffle %v3float %45 %45 0 1 2
         %47 = OpCompositeExtract %v4float %41 2
         %48 = OpVectorShuffle %v3float %47 %47 0 1 2
         %49 = OpCompositeConstruct %mat3v3float %44 %46 %48
         %52 = OpLoad %v3float %inNormal
         %53 = OpMatrixTimesVector %v3float %49 %52
         %54 = OpExtInst %v3float %1 Normalize %53
               OpStore %outNormal %54
         %57 = OpLoad %v3float %inColor
               OpStore %outColor %57
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
         %84 = OpLoad %mat4v4float %modelView
         %85 = OpVectorTimesMatrix %v4float %83 %84
               OpStore %lightPos %85
         %87 = OpLoad %v4float %lightPos
         %88 = OpVectorShuffle %v3float %87 %87 0 1 2
         %89 = OpLoad %v3float %outEyePos
         %90 = OpFSub %v3float %88 %89
         %91 = OpExtInst %v3float %1 Normalize %90
               OpStore %outLightVec %91
               OpReturn
               OpFunctionEnd
