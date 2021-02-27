; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 40
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inCascadeIndex %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %depth "depth"
               OpName %shadowMap "shadowMap"
               OpName %inUV "inUV"
               OpName %inCascadeIndex "inCascadeIndex"
               OpName %outFragColor "outFragColor"
               OpDecorate %shadowMap DescriptorSet 0
               OpDecorate %shadowMap Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %inCascadeIndex Flat
               OpDecorate %inCascadeIndex Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %9 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %10 = OpTypeSampledImage %9
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
  %shadowMap = OpVariable %_ptr_UniformConstant_10 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
%_ptr_Input_uint = OpTypePointer Input %uint
%inCascadeIndex = OpVariable %_ptr_Input_uint Input
    %v3float = OpTypeVector %float 3
    %v4float = OpTypeVector %float 4
     %uint_0 = OpConstant %uint 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
      %depth = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %shadowMap
         %17 = OpLoad %v2float %inUV
         %21 = OpLoad %uint %inCascadeIndex
         %22 = OpConvertUToF %float %21
         %24 = OpCompositeExtract %float %17 0
         %25 = OpCompositeExtract %float %17 1
         %26 = OpCompositeConstruct %v3float %24 %25 %22
         %28 = OpImageSampleImplicitLod %v4float %13 %26
         %30 = OpCompositeExtract %float %28 0
               OpStore %depth %30
         %33 = OpLoad %float %depth
         %34 = OpCompositeConstruct %v3float %33 %33 %33
         %36 = OpCompositeExtract %float %34 0
         %37 = OpCompositeExtract %float %34 1
         %38 = OpCompositeExtract %float %34 2
         %39 = OpCompositeConstruct %v4float %36 %37 %38 %float_1
               OpStore %outFragColor %39
               OpReturn
               OpFunctionEnd
