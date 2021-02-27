; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 30
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %alpha "alpha"
               OpName %colorMap "colorMap"
               OpName %inUV "inUV"
               OpDecorate %colorMap DescriptorSet 1
               OpDecorate %colorMap Binding 0
               OpDecorate %inUV Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %9 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %10 = OpTypeSampledImage %9
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
   %colorMap = OpVariable %_ptr_UniformConstant_10 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
       %main = OpFunction %void None %3
          %5 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %colorMap
         %17 = OpLoad %v2float %inUV
         %19 = OpImageSampleImplicitLod %v4float %13 %17
         %22 = OpCompositeExtract %float %19 3
               OpStore %alpha %22
         %23 = OpLoad %float %alpha
         %26 = OpFOrdLessThan %bool %23 %float_0_5
               OpSelectionMerge %28 None
               OpBranchConditional %26 %27 %28
         %27 = OpLabel
               OpKill
         %28 = OpLabel
               OpReturn
               OpFunctionEnd
