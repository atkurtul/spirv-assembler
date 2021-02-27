; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 68
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inVisible %inNormal %inLightVec %inViewVec %inColor %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %inVisible "inVisible"
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
               OpDecorate %inVisible Location 2
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Input_float = OpTypePointer Input %float
  %inVisible = OpVariable %_ptr_Input_float Input
    %float_0 = OpConstant %float 0
       %bool = OpTypeBool
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
 %float_0_25 = OpConstant %float 0.25
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_8 = OpConstant %float 8
 %float_0_75 = OpConstant %float 0.75
         %52 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
%float_0_100000001 = OpConstant %float 0.100000001
         %67 = OpConstantComposite %v4float %float_0_100000001 %float_0_100000001 %float_0_100000001 %float_1
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
          %9 = OpLoad %float %inVisible
         %12 = OpFOrdGreaterThan %bool %9 %float_0
               OpSelectionMerge %14 None
               OpBranchConditional %12 %13 %65
         %13 = OpLabel
         %20 = OpLoad %v3float %inNormal
         %21 = OpExtInst %v3float %1 Normalize %20
               OpStore %N %21
         %24 = OpLoad %v3float %inLightVec
         %25 = OpExtInst %v3float %1 Normalize %24
               OpStore %L %25
         %28 = OpLoad %v3float %inViewVec
         %29 = OpExtInst %v3float %1 Normalize %28
               OpStore %V %29
         %31 = OpLoad %v3float %L
         %32 = OpFNegate %v3float %31
         %33 = OpLoad %v3float %N
         %34 = OpExtInst %v3float %1 Reflect %32 %33
               OpStore %R %34
         %36 = OpLoad %v3float %N
         %37 = OpLoad %v3float %L
         %38 = OpDot %float %36 %37
         %40 = OpExtInst %float %1 FMax %38 %float_0_25
         %42 = OpLoad %v3float %inColor
         %43 = OpVectorTimesScalar %v3float %42 %40
               OpStore %diffuse %43
         %45 = OpLoad %v3float %R
         %46 = OpLoad %v3float %V
         %47 = OpDot %float %45 %46
         %48 = OpExtInst %float %1 FMax %47 %float_0
         %50 = OpExtInst %float %1 Pow %48 %float_8
         %53 = OpVectorTimesScalar %v3float %52 %50
               OpStore %specular %53
         %57 = OpLoad %v3float %diffuse
         %58 = OpLoad %v3float %specular
         %59 = OpFAdd %v3float %57 %58
         %61 = OpCompositeExtract %float %59 0
         %62 = OpCompositeExtract %float %59 1
         %63 = OpCompositeExtract %float %59 2
         %64 = OpCompositeConstruct %v4float %61 %62 %63 %float_1
               OpStore %outFragColor %64
               OpBranch %14
         %65 = OpLabel
               OpStore %outFragColor %67
               OpBranch %14
         %14 = OpLabel
               OpReturn
               OpFunctionEnd
