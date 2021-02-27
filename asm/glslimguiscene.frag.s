; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 58
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %inViewVec %outFragColor %inColor
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
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 3
               OpDecorate %inViewVec Location 2
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_float = OpTypePointer Function %float
    %float_0 = OpConstant %float 0
   %float_16 = OpConstant %float 16
 %float_0_75 = OpConstant %float 0.75
         %42 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_float Function
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
         %29 = OpLoad %v3float %N
         %30 = OpLoad %v3float %L
         %31 = OpDot %float %29 %30
         %33 = OpExtInst %float %1 FMax %31 %float_0
               OpStore %diffuse %33
         %35 = OpLoad %v3float %R
         %36 = OpLoad %v3float %V
         %37 = OpDot %float %35 %36
         %38 = OpExtInst %float %1 FMax %37 %float_0
         %40 = OpExtInst %float %1 Pow %38 %float_16
         %43 = OpVectorTimesScalar %v3float %42 %40
               OpStore %specular %43
         %47 = OpLoad %float %diffuse
         %49 = OpLoad %v3float %inColor
         %50 = OpVectorTimesScalar %v3float %49 %47
         %51 = OpLoad %v3float %specular
         %52 = OpFAdd %v3float %50 %51
         %54 = OpCompositeExtract %float %52 0
         %55 = OpCompositeExtract %float %52 1
         %56 = OpCompositeExtract %float %52 2
         %57 = OpCompositeConstruct %v4float %54 %55 %56 %float_1
               OpStore %outFragColor %57
               OpReturn
               OpFunctionEnd
