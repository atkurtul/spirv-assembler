; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 36
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %_ %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "mvp"
               OpName %pushConsts "pushConsts"
               OpName %inPos "inPos"
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpDecorate %PushConsts Block
               OpDecorate %inPos Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
 %PushConsts = OpTypeStruct %mat4v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %24 = OpAccessChain %_ptr_PushConstant_mat4v4float %pushConsts %int_0
         %25 = OpLoad %mat4v4float %24
         %27 = OpLoad %v3float %inPos
         %29 = OpCompositeExtract %float %27 0
         %30 = OpCompositeExtract %float %27 1
         %31 = OpCompositeExtract %float %27 2
         %32 = OpCompositeConstruct %v4float %29 %30 %31 %float_1
         %33 = OpMatrixTimesVector %v4float %25 %32
         %35 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %35 %33
               OpReturn
               OpFunctionEnd
