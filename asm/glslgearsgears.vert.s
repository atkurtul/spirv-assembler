; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 91
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %inPos %outEyePos %outLightVec %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
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
               OpName %outEyePos "outEyePos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpDecorate %outNormal Location 0
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
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %inPos Location 0
               OpDecorate %outEyePos Location 2
               OpDecorate %outLightVec Location 3
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
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
  %outEyePos = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
    %float_1 = OpConstant %float 1
%outLightVec = OpVariable %_ptr_Output_v3float Output
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
  %modelView = OpVariable %_ptr_Function_mat4v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v4float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %19 = OpLoad %mat4v4float %18
         %21 = OpCompositeExtract %v4float %19 0
         %22 = OpVectorShuffle %v3float %21 %21 0 1 2
         %23 = OpCompositeExtract %v4float %19 1
         %24 = OpVectorShuffle %v3float %23 %23 0 1 2
         %25 = OpCompositeExtract %v4float %19 2
         %26 = OpVectorShuffle %v3float %25 %25 0 1 2
         %27 = OpCompositeConstruct %mat3v3float %22 %24 %26
         %30 = OpLoad %v3float %inNormal
         %31 = OpMatrixTimesVector %v3float %27 %30
         %32 = OpExtInst %v3float %1 Normalize %31
               OpStore %outNormal %32
         %35 = OpLoad %v3float %inColor
               OpStore %outColor %35
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_3
         %40 = OpLoad %mat4v4float %39
         %42 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %43 = OpLoad %mat4v4float %42
         %44 = OpMatrixTimesMatrix %mat4v4float %40 %43
               OpStore %modelView %44
         %47 = OpLoad %mat4v4float %modelView
         %50 = OpLoad %v4float %inPos
         %51 = OpMatrixTimesVector %v4float %47 %50
               OpStore %pos %51
         %53 = OpLoad %mat4v4float %modelView
         %54 = OpLoad %v4float %pos
         %55 = OpMatrixTimesVector %v4float %53 %54
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v3float %56 %57 %58
               OpStore %outEyePos %59
         %63 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_4
         %64 = OpLoad %v3float %63
         %66 = OpCompositeExtract %float %64 0
         %67 = OpCompositeExtract %float %64 1
         %68 = OpCompositeExtract %float %64 2
         %69 = OpCompositeConstruct %v4float %66 %67 %68 %float_1
         %70 = OpLoad %mat4v4float %modelView
         %71 = OpVectorTimesMatrix %v4float %69 %70
               OpStore %lightPos %71
         %73 = OpLoad %v4float %lightPos
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpLoad %v3float %outEyePos
         %76 = OpFSub %v3float %74 %75
         %77 = OpExtInst %v3float %1 Normalize %76
               OpStore %outLightVec %77
         %85 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %86 = OpLoad %mat4v4float %85
         %87 = OpLoad %v4float %pos
         %88 = OpMatrixTimesVector %v4float %86 %87
         %90 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %90 %88
               OpReturn
               OpFunctionEnd
