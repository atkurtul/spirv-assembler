; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 27
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %samplerFont "samplerFont"
               OpName %inUV "inUV"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerFont DescriptorSet 0
               OpDecorate %samplerFont Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %9 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %10 = OpTypeSampledImage %9
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
%samplerFont = OpVariable %_ptr_UniformConstant_10 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %samplerFont
         %17 = OpLoad %v2float %inUV
         %19 = OpImageSampleImplicitLod %v4float %13 %17
         %22 = OpCompositeExtract %float %19 0
               OpStore %color %22
         %25 = OpLoad %float %color
         %26 = OpCompositeConstruct %v4float %25 %25 %25 %25
               OpStore %outFragColor %26
               OpReturn
               OpFunctionEnd
