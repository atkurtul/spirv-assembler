; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 46
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %color "color"
               OpName %samplerColorMap "samplerColorMap"
               OpName %inUV "inUV"
               OpName %outFragColor "outFragColor"
               OpDecorate %inNormal Location 0
               OpDecorate %samplerColorMap DescriptorSet 1
               OpDecorate %samplerColorMap Binding 0
               OpDecorate %inUV Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%float_n0_707106769 = OpConstant %float -0.707106769
    %float_0 = OpConstant %float 0
         %17 = OpConstantComposite %v3float %float_n0_707106769 %float_n0_707106769 %float_0
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %21 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %22 = OpTypeSampledImage %21
%_ptr_UniformConstant_22 = OpTypePointer UniformConstant %22
%samplerColorMap = OpVariable %_ptr_UniformConstant_22 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
%float_0_200000003 = OpConstant %float 0.200000003
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
               OpStore %L %17
         %25 = OpLoad %22 %samplerColorMap
         %29 = OpLoad %v2float %inUV
         %30 = OpImageSampleImplicitLod %v4float %25 %29
               OpStore %color %30
         %33 = OpLoad %v3float %N
         %34 = OpLoad %v3float %L
         %35 = OpDot %float %33 %34
         %36 = OpExtInst %float %1 FMax %35 %float_0
         %39 = OpExtInst %float %1 FClamp %36 %float_0_200000003 %float_1
         %40 = OpCompositeConstruct %v3float %39 %39 %39
         %41 = OpLoad %v4float %color
         %42 = OpVectorShuffle %v3float %41 %41 0 1 2
         %43 = OpFMul %v3float %40 %42
         %44 = OpLoad %v4float %outFragColor
         %45 = OpVectorShuffle %v4float %44 %43 4 5 6 3
               OpStore %outFragColor %45
               OpReturn
               OpFunctionEnd
