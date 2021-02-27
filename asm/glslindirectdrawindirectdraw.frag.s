; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 66
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inNormal %inLightVec %inColor %outFragColor %inViewVec
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %samplerArray "samplerArray"
               OpName %inUV "inUV"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %ambient "ambient"
               OpName %diffuse "diffuse"
               OpName %inColor "inColor"
               OpName %outFragColor "outFragColor"
               OpName %inViewVec "inViewVec"
               OpDecorate %samplerArray DescriptorSet 0
               OpDecorate %samplerArray Binding 1
               OpDecorate %inUV Location 2
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
               OpDecorate %inViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %10 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerArray = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
       %inUV = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Function_float = OpTypePointer Function %float
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
%float_0_649999976 = OpConstant %float 0.649999976
         %42 = OpConstantComposite %v3float %float_0_649999976 %float_0_649999976 %float_0_649999976
    %float_0 = OpConstant %float 0
    %inColor = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
  %inViewVec = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
         %14 = OpLoad %11 %samplerArray
         %18 = OpLoad %v3float %inUV
         %19 = OpImageSampleImplicitLod %v4float %14 %18
               OpStore %color %19
         %23 = OpAccessChain %_ptr_Function_float %color %uint_3
         %24 = OpLoad %float %23
         %27 = OpFOrdLessThan %bool %24 %float_0_5
               OpSelectionMerge %29 None
               OpBranchConditional %27 %28 %29
         %28 = OpLabel
               OpKill
         %29 = OpLabel
         %34 = OpLoad %v3float %inNormal
         %35 = OpExtInst %v3float %1 Normalize %34
               OpStore %N %35
         %38 = OpLoad %v3float %inLightVec
         %39 = OpExtInst %v3float %1 Normalize %38
               OpStore %L %39
               OpStore %ambient %42
         %44 = OpLoad %v3float %N
         %45 = OpLoad %v3float %L
         %46 = OpDot %float %44 %45
         %48 = OpExtInst %float %1 FMax %46 %float_0
         %50 = OpLoad %v3float %inColor
         %51 = OpVectorTimesScalar %v3float %50 %48
               OpStore %diffuse %51
         %54 = OpLoad %v3float %ambient
         %55 = OpLoad %v3float %diffuse
         %56 = OpFAdd %v3float %54 %55
         %57 = OpLoad %v4float %color
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpFMul %v3float %56 %58
         %61 = OpCompositeExtract %float %59 0
         %62 = OpCompositeExtract %float %59 1
         %63 = OpCompositeExtract %float %59 2
         %64 = OpCompositeConstruct %v4float %61 %62 %63 %float_1
               OpStore %outFragColor %64
               OpReturn
               OpFunctionEnd
