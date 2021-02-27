; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 71
; Schema: 0
               OpCapability Geometry
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Geometry %main "main" %inInstanceIndex %gl_Layer %gl_InvocationID %gl_in %_
               OpExecutionMode %main Triangles
               OpExecutionMode %main Invocations 3
               OpExecutionMode %main OutputTriangleStrip
               OpExecutionMode %main OutputVertices 3
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %instancedPos "instancedPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "mvp"
               OpMemberName %UBO 1 "instancePos"
               OpName %ubo "ubo"
               OpName %inInstanceIndex "inInstanceIndex"
               OpName %i "i"
               OpName %gl_Layer "gl_Layer"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %tmpPos "tmpPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %_ ""
               OpDecorate %_arr_mat4v4float_uint_3 ArrayStride 64
               OpDecorate %_arr_v4float_uint_3 ArrayStride 16
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inInstanceIndex Location 0
               OpDecorate %gl_Layer BuiltIn Layer
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_arr_mat4v4float_uint_3 = OpTypeArray %mat4v4float %uint_3
%_arr_v4float_uint_3 = OpTypeArray %v4float %uint_3
        %UBO = OpTypeStruct %_arr_mat4v4float_uint_3 %_arr_v4float_uint_3
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_arr_int_uint_3 = OpTypeArray %int %uint_3
%_ptr_Input__arr_int_uint_3 = OpTypePointer Input %_arr_int_uint_3
%inInstanceIndex = OpVariable %_ptr_Input__arr_int_uint_3 Input
      %int_0 = OpConstant %int 0
%_ptr_Input_int = OpTypePointer Input %int
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Function_int = OpTypePointer Function %int
      %int_3 = OpConstant %int 3
       %bool = OpTypeBool
%_ptr_Output_int = OpTypePointer Output %int
   %gl_Layer = OpVariable %_ptr_Output_int Output
%gl_InvocationID = OpVariable %_ptr_Input_int Input
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_arr_gl_PerVertex_uint_3 = OpTypeArray %gl_PerVertex %uint_3
%_ptr_Input__arr_gl_PerVertex_uint_3 = OpTypePointer Input %_arr_gl_PerVertex_uint_3
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_3 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex_0 = OpTypePointer Output %gl_PerVertex_0
          %_ = OpVariable %_ptr_Output_gl_PerVertex_0 Output
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
%instancedPos = OpVariable %_ptr_Function_v4float Function
          %i = OpVariable %_ptr_Function_int Function
     %tmpPos = OpVariable %_ptr_Function_v4float Function
         %25 = OpAccessChain %_ptr_Input_int %inInstanceIndex %int_0
         %26 = OpLoad %int %25
         %28 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %26
         %29 = OpLoad %v4float %28
               OpStore %instancedPos %29
               OpStore %i %int_0
               OpBranch %32
         %32 = OpLabel
               OpLoopMerge %34 %35 None
               OpBranch %36
         %36 = OpLabel
         %37 = OpLoad %int %i
         %40 = OpSLessThan %bool %37 %int_3
               OpBranchConditional %40 %33 %34
         %33 = OpLabel
         %44 = OpLoad %int %gl_InvocationID
               OpStore %gl_Layer %44
         %52 = OpLoad %int %i
         %54 = OpAccessChain %_ptr_Input_v4float %gl_in %52 %int_0
         %55 = OpLoad %v4float %54
         %56 = OpLoad %v4float %instancedPos
         %57 = OpFAdd %v4float %55 %56
               OpStore %tmpPos %57
         %61 = OpLoad %int %gl_InvocationID
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0 %61
         %64 = OpLoad %mat4v4float %63
         %65 = OpLoad %v4float %tmpPos
         %66 = OpMatrixTimesVector %v4float %64 %65
         %68 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %68 %66
               OpEmitVertex
               OpBranch %35
         %35 = OpLabel
         %69 = OpLoad %int %i
         %70 = OpIAdd %int %69 %int_1
               OpStore %i %70
               OpBranch %32
         %34 = OpLabel
               OpEndPrimitive
               OpReturn
               OpFunctionEnd
