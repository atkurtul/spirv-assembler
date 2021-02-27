; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 43
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %outFragColor %inColor %inViewVec
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %ambient "ambient"
               OpName %diffuse "diffuse"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpName %inViewVec "inViewVec"
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 1
               OpDecorate %inViewVec Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
 %float_0_25 = OpConstant %float 0.25
         %20 = OpConstantComposite %v3float %float_0_25 %float_0_25 %float_0_25
    %float_0 = OpConstant %float 0
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
  %inViewVec = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
         %16 = OpLoad %v3float %inLightVec
         %17 = OpExtInst %v3float %1 Normalize %16
               OpStore %L %17
               OpStore %ambient %20
         %22 = OpLoad %v3float %N
         %23 = OpLoad %v3float %L
         %24 = OpDot %float %22 %23
         %26 = OpExtInst %float %1 FMax %24 %float_0
         %27 = OpCompositeConstruct %v3float %26 %26 %26
               OpStore %diffuse %27
         %31 = OpLoad %v3float %ambient
         %32 = OpLoad %v3float %diffuse
         %33 = OpFAdd %v3float %31 %32
         %35 = OpLoad %v3float %inColor
         %36 = OpFMul %v3float %33 %35
         %38 = OpCompositeExtract %float %36 0
         %39 = OpCompositeExtract %float %36 1
         %40 = OpCompositeExtract %float %36 2
         %41 = OpCompositeConstruct %v4float %38 %39 %40 %float_1
               OpStore %outFragColor %41
               OpReturn
               OpFunctionEnd
