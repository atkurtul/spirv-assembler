; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 120
; Schema: 0
               OpCapability Geometry
               OpCapability MultiViewport
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Geometry %main "main" %outNormal %gl_InvocationID %inNormal %outColor %inColor %gl_in %outLightVec %outViewVec %_ %gl_ViewportIndex %gl_PrimitiveID %gl_PrimitiveIDIn
               OpExecutionMode %main Triangles
               OpExecutionMode %main Invocations 2
               OpExecutionMode %main OutputTriangleStrip
               OpExecutionMode %main OutputVertices 3
               OpSource GLSL 450
               OpSourceExtension "GL_ARB_viewport_array"
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %i "i"
               OpName %outNormal "outNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %pos "pos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %worldPos "worldPos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %_ ""
               OpName %gl_ViewportIndex "gl_ViewportIndex"
               OpName %gl_PrimitiveID "gl_PrimitiveID"
               OpName %gl_PrimitiveIDIn "gl_PrimitiveIDIn"
               OpDecorate %outNormal Location 0
               OpDecorate %_arr_mat4v4float_uint_2 ArrayStride 64
               OpDecorate %_arr_mat4v4float_uint_2_0 ArrayStride 64
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 128
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpDecorate %inNormal Location 0
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
               OpDecorate %gl_ViewportIndex BuiltIn ViewportIndex
               OpDecorate %gl_PrimitiveID BuiltIn PrimitiveId
               OpDecorate %gl_PrimitiveIDIn BuiltIn PrimitiveId
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %int_3 = OpConstant %int 3
       %bool = OpTypeBool
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
%_arr_mat4v4float_uint_2 = OpTypeArray %mat4v4float %uint_2
%_arr_mat4v4float_uint_2_0 = OpTypeArray %mat4v4float %uint_2
        %UBO = OpTypeStruct %_arr_mat4v4float_uint_2 %_arr_mat4v4float_uint_2_0 %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Input_int = OpTypePointer Input %int
%gl_InvocationID = OpVariable %_ptr_Input_int Input
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%mat3v3float = OpTypeMatrix %v3float 3
     %uint_3 = OpConstant %uint 3
%_arr_v3float_uint_3 = OpTypeArray %v3float %uint_3
%_ptr_Input__arr_v3float_uint_3 = OpTypePointer Input %_arr_v3float_uint_3
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_3 Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input__arr_v3float_uint_3 Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_arr_gl_PerVertex_uint_3 = OpTypeArray %gl_PerVertex %uint_3
%_ptr_Input__arr_gl_PerVertex_uint_3 = OpTypePointer Input %_arr_gl_PerVertex_uint_3
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_3 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex_0 = OpTypePointer Output %gl_PerVertex_0
          %_ = OpVariable %_ptr_Output_gl_PerVertex_0 Output
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_int = OpTypePointer Output %int
%gl_ViewportIndex = OpVariable %_ptr_Output_int Output
%gl_PrimitiveID = OpVariable %_ptr_Output_int Output
%gl_PrimitiveIDIn = OpVariable %_ptr_Input_int Input
       %main = OpFunction %void None %3
          %5 = OpLabel
          %i = OpVariable %_ptr_Function_int Function
        %pos = OpVariable %_ptr_Function_v4float Function
   %worldPos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
               OpStore %i %int_0
               OpBranch %10
         %10 = OpLabel
               OpLoopMerge %12 %13 None
               OpBranch %14
         %14 = OpLabel
         %15 = OpLoad %int %i
         %18 = OpSLessThan %bool %15 %int_3
               OpBranchConditional %18 %11 %12
         %11 = OpLabel
         %35 = OpLoad %int %gl_InvocationID
         %37 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %35
         %38 = OpLoad %mat4v4float %37
         %40 = OpCompositeExtract %v4float %38 0
         %41 = OpVectorShuffle %v3float %40 %40 0 1 2
         %42 = OpCompositeExtract %v4float %38 1
         %43 = OpVectorShuffle %v3float %42 %42 0 1 2
         %44 = OpCompositeExtract %v4float %38 2
         %45 = OpVectorShuffle %v3float %44 %44 0 1 2
         %46 = OpCompositeConstruct %mat3v3float %41 %43 %45
         %51 = OpLoad %int %i
         %53 = OpAccessChain %_ptr_Input_v3float %inNormal %51
         %54 = OpLoad %v3float %53
         %55 = OpMatrixTimesVector %v3float %46 %54
               OpStore %outNormal %55
         %58 = OpLoad %int %i
         %59 = OpAccessChain %_ptr_Input_v3float %inColor %58
         %60 = OpLoad %v3float %59
               OpStore %outColor %60
         %69 = OpLoad %int %i
         %71 = OpAccessChain %_ptr_Input_v4float %gl_in %69 %int_0
         %72 = OpLoad %v4float %71
               OpStore %pos %72
         %74 = OpLoad %int %gl_InvocationID
         %75 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %74
         %76 = OpLoad %mat4v4float %75
         %77 = OpLoad %v4float %pos
         %78 = OpMatrixTimesVector %v4float %76 %77
               OpStore %worldPos %78
         %81 = OpLoad %int %gl_InvocationID
         %82 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %81
         %83 = OpLoad %mat4v4float %82
         %86 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %87 = OpLoad %v4float %86
         %88 = OpMatrixTimesVector %v4float %83 %87
         %89 = OpCompositeExtract %float %88 0
         %90 = OpCompositeExtract %float %88 1
         %91 = OpCompositeExtract %float %88 2
         %92 = OpCompositeConstruct %v3float %89 %90 %91
               OpStore %lPos %92
         %94 = OpLoad %v3float %lPos
         %95 = OpLoad %v4float %worldPos
         %96 = OpVectorShuffle %v3float %95 %95 0 1 2
         %97 = OpFSub %v3float %94 %96
               OpStore %outLightVec %97
         %99 = OpLoad %v4float %worldPos
        %100 = OpVectorShuffle %v3float %99 %99 0 1 2
        %101 = OpFNegate %v3float %100
               OpStore %outViewVec %101
        %105 = OpLoad %int %gl_InvocationID
        %106 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0 %105
        %107 = OpLoad %mat4v4float %106
        %108 = OpLoad %v4float %worldPos
        %109 = OpMatrixTimesVector %v4float %107 %108
        %111 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %111 %109
        %114 = OpLoad %int %gl_InvocationID
               OpStore %gl_ViewportIndex %114
        %117 = OpLoad %int %gl_PrimitiveIDIn
               OpStore %gl_PrimitiveID %117
               OpEmitVertex
               OpBranch %13
         %13 = OpLabel
        %118 = OpLoad %int %i
        %119 = OpIAdd %int %118 %int_1
               OpStore %i %119
               OpBranch %10
         %12 = OpLabel
               OpEndPrimitive
               OpReturn
               OpFunctionEnd
