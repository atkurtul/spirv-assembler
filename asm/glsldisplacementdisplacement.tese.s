; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 147
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationEvaluation %main "main" %_ %gl_TessCoord %gl_in %outUV %inUV %outNormal %inNormal %outEyesPos %outLightVec
               OpExecutionMode %main Triangles
               OpExecutionMode %main SpacingEqual
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
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %displacementMap "displacementMap"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpMemberName %UBO 3 "tessAlpha"
               OpMemberName %UBO 4 "tessStrength"
               OpName %ubo "ubo"
               OpName %outEyesPos "outEyesPos"
               OpName %outLightVec "outLightVec"
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
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 0
               OpDecorate %displacementMap DescriptorSet 0
               OpDecorate %displacementMap Binding 2
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 144
               OpMemberDecorate %UBO 4 Offset 148
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpDecorate %outEyesPos Location 2
               OpDecorate %outLightVec Location 3
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
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
       %inUV = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
         %97 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %98 = OpTypeSampledImage %97
%_ptr_UniformConstant_98 = OpTypePointer UniformConstant %98
%displacementMap = OpVariable %_ptr_UniformConstant_98 UniformConstant
    %float_0 = OpConstant %float 0
     %uint_3 = OpConstant %uint 3
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_4 = OpConstant %int 4
%_ptr_Uniform_float = OpTypePointer Uniform %float
 %outEyesPos = OpVariable %_ptr_Output_v3float Output
%outLightVec = OpVariable %_ptr_Output_v3float Output
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
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
         %52 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %53 = OpLoad %float %52
         %58 = OpAccessChain %_ptr_Input_v2float %inUV %int_0
         %59 = OpLoad %v2float %58
         %60 = OpVectorTimesScalar %v2float %59 %53
         %61 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %62 = OpLoad %float %61
         %63 = OpAccessChain %_ptr_Input_v2float %inUV %int_1
         %64 = OpLoad %v2float %63
         %65 = OpVectorTimesScalar %v2float %64 %62
         %66 = OpFAdd %v2float %60 %65
         %67 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %68 = OpLoad %float %67
         %69 = OpAccessChain %_ptr_Input_v2float %inUV %int_2
         %70 = OpLoad %v2float %69
         %71 = OpVectorTimesScalar %v2float %70 %68
         %72 = OpFAdd %v2float %66 %71
               OpStore %outUV %72
         %75 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
         %76 = OpLoad %float %75
         %80 = OpAccessChain %_ptr_Input_v3float %inNormal %int_0
         %81 = OpLoad %v3float %80
         %82 = OpVectorTimesScalar %v3float %81 %76
         %83 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
         %84 = OpLoad %float %83
         %85 = OpAccessChain %_ptr_Input_v3float %inNormal %int_1
         %86 = OpLoad %v3float %85
         %87 = OpVectorTimesScalar %v3float %86 %84
         %88 = OpFAdd %v3float %82 %87
         %89 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
         %90 = OpLoad %float %89
         %91 = OpAccessChain %_ptr_Input_v3float %inNormal %int_2
         %92 = OpLoad %v3float %91
         %93 = OpVectorTimesScalar %v3float %92 %90
         %94 = OpFAdd %v3float %88 %93
               OpStore %outNormal %94
         %95 = OpLoad %v3float %outNormal
         %96 = OpExtInst %v3float %1 Normalize %95
        %101 = OpLoad %98 %displacementMap
        %102 = OpLoad %v2float %outUV
        %104 = OpImageSampleExplicitLod %v4float %101 %102 Lod %float_0
        %106 = OpCompositeExtract %float %104 3
        %107 = OpExtInst %float %1 FMax %106 %float_0
        %114 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
        %115 = OpLoad %float %114
        %116 = OpFMul %float %107 %115
        %117 = OpVectorTimesScalar %v3float %96 %116
        %118 = OpAccessChain %_ptr_Output_v4float %_ %int_0
        %119 = OpLoad %v4float %118
        %120 = OpVectorShuffle %v3float %119 %119 0 1 2
        %121 = OpFAdd %v3float %120 %117
        %122 = OpAccessChain %_ptr_Output_v4float %_ %int_0
        %123 = OpLoad %v4float %122
        %124 = OpVectorShuffle %v4float %123 %121 4 5 6 3
               OpStore %122 %124
        %126 = OpAccessChain %_ptr_Output_v4float %_ %int_0
        %127 = OpLoad %v4float %126
        %128 = OpVectorShuffle %v3float %127 %127 0 1 2
               OpStore %outEyesPos %128
        %131 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %132 = OpLoad %v4float %131
        %133 = OpVectorShuffle %v3float %132 %132 0 1 2
        %134 = OpLoad %v3float %outEyesPos
        %135 = OpFSub %v3float %133 %134
        %136 = OpExtInst %v3float %1 Normalize %135
               OpStore %outLightVec %136
        %138 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %139 = OpLoad %mat4v4float %138
        %140 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %141 = OpLoad %mat4v4float %140
        %142 = OpMatrixTimesMatrix %mat4v4float %139 %141
        %143 = OpAccessChain %_ptr_Output_v4float %_ %int_0
        %144 = OpLoad %v4float %143
        %145 = OpMatrixTimesVector %v4float %142 %144
        %146 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %146 %145
               OpReturn
               OpFunctionEnd
