; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 60
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
               OpName %LinearizeDepth_f1_ "LinearizeDepth(f1;"
               OpName %depth "depth"
               OpName %n "n"
               OpName %f "f"
               OpName %z "z"
               OpName %depth_0 "depth"
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
               OpName %outFragColor "outFragColor"
               OpName %param "param"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %8 = OpTypeFunction %float %_ptr_Function_float
    %float_1 = OpConstant %float 1
  %float_128 = OpConstant %float 128
    %float_2 = OpConstant %float 2
         %34 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %35 = OpTypeSampledImage %34
%_ptr_UniformConstant_35 = OpTypePointer UniformConstant %35
%samplerColor = OpVariable %_ptr_UniformConstant_35 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
       %main = OpFunction %void None %3
          %5 = OpLabel
    %depth_0 = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_float Function
         %38 = OpLoad %35 %samplerColor
         %42 = OpLoad %v2float %inUV
         %44 = OpImageSampleImplicitLod %v4float %38 %42
         %47 = OpCompositeExtract %float %44 0
               OpStore %depth_0 %47
         %51 = OpLoad %float %depth_0
               OpStore %param %51
         %52 = OpFunctionCall %float %LinearizeDepth_f1_ %param
         %53 = OpFSub %float %float_1 %52
         %55 = OpCompositeConstruct %v3float %53 %53 %53
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v4float %56 %57 %58 %float_1
               OpStore %outFragColor %59
               OpReturn
               OpFunctionEnd
%LinearizeDepth_f1_ = OpFunction %float None %8
      %depth = OpFunctionParameter %_ptr_Function_float
         %11 = OpLabel
          %n = OpVariable %_ptr_Function_float Function
          %f = OpVariable %_ptr_Function_float Function
          %z = OpVariable %_ptr_Function_float Function
               OpStore %n %float_1
               OpStore %f %float_128
         %17 = OpLoad %float %depth
               OpStore %z %17
         %19 = OpLoad %float %n
         %20 = OpFMul %float %float_2 %19
         %21 = OpLoad %float %f
         %22 = OpLoad %float %n
         %23 = OpFAdd %float %21 %22
         %24 = OpLoad %float %z
         %25 = OpLoad %float %f
         %26 = OpLoad %float %n
         %27 = OpFSub %float %25 %26
         %28 = OpFMul %float %24 %27
         %29 = OpFSub %float %23 %28
         %30 = OpFDiv %float %20 %29
               OpReturnValue %30
               OpFunctionEnd
