; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 49
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %PVM "PVM"
               OpName %RenderPassUBO "RenderPassUBO"
               OpMemberName %RenderPassUBO 0 "projection"
               OpMemberName %RenderPassUBO 1 "view"
               OpName %renderPassUBO "renderPassUBO"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "model"
               OpMemberName %PushConsts 1 "color"
               OpName %pushConsts "pushConsts"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inPos "inPos"
               OpMemberDecorate %RenderPassUBO 0 ColMajor
               OpMemberDecorate %RenderPassUBO 0 Offset 0
               OpMemberDecorate %RenderPassUBO 0 MatrixStride 16
               OpMemberDecorate %RenderPassUBO 1 ColMajor
               OpMemberDecorate %RenderPassUBO 1 Offset 64
               OpMemberDecorate %RenderPassUBO 1 MatrixStride 16
               OpDecorate %RenderPassUBO Block
               OpDecorate %renderPassUBO DescriptorSet 0
               OpDecorate %renderPassUBO Binding 0
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpMemberDecorate %PushConsts 1 Offset 64
               OpDecorate %PushConsts Block
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
%RenderPassUBO = OpTypeStruct %mat4v4float %mat4v4float
%_ptr_Uniform_RenderPassUBO = OpTypePointer Uniform %RenderPassUBO
%renderPassUBO = OpVariable %_ptr_Uniform_RenderPassUBO Uniform
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
 %PushConsts = OpTypeStruct %mat4v4float %v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %PVM = OpVariable %_ptr_Function_mat4v4float Function
         %17 = OpAccessChain %_ptr_Uniform_mat4v4float %renderPassUBO %int_0
         %18 = OpLoad %mat4v4float %17
         %20 = OpAccessChain %_ptr_Uniform_mat4v4float %renderPassUBO %int_1
         %21 = OpLoad %mat4v4float %20
         %22 = OpMatrixTimesMatrix %mat4v4float %18 %21
         %27 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %28 = OpLoad %mat4v4float %27
         %29 = OpMatrixTimesMatrix %mat4v4float %22 %28
               OpStore %PVM %29
         %36 = OpLoad %mat4v4float %PVM
         %40 = OpLoad %v3float %inPos
         %42 = OpCompositeExtract %float %40 0
         %43 = OpCompositeExtract %float %40 1
         %44 = OpCompositeExtract %float %40 2
         %45 = OpCompositeConstruct %v4float %42 %43 %44 %float_1
         %46 = OpMatrixTimesVector %v4float %36 %45
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
               OpReturn
               OpFunctionEnd
