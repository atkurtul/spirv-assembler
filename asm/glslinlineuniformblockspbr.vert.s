; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 78
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %outWorldPos %outNormal %inNormal %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %locPos "locPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "camPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outWorldPos "outWorldPos"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "objPos"
               OpName %pushConsts "pushConsts"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outWorldPos Location 0
               OpMemberDecorate %PushConsts 0 Offset 0
               OpDecorate %PushConsts Block
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outWorldPos = OpVariable %_ptr_Output_v3float Output
 %PushConsts = OpTypeStruct %v3float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v3float = OpTypePointer PushConstant %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
     %locPos = OpVariable %_ptr_Function_v3float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %19 = OpLoad %mat4v4float %18
         %22 = OpLoad %v3float %inPos
         %24 = OpCompositeExtract %float %22 0
         %25 = OpCompositeExtract %float %22 1
         %26 = OpCompositeExtract %float %22 2
         %27 = OpCompositeConstruct %v4float %24 %25 %26 %float_1
         %28 = OpMatrixTimesVector %v4float %19 %27
         %29 = OpCompositeExtract %float %28 0
         %30 = OpCompositeExtract %float %28 1
         %31 = OpCompositeExtract %float %28 2
         %32 = OpCompositeConstruct %v3float %29 %30 %31
               OpStore %locPos %32
         %35 = OpLoad %v3float %locPos
         %41 = OpAccessChain %_ptr_PushConstant_v3float %pushConsts %int_0
         %42 = OpLoad %v3float %41
         %43 = OpFAdd %v3float %35 %42
               OpStore %outWorldPos %43
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %46 = OpLoad %mat4v4float %45
         %48 = OpCompositeExtract %v4float %46 0
         %49 = OpVectorShuffle %v3float %48 %48 0 1 2
         %50 = OpCompositeExtract %v4float %46 1
         %51 = OpVectorShuffle %v3float %50 %50 0 1 2
         %52 = OpCompositeExtract %v4float %46 2
         %53 = OpVectorShuffle %v3float %52 %52 0 1 2
         %54 = OpCompositeConstruct %mat3v3float %49 %51 %53
         %56 = OpLoad %v3float %inNormal
         %57 = OpMatrixTimesVector %v3float %54 %56
               OpStore %outNormal %57
         %64 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %65 = OpLoad %mat4v4float %64
         %67 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %68 = OpLoad %mat4v4float %67
         %69 = OpMatrixTimesMatrix %mat4v4float %65 %68
         %70 = OpLoad %v3float %outWorldPos
         %71 = OpCompositeExtract %float %70 0
         %72 = OpCompositeExtract %float %70 1
         %73 = OpCompositeExtract %float %70 2
         %74 = OpCompositeConstruct %v4float %71 %72 %73 %float_1
         %75 = OpMatrixTimesVector %v4float %69 %74
         %77 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %77 %75
               OpReturn
               OpFunctionEnd
