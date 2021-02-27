; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 73
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %inPos %_ %inNormal
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "color"
               OpMemberName %PushConsts 1 "position"
               OpName %pushConsts "pushConsts"
               OpName %locPos "locPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %worldPos "worldPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inNormal "inNormal"
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 2
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 1 Offset 16
               OpDecorate %PushConsts Block
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inNormal Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
 %PushConsts = OpTypeStruct %v4float %v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v4float = OpTypePointer PushConstant %v4float
%_ptr_Function_v3float = OpTypePointer Function %v3float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
     %locPos = OpVariable %_ptr_Function_v3float Function
   %worldPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inColor
         %20 = OpAccessChain %_ptr_PushConstant_v4float %pushConsts %int_0
         %21 = OpLoad %v4float %20
         %22 = OpVectorShuffle %v3float %21 %21 0 1 2
         %23 = OpFMul %v3float %12 %22
               OpStore %outColor %23
         %32 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %33 = OpLoad %mat4v4float %32
         %35 = OpLoad %v3float %inPos
         %37 = OpCompositeExtract %float %35 0
         %38 = OpCompositeExtract %float %35 1
         %39 = OpCompositeExtract %float %35 2
         %40 = OpCompositeConstruct %v4float %37 %38 %39 %float_1
         %41 = OpMatrixTimesVector %v4float %33 %40
         %42 = OpCompositeExtract %float %41 0
         %43 = OpCompositeExtract %float %41 1
         %44 = OpCompositeExtract %float %41 2
         %45 = OpCompositeConstruct %v3float %42 %43 %44
               OpStore %locPos %45
         %47 = OpLoad %v3float %locPos
         %48 = OpAccessChain %_ptr_PushConstant_v4float %pushConsts %int_1
         %49 = OpLoad %v4float %48
         %50 = OpVectorShuffle %v3float %49 %49 0 1 2
         %51 = OpFAdd %v3float %47 %50
               OpStore %worldPos %51
         %58 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %59 = OpLoad %mat4v4float %58
         %61 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %62 = OpLoad %mat4v4float %61
         %63 = OpMatrixTimesMatrix %mat4v4float %59 %62
         %64 = OpLoad %v3float %worldPos
         %65 = OpCompositeExtract %float %64 0
         %66 = OpCompositeExtract %float %64 1
         %67 = OpCompositeExtract %float %64 2
         %68 = OpCompositeConstruct %v4float %65 %66 %67 %float_1
         %69 = OpMatrixTimesVector %v4float %63 %68
         %71 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %71 %69
               OpReturn
               OpFunctionEnd
