; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 89
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationControl %main "main" %gl_InvocationID %gl_TessLevelInner %gl_TessLevelOuter %gl_out %gl_in %outNormal %inNormal %outColor %inColor %outViewVec %inViewVec %outLightVec %inLightVec
               OpExecutionMode %main OutputVertices 3
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %gl_TessLevelInner "gl_TessLevelInner"
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
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outViewVec "outViewVec"
               OpName %inViewVec "inViewVec"
               OpName %outLightVec "outLightVec"
               OpName %inLightVec "inLightVec"
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpDecorate %gl_TessLevelInner Patch
               OpDecorate %gl_TessLevelInner BuiltIn TessLevelInner
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
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
               OpDecorate %outViewVec Location 2
               OpDecorate %inViewVec Location 2
               OpDecorate %outLightVec Location 3
               OpDecorate %inLightVec Location 3
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
    %float_2 = OpConstant %float 2
%_ptr_Output_float = OpTypePointer Output %float
     %uint_4 = OpConstant %uint 4
%_arr_float_uint_4 = OpTypeArray %float %uint_4
%_ptr_Output__arr_float_uint_4 = OpTypePointer Output %_arr_float_uint_4
%gl_TessLevelOuter = OpVariable %_ptr_Output__arr_float_uint_4 Output
    %float_1 = OpConstant %float 1
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
   %outColor = OpVariable %_ptr_Output__arr_v3float_uint_3 Output
    %inColor = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
 %outViewVec = OpVariable %_ptr_Output__arr_v3float_uint_3 Output
  %inViewVec = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%outLightVec = OpVariable %_ptr_Output__arr_v3float_uint_3 Output
 %inLightVec = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
       %main = OpFunction %void None %3
          %5 = OpLabel
          %9 = OpLoad %int %gl_InvocationID
         %12 = OpIEqual %bool %9 %int_0
               OpSelectionMerge %14 None
               OpBranchConditional %12 %13 %14
         %13 = OpLabel
         %23 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %23 %float_2
         %29 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
               OpStore %29 %float_1
         %31 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
               OpStore %31 %float_1
         %33 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
               OpStore %33 %float_1
               OpBranch %14
         %14 = OpLabel
         %42 = OpLoad %int %gl_InvocationID
         %48 = OpLoad %int %gl_InvocationID
         %50 = OpAccessChain %_ptr_Input_v4float %gl_in %48 %int_0
         %51 = OpLoad %v4float %50
         %53 = OpAccessChain %_ptr_Output_v4float %gl_out %42 %int_0
               OpStore %53 %51
         %58 = OpLoad %int %gl_InvocationID
         %62 = OpLoad %int %gl_InvocationID
         %64 = OpAccessChain %_ptr_Input_v3float %inNormal %62
         %65 = OpLoad %v3float %64
         %67 = OpAccessChain %_ptr_Output_v3float %outNormal %58
               OpStore %67 %65
         %69 = OpLoad %int %gl_InvocationID
         %71 = OpLoad %int %gl_InvocationID
         %72 = OpAccessChain %_ptr_Input_v3float %inColor %71
         %73 = OpLoad %v3float %72
         %74 = OpAccessChain %_ptr_Output_v3float %outColor %69
               OpStore %74 %73
         %76 = OpLoad %int %gl_InvocationID
         %78 = OpLoad %int %gl_InvocationID
         %79 = OpAccessChain %_ptr_Input_v3float %inViewVec %78
         %80 = OpLoad %v3float %79
         %81 = OpAccessChain %_ptr_Output_v3float %outViewVec %76
               OpStore %81 %80
         %83 = OpLoad %int %gl_InvocationID
         %85 = OpLoad %int %gl_InvocationID
         %86 = OpAccessChain %_ptr_Input_v3float %inLightVec %85
         %87 = OpLoad %v3float %86
         %88 = OpAccessChain %_ptr_Output_v3float %outLightVec %83
               OpStore %88 %87
               OpReturn
               OpFunctionEnd
