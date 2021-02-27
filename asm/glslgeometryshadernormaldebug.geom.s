; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 94
; Schema: 0
               OpCapability Geometry
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Geometry %main "main" %gl_in %inNormal %_ %outColor
               OpExecutionMode %main Triangles
               OpExecutionMode %main Invocations 1
               OpExecutionMode %main OutputLineStrip
               OpExecutionMode %main OutputVertices 6
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %normalLength "normalLength"
               OpName %i "i"
               OpName %pos "pos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %normal "normal"
               OpName %inNormal "inNormal"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpName %ubo "ubo"
               OpName %outColor "outColor"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inNormal Location 0
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
%float_0_0199999996 = OpConstant %float 0.0199999996
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %int_3 = OpConstant %int 3
       %bool = OpTypeBool
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
     %uint_3 = OpConstant %uint 3
%_arr_gl_PerVertex_uint_3 = OpTypeArray %gl_PerVertex %uint_3
%_ptr_Input__arr_gl_PerVertex_uint_3 = OpTypePointer Input %_arr_gl_PerVertex_uint_3
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_3 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%_arr_v3float_uint_3 = OpTypeArray %v3float %uint_3
%_ptr_Input__arr_v3float_uint_3 = OpTypePointer Input %_arr_v3float_uint_3
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_3 Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex_0 = OpTypePointer Output %gl_PerVertex_0
          %_ = OpVariable %_ptr_Output_gl_PerVertex_0 Output
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
    %float_0 = OpConstant %float 0
         %74 = OpConstantComposite %v3float %float_1 %float_0 %float_0
         %91 = OpConstantComposite %v3float %float_0 %float_0 %float_1
       %main = OpFunction %void None %3
          %5 = OpLabel
%normalLength = OpVariable %_ptr_Function_float Function
          %i = OpVariable %_ptr_Function_int Function
        %pos = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
               OpStore %normalLength %float_0_0199999996
               OpStore %i %int_0
               OpBranch %14
         %14 = OpLabel
               OpLoopMerge %16 %17 None
               OpBranch %18
         %18 = OpLabel
         %19 = OpLoad %int %i
         %22 = OpSLessThan %bool %19 %int_3
               OpBranchConditional %22 %15 %16
         %15 = OpLabel
         %35 = OpLoad %int %i
         %37 = OpAccessChain %_ptr_Input_v4float %gl_in %35 %int_0
         %38 = OpLoad %v4float %37
         %39 = OpVectorShuffle %v3float %38 %38 0 1 2
               OpStore %pos %39
         %44 = OpLoad %int %i
         %46 = OpAccessChain %_ptr_Input_v3float %inNormal %44
         %47 = OpLoad %v3float %46
               OpStore %normal %47
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %57 = OpLoad %mat4v4float %56
         %59 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %60 = OpLoad %mat4v4float %59
         %61 = OpLoad %v3float %pos
         %63 = OpCompositeExtract %float %61 0
         %64 = OpCompositeExtract %float %61 1
         %65 = OpCompositeExtract %float %61 2
         %66 = OpCompositeConstruct %v4float %63 %64 %65 %float_1
         %67 = OpMatrixTimesVector %v4float %60 %66
         %68 = OpMatrixTimesVector %v4float %57 %67
         %70 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %70 %68
               OpStore %outColor %74
               OpEmitVertex
         %75 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %76 = OpLoad %mat4v4float %75
         %77 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %78 = OpLoad %mat4v4float %77
         %79 = OpLoad %v3float %pos
         %80 = OpLoad %v3float %normal
         %81 = OpLoad %float %normalLength
         %82 = OpVectorTimesScalar %v3float %80 %81
         %83 = OpFAdd %v3float %79 %82
         %84 = OpCompositeExtract %float %83 0
         %85 = OpCompositeExtract %float %83 1
         %86 = OpCompositeExtract %float %83 2
         %87 = OpCompositeConstruct %v4float %84 %85 %86 %float_1
         %88 = OpMatrixTimesVector %v4float %78 %87
         %89 = OpMatrixTimesVector %v4float %76 %88
         %90 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %90 %89
               OpStore %outColor %91
               OpEmitVertex
               OpEndPrimitive
               OpBranch %17
         %17 = OpLabel
         %92 = OpLoad %int %i
         %93 = OpIAdd %int %92 %int_1
               OpStore %i %93
               OpBranch %14
         %16 = OpLabel
               OpReturn
               OpFunctionEnd
