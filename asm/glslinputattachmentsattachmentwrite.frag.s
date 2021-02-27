; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 55
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %outColor %inColor %inViewVec
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %intensity "intensity"
               OpName %inNormal "inNormal"
               OpName %inLightVec "inLightVec"
               OpName %shade "shade"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %inViewVec "inViewVec"
               OpDecorate %inNormal Location 1
               OpDecorate %inLightVec Location 3
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 0
               OpDecorate %inViewVec Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
 %float_0_75 = OpConstant %float 0.75
%float_0_349999994 = OpConstant %float 0.349999994
%float_0_600000024 = OpConstant %float 0.600000024
 %float_0_25 = OpConstant %float 0.25
%float_0_100000001 = OpConstant %float 0.100000001
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_3 = OpConstant %float 3
  %inViewVec = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
  %intensity = OpVariable %_ptr_Function_float Function
      %shade = OpVariable %_ptr_Function_float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
         %15 = OpLoad %v3float %inLightVec
         %16 = OpExtInst %v3float %1 Normalize %15
         %17 = OpDot %float %13 %16
               OpStore %intensity %17
               OpStore %shade %float_1
         %20 = OpLoad %float %intensity
         %23 = OpFOrdLessThan %bool %20 %float_0_5
         %25 = OpLoad %float %shade
         %26 = OpSelect %float %23 %float_0_75 %25
               OpStore %shade %26
         %27 = OpLoad %float %intensity
         %29 = OpFOrdLessThan %bool %27 %float_0_349999994
         %31 = OpLoad %float %shade
         %32 = OpSelect %float %29 %float_0_600000024 %31
               OpStore %shade %32
         %33 = OpLoad %float %intensity
         %35 = OpFOrdLessThan %bool %33 %float_0_25
         %36 = OpLoad %float %shade
         %37 = OpSelect %float %35 %float_0_5 %36
               OpStore %shade %37
         %38 = OpLoad %float %intensity
         %40 = OpFOrdLessThan %bool %38 %float_0_100000001
         %41 = OpLoad %float %shade
         %42 = OpSelect %float %40 %float_0_25 %41
               OpStore %shade %42
         %47 = OpLoad %v3float %inColor
         %49 = OpVectorTimesScalar %v3float %47 %float_3
         %50 = OpLoad %float %shade
         %51 = OpVectorTimesScalar %v3float %49 %50
         %52 = OpLoad %v4float %outColor
         %53 = OpVectorShuffle %v4float %52 %51 4 5 6 3
               OpStore %outColor %53
               OpReturn
               OpFunctionEnd
