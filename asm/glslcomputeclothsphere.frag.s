; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 60
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
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
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 2
               OpDecorate %inViewVec Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
  %float_0_5 = OpConstant %float 0.5
         %11 = OpConstantComposite %v3float %float_0_5 %float_0_5 %float_0_5
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
%float_0_150000006 = OpConstant %float 0.150000006
    %float_1 = OpConstant %float 1
         %37 = OpConstantComposite %v3float %float_1 %float_1 %float_1
    %float_0 = OpConstant %float 0
   %float_32 = OpConstant %float 32
    %v4float = OpTypeVector %float 4
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
               OpStore %color %11
         %15 = OpLoad %v3float %inNormal
         %16 = OpExtInst %v3float %1 Normalize %15
               OpStore %N %16
         %19 = OpLoad %v3float %inLightVec
         %20 = OpExtInst %v3float %1 Normalize %19
               OpStore %L %20
         %23 = OpLoad %v3float %inViewVec
         %24 = OpExtInst %v3float %1 Normalize %23
               OpStore %V %24
         %26 = OpLoad %v3float %L
         %27 = OpFNegate %v3float %26
         %28 = OpLoad %v3float %N
         %29 = OpExtInst %v3float %1 Reflect %27 %28
               OpStore %R %29
         %31 = OpLoad %v3float %N
         %32 = OpLoad %v3float %L
         %33 = OpDot %float %31 %32
         %35 = OpExtInst %float %1 FMax %33 %float_0_150000006
         %38 = OpVectorTimesScalar %v3float %37 %35
               OpStore %diffuse %38
         %40 = OpLoad %v3float %R
         %41 = OpLoad %v3float %V
         %42 = OpDot %float %40 %41
         %44 = OpExtInst %float %1 FMax %42 %float_0
         %46 = OpExtInst %float %1 Pow %44 %float_32
         %47 = OpVectorTimesScalar %v3float %37 %46
               OpStore %specular %47
         %51 = OpLoad %v3float %diffuse
         %52 = OpLoad %v3float %color
         %53 = OpFMul %v3float %51 %52
         %54 = OpLoad %v3float %specular
         %55 = OpFAdd %v3float %53 %54
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v4float %56 %57 %58 %float_1
               OpStore %outFragColor %59
               OpReturn
               OpFunctionEnd
