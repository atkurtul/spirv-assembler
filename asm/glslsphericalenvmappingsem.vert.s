; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 102
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outEyePos %inPos %outTexIndex %outNormal %inNormal %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %modelView "modelView"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "normal"
               OpMemberName %UBO 3 "view"
               OpMemberName %UBO 4 "texIndex"
               OpName %ubo "ubo"
               OpName %outEyePos "outEyePos"
               OpName %inPos "inPos"
               OpName %outTexIndex "outTexIndex"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %r "r"
               OpName %m "m"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
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
               OpMemberDecorate %UBO 3 ColMajor
               OpMemberDecorate %UBO 3 Offset 192
               OpMemberDecorate %UBO 3 MatrixStride 16
               OpMemberDecorate %UBO 4 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outEyePos Location 1
               OpDecorate %inPos Location 0
               OpDecorate %outTexIndex Flat
               OpDecorate %outTexIndex Location 3
               OpDecorate %outNormal Location 2
               OpDecorate %inNormal Location 1
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
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %mat4v4float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
  %outEyePos = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_int = OpTypePointer Output %int
%outTexIndex = OpVariable %_ptr_Output_int Output
      %int_4 = OpConstant %int 4
%_ptr_Uniform_int = OpTypePointer Uniform %int
  %outNormal = OpVariable %_ptr_Output_v3float Output
      %int_2 = OpConstant %int 2
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Function_float = OpTypePointer Function %float
    %float_2 = OpConstant %float 2
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %float_1 = OpConstant %float 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
  %modelView = OpVariable %_ptr_Function_mat4v4float Function
          %r = OpVariable %_ptr_Function_v3float Function
          %m = OpVariable %_ptr_Function_float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %23 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_3
         %24 = OpLoad %mat4v4float %23
         %26 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %27 = OpLoad %mat4v4float %26
         %28 = OpMatrixTimesMatrix %mat4v4float %24 %27
               OpStore %modelView %28
         %30 = OpLoad %mat4v4float %modelView
         %33 = OpLoad %v4float %inPos
         %34 = OpMatrixTimesVector %v4float %30 %33
         %35 = OpCompositeExtract %float %34 0
         %36 = OpCompositeExtract %float %34 1
         %37 = OpCompositeExtract %float %34 2
         %38 = OpCompositeConstruct %v3float %35 %36 %37
         %39 = OpExtInst %v3float %1 Normalize %38
               OpStore %outEyePos %39
         %44 = OpAccessChain %_ptr_Uniform_int %ubo %int_4
         %45 = OpLoad %int %44
               OpStore %outTexIndex %45
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %49 = OpLoad %mat4v4float %48
         %51 = OpCompositeExtract %v4float %49 0
         %52 = OpVectorShuffle %v3float %51 %51 0 1 2
         %53 = OpCompositeExtract %v4float %49 1
         %54 = OpVectorShuffle %v3float %53 %53 0 1 2
         %55 = OpCompositeExtract %v4float %49 2
         %56 = OpVectorShuffle %v3float %55 %55 0 1 2
         %57 = OpCompositeConstruct %mat3v3float %52 %54 %56
         %59 = OpLoad %v3float %inNormal
         %60 = OpMatrixTimesVector %v3float %57 %59
         %61 = OpExtInst %v3float %1 Normalize %60
               OpStore %outNormal %61
         %64 = OpLoad %v3float %outEyePos
         %65 = OpLoad %v3float %outNormal
         %66 = OpExtInst %v3float %1 Reflect %64 %65
               OpStore %r %66
         %72 = OpAccessChain %_ptr_Function_float %r %uint_0
         %73 = OpLoad %float %72
         %74 = OpExtInst %float %1 Pow %73 %float_2
         %76 = OpAccessChain %_ptr_Function_float %r %uint_1
         %77 = OpLoad %float %76
         %78 = OpExtInst %float %1 Pow %77 %float_2
         %79 = OpFAdd %float %74 %78
         %81 = OpAccessChain %_ptr_Function_float %r %uint_2
         %82 = OpLoad %float %81
         %84 = OpFAdd %float %82 %float_1
         %85 = OpExtInst %float %1 Pow %84 %float_2
         %86 = OpFAdd %float %79 %85
         %87 = OpExtInst %float %1 Sqrt %86
         %88 = OpFMul %float %float_2 %87
               OpStore %m %88
         %94 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %95 = OpLoad %mat4v4float %94
         %96 = OpLoad %mat4v4float %modelView
         %97 = OpMatrixTimesMatrix %mat4v4float %95 %96
         %98 = OpLoad %v4float %inPos
         %99 = OpMatrixTimesVector %v4float %97 %98
        %101 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %101 %99
               OpReturn
               OpFunctionEnd
