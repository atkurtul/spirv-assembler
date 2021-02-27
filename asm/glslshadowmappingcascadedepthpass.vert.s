; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 56
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %inPos %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "position"
               OpMemberName %PushConsts 1 "cascadeIndex"
               OpName %pushConsts "pushConsts"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "cascadeViewProjMat"
               OpName %ubo "ubo"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %inPos Location 0
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 1 Offset 16
               OpDecorate %PushConsts Block
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %_arr_mat4v4float_uint_4 ArrayStride 64
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
 %PushConsts = OpTypeStruct %v4float %uint
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v4float = OpTypePointer PushConstant %v4float
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%mat4v4float = OpTypeMatrix %v4float 4
     %uint_4 = OpConstant %uint 4
%_arr_mat4v4float_uint_4 = OpTypeArray %mat4v4float %uint_4
        %UBO = OpTypeStruct %_arr_mat4v4float_uint_4
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_PushConstant_uint = OpTypePointer PushConstant %uint
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v2float %inUV
               OpStore %outUV %12
         %18 = OpLoad %v3float %inPos
         %27 = OpAccessChain %_ptr_PushConstant_v4float %pushConsts %int_0
         %28 = OpLoad %v4float %27
         %29 = OpVectorShuffle %v3float %28 %28 0 1 2
         %30 = OpFAdd %v3float %18 %29
               OpStore %pos %30
         %42 = OpAccessChain %_ptr_PushConstant_uint %pushConsts %int_1
         %43 = OpLoad %uint %42
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0 %43
         %46 = OpLoad %mat4v4float %45
         %47 = OpLoad %v3float %pos
         %49 = OpCompositeExtract %float %47 0
         %50 = OpCompositeExtract %float %47 1
         %51 = OpCompositeExtract %float %47 2
         %52 = OpCompositeConstruct %v4float %49 %50 %51 %float_1
         %53 = OpMatrixTimesVector %v4float %46 %52
         %55 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %55 %53
               OpReturn
               OpFunctionEnd
