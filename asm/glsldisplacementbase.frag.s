; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 74
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %outFragColor %inUV %inEyePos %inLightVec
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %outFragColor "outFragColor"
               OpName %colorMap "colorMap"
               OpName %inUV "inUV"
               OpName %Eye "Eye"
               OpName %inEyePos "inEyePos"
               OpName %Reflected "Reflected"
               OpName %inLightVec "inLightVec"
               OpName %IAmbient "IAmbient"
               OpName %IDiffuse "IDiffuse"
               OpDecorate %inNormal Location 0
               OpDecorate %outFragColor Location 0
               OpDecorate %colorMap DescriptorSet 0
               OpDecorate %colorMap Binding 2
               OpDecorate %inUV Location 1
               OpDecorate %inEyePos Location 2
               OpDecorate %inLightVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%float_0_577350259 = OpConstant %float 0.577350259
         %16 = OpConstantComposite %v3float %float_0_577350259 %float_0_577350259 %float_0_577350259
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %20 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %21 = OpTypeSampledImage %20
%_ptr_UniformConstant_21 = OpTypePointer UniformConstant %21
   %colorMap = OpVariable %_ptr_UniformConstant_21 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
   %inEyePos = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_0 = OpConstant %float 0
    %float_1 = OpConstant %float 1
         %49 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_1
         %51 = OpConstantComposite %v4float %float_1 %float_1 %float_1 %float_1
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
   %IAmbient = OpVariable %_ptr_Function_v4float Function
   %IDiffuse = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
               OpStore %L %16
         %24 = OpLoad %21 %colorMap
         %28 = OpLoad %v2float %inUV
         %29 = OpImageSampleImplicitLod %v4float %24 %28
         %30 = OpVectorShuffle %v3float %29 %29 0 1 2
         %31 = OpLoad %v4float %outFragColor
         %32 = OpVectorShuffle %v4float %31 %30 4 5 6 3
               OpStore %outFragColor %32
         %35 = OpLoad %v3float %inEyePos
         %36 = OpFNegate %v3float %35
         %37 = OpExtInst %v3float %1 Normalize %36
               OpStore %Eye %37
         %40 = OpLoad %v3float %inLightVec
         %41 = OpFNegate %v3float %40
         %42 = OpLoad %v3float %inNormal
         %43 = OpExtInst %v3float %1 Reflect %41 %42
         %44 = OpExtInst %v3float %1 Normalize %43
               OpStore %Reflected %44
               OpStore %IAmbient %49
         %52 = OpLoad %v3float %inNormal
         %53 = OpLoad %v3float %inLightVec
         %54 = OpDot %float %52 %53
         %55 = OpExtInst %float %1 FMax %54 %float_0
         %56 = OpVectorTimesScalar %v4float %51 %55
               OpStore %IDiffuse %56
         %57 = OpLoad %v4float %IAmbient
         %58 = OpLoad %v4float %IDiffuse
         %59 = OpFAdd %v4float %57 %58
         %60 = OpLoad %21 %colorMap
         %61 = OpLoad %v2float %inUV
         %62 = OpImageSampleImplicitLod %v4float %60 %61
         %63 = OpVectorShuffle %v3float %62 %62 0 1 2
         %64 = OpCompositeExtract %float %63 0
         %65 = OpCompositeExtract %float %63 1
         %66 = OpCompositeExtract %float %63 2
         %67 = OpCompositeConstruct %v4float %64 %65 %66 %float_1
         %68 = OpFMul %v4float %59 %67
         %69 = OpCompositeExtract %float %68 0
         %70 = OpCompositeExtract %float %68 1
         %71 = OpCompositeExtract %float %68 2
         %72 = OpCompositeExtract %float %68 3
         %73 = OpCompositeConstruct %v4float %69 %70 %71 %72
               OpStore %outFragColor %73
               OpReturn
               OpFunctionEnd
