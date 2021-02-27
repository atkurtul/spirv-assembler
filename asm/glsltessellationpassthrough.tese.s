; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 109
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationEvaluation %main "main" %_ %gl_TessCoord %gl_in %outNormal %inNormal %outUV %inUV
               OpExecutionMode %main Triangles
               OpExecutionMode %main SpacingFractionalOdd
               OpExecutionMode %main VertexOrderCw
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %gl_TessCoord "gl_TessCoord"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "tessAlpha"
               OpName %ubo "ubo"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %gl_TessCoord BuiltIn TessCoord
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 0
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
%gl_TessCoord = OpVariable %_ptr_Input_v3float Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
    %uint_32 = OpConstant %uint 32
%_arr_gl_PerVertex_0_uint_32 = OpTypeArray %gl_PerVertex_0 %uint_32
%_ptr_Input__arr_gl_PerVertex_0_uint_32 = OpTypePointer Input %_arr_gl_PerVertex_0_uint_32
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_0_uint_32 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %int_1 = OpConstant %int 1
     %uint_2 = OpConstant %uint 2
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
       %inUV = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %21 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %22 = OpLoad %float %21
         %29 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
         %30 = OpLoad %v4float %29
         %31 = OpVectorTimesScalar %v4float %30 %22
         %32 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %33 = OpLoad %float %32
         %35 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
         %36 = OpLoad %v4float %35
         %37 = OpVectorTimesScalar %v4float %36 %33
         %38 = OpFAdd %v4float %31 %37
         %40 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %41 = OpLoad %float %40
         %43 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
         %44 = OpLoad %v4float %43
         %45 = OpVectorTimesScalar %v4float %44 %41
         %46 = OpFAdd %v4float %38 %45
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
         %54 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %55 = OpLoad %mat4v4float %54
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %57 = OpLoad %mat4v4float %56
         %58 = OpMatrixTimesMatrix %mat4v4float %55 %57
         %59 = OpAccessChain %_ptr_Output_v4float %_ %int_0
         %60 = OpLoad %v4float %59
         %61 = OpMatrixTimesVector %v4float %58 %60
         %62 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %62 %61
         %65 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %66 = OpLoad %float %65
         %70 = OpAccessChain %_ptr_Input_v3float %inNormal %int_0
         %71 = OpLoad %v3float %70
         %72 = OpVectorTimesScalar %v3float %71 %66
         %73 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %74 = OpLoad %float %73
         %75 = OpAccessChain %_ptr_Input_v3float %inNormal %int_1
         %76 = OpLoad %v3float %75
         %77 = OpVectorTimesScalar %v3float %76 %74
         %78 = OpFAdd %v3float %72 %77
         %79 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %80 = OpLoad %float %79
         %81 = OpAccessChain %_ptr_Input_v3float %inNormal %int_2
         %82 = OpLoad %v3float %81
         %83 = OpVectorTimesScalar %v3float %82 %80
         %84 = OpFAdd %v3float %78 %83
               OpStore %outNormal %84
         %88 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %89 = OpLoad %float %88
         %94 = OpAccessChain %_ptr_Input_v2float %inUV %int_0
         %95 = OpLoad %v2float %94
         %96 = OpVectorTimesScalar %v2float %95 %89
         %97 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %98 = OpLoad %float %97
         %99 = OpAccessChain %_ptr_Input_v2float %inUV %int_1
        %100 = OpLoad %v2float %99
        %101 = OpVectorTimesScalar %v2float %100 %98
        %102 = OpFAdd %v2float %96 %101
        %103 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %104 = OpLoad %float %103
        %105 = OpAccessChain %_ptr_Input_v2float %inUV %int_2
        %106 = OpLoad %v2float %105
        %107 = OpVectorTimesScalar %v2float %106 %104
        %108 = OpFAdd %v2float %102 %107
               OpStore %outUV %108
               OpReturn
               OpFunctionEnd
