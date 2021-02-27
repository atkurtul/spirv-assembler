; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 71
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inNormal %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
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
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %inLightVec Location 3
               OpDecorate %inViewVec Location 2
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerColor = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
%float_0_150000006 = OpConstant %float 0.150000006
    %float_1 = OpConstant %float 1
         %47 = OpConstantComposite %v3float %float_1 %float_1 %float_1
    %float_0 = OpConstant %float 0
    %float_8 = OpConstant %float 8
%float_0_200000003 = OpConstant %float 0.200000003
         %58 = OpConstantComposite %v3float %float_0_200000003 %float_0_200000003 %float_0_200000003
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
         %14 = OpLoad %11 %samplerColor
         %18 = OpLoad %v2float %inUV
         %20 = OpImageSampleImplicitLod %v4float %14 %18
         %21 = OpVectorShuffle %v3float %20 %20 0 1 2
               OpStore %color %21
         %25 = OpLoad %v3float %inNormal
         %26 = OpExtInst %v3float %1 Normalize %25
               OpStore %N %26
         %29 = OpLoad %v3float %inLightVec
         %30 = OpExtInst %v3float %1 Normalize %29
               OpStore %L %30
         %33 = OpLoad %v3float %inViewVec
         %34 = OpExtInst %v3float %1 Normalize %33
               OpStore %V %34
         %36 = OpLoad %v3float %L
         %37 = OpFNegate %v3float %36
         %38 = OpLoad %v3float %N
         %39 = OpExtInst %v3float %1 Reflect %37 %38
               OpStore %R %39
         %41 = OpLoad %v3float %N
         %42 = OpLoad %v3float %L
         %43 = OpDot %float %41 %42
         %45 = OpExtInst %float %1 FMax %43 %float_0_150000006
         %48 = OpVectorTimesScalar %v3float %47 %45
               OpStore %diffuse %48
         %50 = OpLoad %v3float %R
         %51 = OpLoad %v3float %V
         %52 = OpDot %float %50 %51
         %54 = OpExtInst %float %1 FMax %52 %float_0
         %56 = OpExtInst %float %1 Pow %54 %float_8
         %59 = OpVectorTimesScalar %v3float %58 %56
               OpStore %specular %59
         %62 = OpLoad %v3float %diffuse
         %63 = OpLoad %v3float %color
         %64 = OpFMul %v3float %62 %63
         %65 = OpLoad %v3float %specular
         %66 = OpFAdd %v3float %64 %65
         %67 = OpCompositeExtract %float %66 0
         %68 = OpCompositeExtract %float %66 1
         %69 = OpCompositeExtract %float %66 2
         %70 = OpCompositeConstruct %v4float %67 %68 %69 %float_1
               OpStore %outFragColor %70
               OpReturn
               OpFunctionEnd
