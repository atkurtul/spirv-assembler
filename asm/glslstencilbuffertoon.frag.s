; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 90
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %inColor %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %intensity "intensity"
               OpName %color "color"
               OpName %inColor "inColor"
               OpName %outFragColor "outFragColor"
               OpName %samplerColorMap "samplerColorMap"
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 2
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerColorMap DescriptorSet 0
               OpDecorate %samplerColorMap Binding 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_float = OpTypePointer Function %float
%float_0_980000019 = OpConstant %float 0.980000019
       %bool = OpTypeBool
    %inColor = OpVariable %_ptr_Input_v3float Input
  %float_1_5 = OpConstant %float 1.5
%float_0_899999976 = OpConstant %float 0.899999976
    %float_1 = OpConstant %float 1
  %float_0_5 = OpConstant %float 0.5
%float_0_600000024 = OpConstant %float 0.600000024
 %float_0_25 = OpConstant %float 0.25
%float_0_400000006 = OpConstant %float 0.400000006
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_212599993 = OpConstant %float 0.212599993
%float_0_715200007 = OpConstant %float 0.715200007
%float_0_0722000003 = OpConstant %float 0.0722000003
         %69 = OpConstantComposite %v3float %float_0_212599993 %float_0_715200007 %float_0_0722000003
%float_0_100000001 = OpConstant %float 0.100000001
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %86 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %87 = OpTypeSampledImage %86
%_ptr_UniformConstant_87 = OpTypePointer UniformConstant %87
%samplerColorMap = OpVariable %_ptr_UniformConstant_87 UniformConstant
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
  %intensity = OpVariable %_ptr_Function_float Function
      %color = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
         %16 = OpLoad %v3float %inLightVec
         %17 = OpExtInst %v3float %1 Normalize %16
               OpStore %L %17
         %20 = OpLoad %v3float %N
         %21 = OpLoad %v3float %L
         %22 = OpDot %float %20 %21
               OpStore %intensity %22
         %23 = OpLoad %float %intensity
         %26 = OpFOrdGreaterThan %bool %23 %float_0_980000019
               OpSelectionMerge %28 None
               OpBranchConditional %26 %27 %34
         %27 = OpLabel
         %31 = OpLoad %v3float %inColor
         %33 = OpVectorTimesScalar %v3float %31 %float_1_5
               OpStore %color %33
               OpBranch %28
         %34 = OpLabel
         %35 = OpLoad %float %intensity
         %37 = OpFOrdGreaterThan %bool %35 %float_0_899999976
               OpSelectionMerge %39 None
               OpBranchConditional %37 %38 %43
         %38 = OpLabel
         %40 = OpLoad %v3float %inColor
         %42 = OpVectorTimesScalar %v3float %40 %float_1
               OpStore %color %42
               OpBranch %39
         %43 = OpLabel
         %44 = OpLoad %float %intensity
         %46 = OpFOrdGreaterThan %bool %44 %float_0_5
               OpSelectionMerge %48 None
               OpBranchConditional %46 %47 %52
         %47 = OpLabel
         %49 = OpLoad %v3float %inColor
         %51 = OpVectorTimesScalar %v3float %49 %float_0_600000024
               OpStore %color %51
               OpBranch %48
         %52 = OpLabel
         %53 = OpLoad %float %intensity
         %55 = OpFOrdGreaterThan %bool %53 %float_0_25
               OpSelectionMerge %57 None
               OpBranchConditional %55 %56 %61
         %56 = OpLabel
         %58 = OpLoad %v3float %inColor
         %60 = OpVectorTimesScalar %v3float %58 %float_0_400000006
               OpStore %color %60
               OpBranch %57
         %61 = OpLabel
         %62 = OpLoad %v3float %inColor
         %64 = OpVectorTimesScalar %v3float %62 %float_0_200000003
               OpStore %color %64
               OpBranch %57
         %57 = OpLabel
               OpBranch %48
         %48 = OpLabel
               OpBranch %39
         %39 = OpLabel
               OpBranch %28
         %28 = OpLabel
         %65 = OpLoad %v3float %color
         %70 = OpLoad %v3float %color
         %71 = OpDot %float %69 %70
         %72 = OpCompositeConstruct %v3float %71 %71 %71
         %74 = OpCompositeConstruct %v3float %float_0_100000001 %float_0_100000001 %float_0_100000001
         %75 = OpExtInst %v3float %1 FMix %65 %72 %74
         %76 = OpCompositeExtract %float %75 0
         %77 = OpCompositeExtract %float %75 1
         %78 = OpCompositeExtract %float %75 2
         %79 = OpCompositeConstruct %v3float %76 %77 %78
               OpStore %color %79
         %83 = OpLoad %v3float %color
         %84 = OpLoad %v4float %outFragColor
         %85 = OpVectorShuffle %v4float %84 %83 4 5 6 3
               OpStore %outFragColor %85
               OpReturn
               OpFunctionEnd
