; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 64
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
               OpName %ambient "ambient"
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
%float_0_100000001 = OpConstant %float 0.100000001
         %29 = OpConstantComposite %v3float %float_0_100000001 %float_0_100000001 %float_0_100000001
    %float_0 = OpConstant %float 0
    %float_1 = OpConstant %float 1
         %37 = OpConstantComposite %v3float %float_1 %float_1 %float_1
   %float_16 = OpConstant %float 16
 %float_0_75 = OpConstant %float 0.75
         %47 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
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
               OpStore %ambient %29
         %31 = OpLoad %v3float %N
         %32 = OpLoad %v3float %L
         %33 = OpDot %float %31 %32
         %35 = OpExtInst %float %1 FMax %33 %float_0
         %38 = OpVectorTimesScalar %v3float %37 %35
               OpStore %diffuse %38
         %40 = OpLoad %v3float %R
         %41 = OpLoad %v3float %V
         %42 = OpDot %float %40 %41
         %43 = OpExtInst %float %1 FMax %42 %float_0
         %45 = OpExtInst %float %1 Pow %43 %float_16
         %48 = OpVectorTimesScalar %v3float %47 %45
               OpStore %specular %48
         %52 = OpLoad %v3float %ambient
         %53 = OpLoad %v3float %diffuse
         %54 = OpFAdd %v3float %52 %53
         %56 = OpLoad %v3float %inColor
         %57 = OpFMul %v3float %54 %56
         %58 = OpLoad %v3float %specular
         %59 = OpFAdd %v3float %57 %58
         %60 = OpCompositeExtract %float %59 0
         %61 = OpCompositeExtract %float %59 1
         %62 = OpCompositeExtract %float %59 2
         %63 = OpCompositeConstruct %v4float %60 %61 %62 %float_1
               OpStore %outFragColor %63
               OpReturn
               OpFunctionEnd
