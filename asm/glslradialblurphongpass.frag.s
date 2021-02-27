; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 111
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inColor %outFragColor %inUV %inEyePos %inLightVec %inNormal
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %inColor "inColor"
               OpName %outFragColor "outFragColor"
               OpName %samplerGradientRamp "samplerGradientRamp"
               OpName %inUV "inUV"
               OpName %Eye "Eye"
               OpName %inEyePos "inEyePos"
               OpName %Reflected "Reflected"
               OpName %inLightVec "inLightVec"
               OpName %inNormal "inNormal"
               OpName %IAmbient "IAmbient"
               OpName %IDiffuse "IDiffuse"
               OpName %specular "specular"
               OpName %ISpecular "ISpecular"
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerGradientRamp DescriptorSet 0
               OpDecorate %samplerGradientRamp Binding 1
               OpDecorate %inUV Location 4
               OpDecorate %inEyePos Location 2
               OpDecorate %inLightVec Location 3
               OpDecorate %inNormal Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
       %bool = OpTypeBool
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
%float_0_899999976 = OpConstant %float 0.899999976
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %39 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %40 = OpTypeSampledImage %39
%_ptr_UniformConstant_40 = OpTypePointer UniformConstant %40
%samplerGradientRamp = OpVariable %_ptr_UniformConstant_40 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inEyePos = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
%float_0_200000003 = OpConstant %float 0.200000003
    %float_1 = OpConstant %float 1
         %71 = OpConstantComposite %v4float %float_0_200000003 %float_0_200000003 %float_0_200000003 %float_1
  %float_0_5 = OpConstant %float 0.5
         %74 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_0_5
    %float_0 = OpConstant %float 0
%_ptr_Function_float = OpTypePointer Function %float
 %float_0_25 = OpConstant %float 0.25
         %85 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_1
    %float_4 = OpConstant %float 4
       %main = OpFunction %void None %3
          %5 = OpLabel
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
   %IAmbient = OpVariable %_ptr_Function_v4float Function
   %IDiffuse = OpVariable %_ptr_Function_v4float Function
   %specular = OpVariable %_ptr_Function_float Function
  %ISpecular = OpVariable %_ptr_Function_v4float Function
         %14 = OpAccessChain %_ptr_Input_float %inColor %uint_0
         %15 = OpLoad %float %14
         %17 = OpFOrdGreaterThanEqual %bool %15 %float_0_899999976
         %18 = OpLogicalNot %bool %17
               OpSelectionMerge %20 None
               OpBranchConditional %18 %19 %20
         %19 = OpLabel
         %22 = OpAccessChain %_ptr_Input_float %inColor %uint_1
         %23 = OpLoad %float %22
         %24 = OpFOrdGreaterThanEqual %bool %23 %float_0_899999976
               OpBranch %20
         %20 = OpLabel
         %25 = OpPhi %bool %17 %5 %24 %19
         %26 = OpLogicalNot %bool %25
               OpSelectionMerge %28 None
               OpBranchConditional %26 %27 %28
         %27 = OpLabel
         %30 = OpAccessChain %_ptr_Input_float %inColor %uint_2
         %31 = OpLoad %float %30
         %32 = OpFOrdGreaterThanEqual %bool %31 %float_0_899999976
               OpBranch %28
         %28 = OpLabel
         %33 = OpPhi %bool %25 %20 %32 %27
               OpSelectionMerge %35 None
               OpBranchConditional %33 %34 %52
         %34 = OpLabel
         %43 = OpLoad %40 %samplerGradientRamp
         %47 = OpLoad %v2float %inUV
         %48 = OpImageSampleImplicitLod %v4float %43 %47
         %49 = OpVectorShuffle %v3float %48 %48 0 1 2
         %50 = OpLoad %v4float %outFragColor
         %51 = OpVectorShuffle %v4float %50 %49 4 5 6 3
               OpStore %outFragColor %51
               OpBranch %35
         %52 = OpLabel
         %56 = OpLoad %v3float %inEyePos
         %57 = OpFNegate %v3float %56
         %58 = OpExtInst %v3float %1 Normalize %57
               OpStore %Eye %58
         %61 = OpLoad %v3float %inLightVec
         %62 = OpFNegate %v3float %61
         %64 = OpLoad %v3float %inNormal
         %65 = OpExtInst %v3float %1 Reflect %62 %64
         %66 = OpExtInst %v3float %1 Normalize %65
               OpStore %Reflected %66
               OpStore %IAmbient %71
         %75 = OpLoad %v3float %inNormal
         %76 = OpLoad %v3float %inLightVec
         %77 = OpDot %float %75 %76
         %79 = OpExtInst %float %1 FMax %77 %float_0
         %80 = OpVectorTimesScalar %v4float %74 %79
               OpStore %IDiffuse %80
               OpStore %specular %float_0_25
         %86 = OpLoad %v3float %Reflected
         %87 = OpLoad %v3float %Eye
         %88 = OpDot %float %86 %87
         %89 = OpExtInst %float %1 FMax %88 %float_0
         %91 = OpExtInst %float %1 Pow %89 %float_4
         %92 = OpVectorTimesScalar %v4float %85 %91
         %93 = OpLoad %float %specular
         %94 = OpVectorTimesScalar %v4float %92 %93
               OpStore %ISpecular %94
         %95 = OpLoad %v4float %IAmbient
         %96 = OpLoad %v4float %IDiffuse
         %97 = OpFAdd %v4float %95 %96
         %98 = OpLoad %v3float %inColor
         %99 = OpCompositeExtract %float %98 0
        %100 = OpCompositeExtract %float %98 1
        %101 = OpCompositeExtract %float %98 2
        %102 = OpCompositeConstruct %v4float %99 %100 %101 %float_1
        %103 = OpFMul %v4float %97 %102
        %104 = OpLoad %v4float %ISpecular
        %105 = OpFAdd %v4float %103 %104
        %106 = OpCompositeExtract %float %105 0
        %107 = OpCompositeExtract %float %105 1
        %108 = OpCompositeExtract %float %105 2
        %109 = OpCompositeExtract %float %105 3
        %110 = OpCompositeConstruct %v4float %106 %107 %108 %109
               OpStore %outFragColor %110
               OpBranch %35
         %35 = OpLabel
               OpReturn
               OpFunctionEnd
