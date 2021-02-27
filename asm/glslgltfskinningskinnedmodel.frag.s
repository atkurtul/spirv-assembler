; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 79
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inColor %inNormal %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %samplerColorMap "samplerColorMap"
               OpName %inUV "inUV"
               OpName %inColor "inColor"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %V "V"
               OpName %inViewVec "inViewVec"
               OpName %R "R"
               OpName %diffuse "diffuse"
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColorMap DescriptorSet 2
               OpDecorate %samplerColorMap Binding 0
               OpDecorate %inUV Location 2
               OpDecorate %inColor Location 1
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerColorMap = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
  %float_0_5 = OpConstant %float 0.5
    %float_0 = OpConstant %float 0
   %float_16 = OpConstant %float 16
 %float_0_75 = OpConstant %float 0.75
         %65 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
         %14 = OpLoad %11 %samplerColorMap
         %18 = OpLoad %v2float %inUV
         %19 = OpImageSampleImplicitLod %v4float %14 %18
         %23 = OpLoad %v3float %inColor
         %25 = OpCompositeExtract %float %23 0
         %26 = OpCompositeExtract %float %23 1
         %27 = OpCompositeExtract %float %23 2
         %28 = OpCompositeConstruct %v4float %25 %26 %27 %float_1
         %29 = OpFMul %v4float %19 %28
               OpStore %color %29
         %33 = OpLoad %v3float %inNormal
         %34 = OpExtInst %v3float %1 Normalize %33
               OpStore %N %34
         %37 = OpLoad %v3float %inLightVec
         %38 = OpExtInst %v3float %1 Normalize %37
               OpStore %L %38
         %41 = OpLoad %v3float %inViewVec
         %42 = OpExtInst %v3float %1 Normalize %41
               OpStore %V %42
         %44 = OpLoad %v3float %L
         %45 = OpFNegate %v3float %44
         %46 = OpLoad %v3float %N
         %47 = OpExtInst %v3float %1 Reflect %45 %46
               OpStore %R %47
         %49 = OpLoad %v3float %N
         %50 = OpLoad %v3float %L
         %51 = OpDot %float %49 %50
         %53 = OpExtInst %float %1 FMax %51 %float_0_5
         %54 = OpLoad %v3float %inColor
         %55 = OpVectorTimesScalar %v3float %54 %53
               OpStore %diffuse %55
         %57 = OpLoad %v3float %R
         %58 = OpLoad %v3float %V
         %59 = OpDot %float %57 %58
         %61 = OpExtInst %float %1 FMax %59 %float_0
         %63 = OpExtInst %float %1 Pow %61 %float_16
         %66 = OpVectorTimesScalar %v3float %65 %63
               OpStore %specular %66
         %69 = OpLoad %v3float %diffuse
         %70 = OpLoad %v4float %color
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpFMul %v3float %69 %71
         %73 = OpLoad %v3float %specular
         %74 = OpFAdd %v3float %72 %73
         %75 = OpCompositeExtract %float %74 0
         %76 = OpCompositeExtract %float %74 1
         %77 = OpCompositeExtract %float %74 2
         %78 = OpCompositeConstruct %v4float %75 %76 %77 %float_1
               OpStore %outFragColor %78
               OpReturn
               OpFunctionEnd
