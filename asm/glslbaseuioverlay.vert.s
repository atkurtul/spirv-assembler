; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 43
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %outColor %inColor %_ %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %inPos "inPos"
               OpName %PushConstants "PushConstants"
               OpMemberName %PushConstants 0 "scale"
               OpMemberName %PushConstants 1 "translate"
               OpName %pushConstants "pushConstants"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
               OpMemberDecorate %PushConstants 0 Offset 0
               OpMemberDecorate %PushConstants 1 Offset 8
               OpDecorate %PushConstants Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
    %inColor = OpVariable %_ptr_Input_v4float Input
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
      %inPos = OpVariable %_ptr_Input_v2float Input
%PushConstants = OpTypeStruct %v2float %v2float
%_ptr_PushConstant_PushConstants = OpTypePointer PushConstant %PushConstants
%pushConstants = OpVariable %_ptr_PushConstant_PushConstants PushConstant
%_ptr_PushConstant_v2float = OpTypePointer PushConstant %v2float
      %int_1 = OpConstant %int 1
    %float_0 = OpConstant %float 0
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
         %12 = OpLoad %v2float %inUV
               OpStore %outUV %12
         %18 = OpLoad %v4float %inColor
               OpStore %outColor %18
         %25 = OpLoad %v2float %inPos
         %30 = OpAccessChain %_ptr_PushConstant_v2float %pushConstants %int_0
         %31 = OpLoad %v2float %30
         %32 = OpFMul %v2float %25 %31
         %34 = OpAccessChain %_ptr_PushConstant_v2float %pushConstants %int_1
         %35 = OpLoad %v2float %34
         %36 = OpFAdd %v2float %32 %35
         %39 = OpCompositeExtract %float %36 0
         %40 = OpCompositeExtract %float %36 1
         %41 = OpCompositeConstruct %v4float %39 %40 %float_0 %float_1
         %42 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %42 %41
               OpReturn
               OpFunctionEnd
