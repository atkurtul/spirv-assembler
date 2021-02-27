; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 39
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outFragColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outFragColor "outFragColor"
               OpName %inUV "inUV"
               OpName %samplerColor "samplerColor"
               OpDecorate %outFragColor Location 0
               OpDecorate %inUV Location 0
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
%float_0_930000007 = OpConstant %float 0.930000007
%float_0_899999976 = OpConstant %float 0.899999976
%float_0_810000002 = OpConstant %float 0.810000002
    %float_1 = OpConstant %float 1
         %14 = OpConstantComposite %v4float %float_0_930000007 %float_0_899999976 %float_0_810000002 %float_1
%float_0_349999994 = OpConstant %float 0.349999994
  %float_0_5 = OpConstant %float 0.5
         %17 = OpConstantComposite %v4float %float_0_349999994 %float_0_5 %float_1 %float_1
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_ptr_Input_float = OpTypePointer Input %float
%float_0_0500000007 = OpConstant %float 0.0500000007
%float_0_150000006 = OpConstant %float 0.150000006
         %35 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %36 = OpTypeSampledImage %35
%_ptr_UniformConstant_36 = OpTypePointer UniformConstant %36
%samplerColor = OpVariable %_ptr_UniformConstant_36 UniformConstant
       %main = OpFunction %void None %3
          %5 = OpLabel
         %24 = OpAccessChain %_ptr_Input_float %inUV %uint_1
         %25 = OpLoad %float %24
         %27 = OpFAdd %float %25 %float_0_0500000007
         %28 = OpFSub %float %float_0_5 %27
         %29 = OpExtInst %float %1 FMin %28 %float_0_5
         %31 = OpFDiv %float %29 %float_0_150000006
         %32 = OpFAdd %float %31 %float_0_5
         %33 = OpCompositeConstruct %v4float %32 %32 %32 %32
         %34 = OpExtInst %v4float %1 FMix %14 %17 %33
               OpStore %outFragColor %34
               OpReturn
               OpFunctionEnd
