; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 54
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %_ %inPos %inNormal
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "color"
               OpMemberName %UBO 4 "lightPos"
               OpName %ubo "ubo"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inPos "inPos"
               OpName %inNormal "inNormal"
               OpDecorate %outColor Location 0
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
               OpDecorate %inNormal Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
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
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
         %12 = OpLoad %v3float %inColor
         %21 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %22 = OpLoad %v4float %21
         %23 = OpVectorShuffle %v3float %22 %22 0 1 2
         %24 = OpFMul %v3float %12 %23
               OpStore %outColor %24
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %34 = OpLoad %mat4v4float %33
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %37 = OpLoad %mat4v4float %36
         %38 = OpMatrixTimesMatrix %mat4v4float %34 %37
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %41 = OpLoad %mat4v4float %40
         %42 = OpMatrixTimesMatrix %mat4v4float %38 %41
         %44 = OpLoad %v3float %inPos
         %46 = OpCompositeExtract %float %44 0
         %47 = OpCompositeExtract %float %44 1
         %48 = OpCompositeExtract %float %44 2
         %49 = OpCompositeConstruct %v4float %46 %47 %48 %float_1
         %50 = OpMatrixTimesVector %v4float %42 %49
         %52 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %52 %50
               OpReturn
               OpFunctionEnd
