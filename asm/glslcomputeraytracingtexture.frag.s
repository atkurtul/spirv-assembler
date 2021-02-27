; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 30
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
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 0
               OpDecorate %inUV Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerColor = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
    %float_1 = OpConstant %float 1
     %uint_1 = OpConstant %uint 1
       %main = OpFunction %void None %3
          %5 = OpLabel
         %14 = OpLoad %11 %samplerColor
         %21 = OpAccessChain %_ptr_Input_float %inUV %uint_0
         %22 = OpLoad %float %21
         %25 = OpAccessChain %_ptr_Input_float %inUV %uint_1
         %26 = OpLoad %float %25
         %27 = OpFSub %float %float_1 %26
         %28 = OpCompositeConstruct %v2float %22 %27
         %29 = OpImageSampleImplicitLod %v4float %14 %28
               OpStore %outFragColor %29
               OpReturn
               OpFunctionEnd
