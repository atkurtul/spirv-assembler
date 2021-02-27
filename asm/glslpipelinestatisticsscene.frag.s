; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 57
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %inViewVec %inColor %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %V "V"
               OpName %inViewVec "inViewVec"
               OpName %R "R"
               OpName %diffuse "diffuse"
               OpName %inColor "inColor"
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 3
               OpDecorate %inViewVec Location 2
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_8 = OpConstant %float 8
 %float_0_75 = OpConstant %float 0.75
         %44 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
  %float_0_5 = OpConstant %float 0.5
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
         %16 = OpLoad %v3float %inLightVec
         %17 = OpExtInst %v3float %1 Normalize %16
               OpStore %L %17
         %20 = OpLoad %v3float %inViewVec
         %21 = OpExtInst %v3float %1 Normalize %20
               OpStore %V %21
         %23 = OpLoad %v3float %L
         %24 = OpFNegate %v3float %23
         %25 = OpLoad %v3float %N
         %26 = OpExtInst %v3float %1 Reflect %24 %25
               OpStore %R %26
         %28 = OpLoad %v3float %N
         %29 = OpLoad %v3float %L
         %30 = OpDot %float %28 %29
         %32 = OpExtInst %float %1 FMax %30 %float_0
         %34 = OpLoad %v3float %inColor
         %35 = OpVectorTimesScalar %v3float %34 %32
               OpStore %diffuse %35
         %37 = OpLoad %v3float %R
         %38 = OpLoad %v3float %V
         %39 = OpDot %float %37 %38
         %40 = OpExtInst %float %1 FMax %39 %float_0
         %42 = OpExtInst %float %1 Pow %40 %float_8
         %45 = OpVectorTimesScalar %v3float %44 %42
               OpStore %specular %45
         %49 = OpLoad %v3float %diffuse
         %50 = OpLoad %v3float %specular
         %51 = OpFAdd %v3float %49 %50
         %53 = OpCompositeExtract %float %51 0
         %54 = OpCompositeExtract %float %51 1
         %55 = OpCompositeExtract %float %51 2
         %56 = OpCompositeConstruct %v4float %53 %54 %55 %float_0_5
               OpStore %outFragColor %56
               OpReturn
               OpFunctionEnd
