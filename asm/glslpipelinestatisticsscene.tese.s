; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 113
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationEvaluation %main "main" %_ %gl_TessCoord %gl_in %outNormal %inNormal %outViewVec %inViewVec %outLightVec %inLightVec %outColor %inColor
               OpExecutionMode %main Triangles
               OpExecutionMode %main SpacingEqual
               OpExecutionMode %main VertexOrderCcw
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
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outViewVec "outViewVec"
               OpName %inViewVec "inViewVec"
               OpName %outLightVec "outLightVec"
               OpName %inLightVec "inLightVec"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
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
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 0
               OpDecorate %outViewVec Location 2
               OpDecorate %inViewVec Location 2
               OpDecorate %outLightVec Location 3
               OpDecorate %inLightVec Location 3
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
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
      %int_2 = OpConstant %int 2
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %int_1 = OpConstant %int 1
     %uint_2 = OpConstant %uint 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
 %outViewVec = OpVariable %_ptr_Output_v3float Output
  %inViewVec = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %inLightVec = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
       %main = OpFunction %void None %3
          %5 = OpLabel
         %21 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %22 = OpLoad %float %21
         %30 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
         %31 = OpLoad %v4float %30
         %32 = OpVectorTimesScalar %v4float %31 %22
         %33 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %34 = OpLoad %float %33
         %36 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
         %37 = OpLoad %v4float %36
         %38 = OpVectorTimesScalar %v4float %37 %34
         %39 = OpFAdd %v4float %32 %38
         %41 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %42 = OpLoad %float %41
         %43 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
         %44 = OpLoad %v4float %43
         %45 = OpVectorTimesScalar %v4float %44 %42
         %46 = OpFAdd %v4float %39 %45
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
         %51 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %52 = OpLoad %float %51
         %56 = OpAccessChain %_ptr_Input_v3float %inNormal %int_2
         %57 = OpLoad %v3float %56
         %58 = OpVectorTimesScalar %v3float %57 %52
         %59 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %60 = OpLoad %float %59
         %61 = OpAccessChain %_ptr_Input_v3float %inNormal %int_1
         %62 = OpLoad %v3float %61
         %63 = OpVectorTimesScalar %v3float %62 %60
         %64 = OpFAdd %v3float %58 %63
         %65 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %66 = OpLoad %float %65
         %67 = OpAccessChain %_ptr_Input_v3float %inNormal %int_0
         %68 = OpLoad %v3float %67
         %69 = OpVectorTimesScalar %v3float %68 %66
         %70 = OpFAdd %v3float %64 %69
               OpStore %outNormal %70
         %72 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %73 = OpLoad %float %72
         %75 = OpAccessChain %_ptr_Input_v3float %inViewVec %int_2
         %76 = OpLoad %v3float %75
         %77 = OpVectorTimesScalar %v3float %76 %73
         %78 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %79 = OpLoad %float %78
         %80 = OpAccessChain %_ptr_Input_v3float %inViewVec %int_1
         %81 = OpLoad %v3float %80
         %82 = OpVectorTimesScalar %v3float %81 %79
         %83 = OpFAdd %v3float %77 %82
         %84 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %85 = OpLoad %float %84
         %86 = OpAccessChain %_ptr_Input_v3float %inViewVec %int_0
         %87 = OpLoad %v3float %86
         %88 = OpVectorTimesScalar %v3float %87 %85
         %89 = OpFAdd %v3float %83 %88
               OpStore %outViewVec %89
         %91 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %92 = OpLoad %float %91
         %94 = OpAccessChain %_ptr_Input_v3float %inLightVec %int_2
         %95 = OpLoad %v3float %94
         %96 = OpVectorTimesScalar %v3float %95 %92
         %97 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %98 = OpLoad %float %97
         %99 = OpAccessChain %_ptr_Input_v3float %inLightVec %int_1
        %100 = OpLoad %v3float %99
        %101 = OpVectorTimesScalar %v3float %100 %98
        %102 = OpFAdd %v3float %96 %101
        %103 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %104 = OpLoad %float %103
        %105 = OpAccessChain %_ptr_Input_v3float %inLightVec %int_0
        %106 = OpLoad %v3float %105
        %107 = OpVectorTimesScalar %v3float %106 %104
        %108 = OpFAdd %v3float %102 %107
               OpStore %outLightVec %108
        %111 = OpAccessChain %_ptr_Input_v3float %inColor %int_0
        %112 = OpLoad %v3float %111
               OpStore %outColor %112
               OpReturn
               OpFunctionEnd
