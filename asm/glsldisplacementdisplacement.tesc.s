; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 92
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationControl %main "main" %gl_InvocationID %gl_TessLevelInner %gl_TessLevelOuter %gl_out %gl_in %outNormal %inNormal %outUV %inUV
               OpExecutionMode %main OutputVertices 3
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %gl_TessLevelInner "gl_TessLevelInner"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "tessLevel"
               OpName %ubo "ubo"
               OpName %gl_TessLevelOuter "gl_TessLevelOuter"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_out "gl_out"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpDecorate %gl_TessLevelInner Patch
               OpDecorate %gl_TessLevelInner BuiltIn TessLevelInner
               OpMemberDecorate %UBO 0 Offset 0
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %gl_TessLevelOuter Patch
               OpDecorate %gl_TessLevelOuter BuiltIn TessLevelOuter
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
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 0
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
%gl_InvocationID = OpVariable %_ptr_Input_int Input
      %int_0 = OpConstant %int 0
       %bool = OpTypeBool
      %float = OpTypeFloat 32
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
%_arr_float_uint_2 = OpTypeArray %float %uint_2
%_ptr_Output__arr_float_uint_2 = OpTypePointer Output %_arr_float_uint_2
%gl_TessLevelInner = OpVariable %_ptr_Output__arr_float_uint_2 Output
        %UBO = OpTypeStruct %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
%_ptr_Output_float = OpTypePointer Output %float
     %uint_4 = OpConstant %uint 4
%_arr_float_uint_4 = OpTypeArray %float %uint_4
%_ptr_Output__arr_float_uint_4 = OpTypePointer Output %_arr_float_uint_4
%gl_TessLevelOuter = OpVariable %_ptr_Output__arr_float_uint_4 Output
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %v4float = OpTypeVector %float 4
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
     %uint_3 = OpConstant %uint 3
%_arr_gl_PerVertex_uint_3 = OpTypeArray %gl_PerVertex %uint_3
%_ptr_Output__arr_gl_PerVertex_uint_3 = OpTypePointer Output %_arr_gl_PerVertex_uint_3
     %gl_out = OpVariable %_ptr_Output__arr_gl_PerVertex_uint_3 Output
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
    %uint_32 = OpConstant %uint 32
%_arr_gl_PerVertex_0_uint_32 = OpTypeArray %gl_PerVertex_0 %uint_32
%_ptr_Input__arr_gl_PerVertex_0_uint_32 = OpTypePointer Input %_arr_gl_PerVertex_0_uint_32
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_0_uint_32 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
    %v3float = OpTypeVector %float 3
%_arr_v3float_uint_3 = OpTypeArray %v3float %uint_3
%_ptr_Output__arr_v3float_uint_3 = OpTypePointer Output %_arr_v3float_uint_3
  %outNormal = OpVariable %_ptr_Output__arr_v3float_uint_3 Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
%_ptr_Output_v3float = OpTypePointer Output %v3float
    %v2float = OpTypeVector %float 2
%_arr_v2float_uint_3 = OpTypeArray %v2float %uint_3
%_ptr_Output__arr_v2float_uint_3 = OpTypePointer Output %_arr_v2float_uint_3
      %outUV = OpVariable %_ptr_Output__arr_v2float_uint_3 Output
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
       %inUV = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
%_ptr_Output_v2float = OpTypePointer Output %v2float
       %main = OpFunction %void None %3
          %5 = OpLabel
          %9 = OpLoad %int %gl_InvocationID
         %12 = OpIEqual %bool %9 %int_0
               OpSelectionMerge %14 None
               OpBranchConditional %12 %13 %14
         %13 = OpLabel
         %25 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %26 = OpLoad %float %25
         %28 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %28 %26
         %33 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %34 = OpLoad %float %33
         %35 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
               OpStore %35 %34
         %37 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %38 = OpLoad %float %37
         %39 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
               OpStore %39 %38
         %41 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %42 = OpLoad %float %41
         %43 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
               OpStore %43 %42
               OpBranch %14
         %14 = OpLabel
         %52 = OpLoad %int %gl_InvocationID
         %58 = OpLoad %int %gl_InvocationID
         %60 = OpAccessChain %_ptr_Input_v4float %gl_in %58 %int_0
         %61 = OpLoad %v4float %60
         %63 = OpAccessChain %_ptr_Output_v4float %gl_out %52 %int_0
               OpStore %63 %61
         %68 = OpLoad %int %gl_InvocationID
         %72 = OpLoad %int %gl_InvocationID
         %74 = OpAccessChain %_ptr_Input_v3float %inNormal %72
         %75 = OpLoad %v3float %74
         %77 = OpAccessChain %_ptr_Output_v3float %outNormal %68
               OpStore %77 %75
         %82 = OpLoad %int %gl_InvocationID
         %86 = OpLoad %int %gl_InvocationID
         %88 = OpAccessChain %_ptr_Input_v2float %inUV %86
         %89 = OpLoad %v2float %88
         %91 = OpAccessChain %_ptr_Output_v2float %outUV %82
               OpStore %91 %89
               OpReturn
               OpFunctionEnd
