; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 75
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inNormal %inLightVec %inViewVec %outFragColor %inLodBias
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
               OpName %inLodBias "inLodBias"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %inNormal Location 2
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %inLodBias Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %10 = OpTypeImage %float 3D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerColor = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
       %inUV = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
    %float_1 = OpConstant %float 1
         %45 = OpConstantComposite %v3float %float_1 %float_1 %float_1
%_ptr_Function_float = OpTypePointer Function %float
   %float_16 = OpConstant %float 16
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_float = OpTypePointer Input %float
  %inLodBias = OpVariable %_ptr_Input_float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_float Function
         %14 = OpLoad %11 %samplerColor
         %18 = OpLoad %v3float %inUV
         %19 = OpImageSampleImplicitLod %v4float %14 %18
               OpStore %color %19
         %23 = OpLoad %v3float %inNormal
         %24 = OpExtInst %v3float %1 Normalize %23
               OpStore %N %24
         %27 = OpLoad %v3float %inLightVec
         %28 = OpExtInst %v3float %1 Normalize %27
               OpStore %L %28
         %31 = OpLoad %v3float %inViewVec
         %32 = OpExtInst %v3float %1 Normalize %31
               OpStore %V %32
         %34 = OpLoad %v3float %L
         %35 = OpFNegate %v3float %34
         %36 = OpLoad %v3float %N
         %37 = OpExtInst %v3float %1 Reflect %35 %36
               OpStore %R %37
         %39 = OpLoad %v3float %N
         %40 = OpLoad %v3float %L
         %41 = OpDot %float %39 %40
         %43 = OpExtInst %float %1 FMax %41 %float_0
         %46 = OpVectorTimesScalar %v3float %45 %43
               OpStore %diffuse %46
         %49 = OpLoad %v3float %R
         %50 = OpLoad %v3float %V
         %51 = OpDot %float %49 %50
         %52 = OpExtInst %float %1 FMax %51 %float_0
         %54 = OpExtInst %float %1 Pow %52 %float_16
         %57 = OpAccessChain %_ptr_Function_float %color %uint_0
         %58 = OpLoad %float %57
         %59 = OpFMul %float %54 %58
               OpStore %specular %59
         %62 = OpLoad %v3float %diffuse
         %63 = OpAccessChain %_ptr_Function_float %color %uint_0
         %64 = OpLoad %float %63
         %65 = OpVectorTimesScalar %v3float %62 %64
         %66 = OpLoad %float %specular
         %67 = OpCompositeConstruct %v3float %66 %66 %66
         %68 = OpFAdd %v3float %65 %67
         %69 = OpCompositeExtract %float %68 0
         %70 = OpCompositeExtract %float %68 1
         %71 = OpCompositeExtract %float %68 2
         %72 = OpCompositeConstruct %v4float %69 %70 %71 %float_1
               OpStore %outFragColor %72
               OpReturn
               OpFunctionEnd
