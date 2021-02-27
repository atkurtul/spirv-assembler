; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 71
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inEyePos %inLightVec %inNormal %outFragColor %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %Eye "Eye"
               OpName %inEyePos "inEyePos"
               OpName %Reflected "Reflected"
               OpName %inLightVec "inLightVec"
               OpName %inNormal "inNormal"
               OpName %IAmbient "IAmbient"
               OpName %IDiffuse "IDiffuse"
               OpName %specular "specular"
               OpName %ISpecular "ISpecular"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpDecorate %inEyePos Location 2
               OpDecorate %inLightVec Location 3
               OpDecorate %inNormal Location 0
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inEyePos = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%float_0_200000003 = OpConstant %float 0.200000003
    %float_1 = OpConstant %float 1
         %28 = OpConstantComposite %v4float %float_0_200000003 %float_0_200000003 %float_0_200000003 %float_1
  %float_0_5 = OpConstant %float 0.5
         %31 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_0_5
    %float_0 = OpConstant %float 0
%_ptr_Function_float = OpTypePointer Function %float
 %float_0_25 = OpConstant %float 0.25
         %42 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_1
%float_0_800000012 = OpConstant %float 0.800000012
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
   %IAmbient = OpVariable %_ptr_Function_v4float Function
   %IDiffuse = OpVariable %_ptr_Function_v4float Function
   %specular = OpVariable %_ptr_Function_float Function
  %ISpecular = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inEyePos
         %13 = OpFNegate %v3float %12
         %14 = OpExtInst %v3float %1 Normalize %13
               OpStore %Eye %14
         %17 = OpLoad %v3float %inLightVec
         %18 = OpFNegate %v3float %17
         %20 = OpLoad %v3float %inNormal
         %21 = OpExtInst %v3float %1 Reflect %18 %20
         %22 = OpExtInst %v3float %1 Normalize %21
               OpStore %Reflected %22
               OpStore %IAmbient %28
         %32 = OpLoad %v3float %inNormal
         %33 = OpLoad %v3float %inLightVec
         %34 = OpDot %float %32 %33
         %36 = OpExtInst %float %1 FMax %34 %float_0
         %37 = OpVectorTimesScalar %v4float %31 %36
               OpStore %IDiffuse %37
               OpStore %specular %float_0_25
         %43 = OpLoad %v3float %Reflected
         %44 = OpLoad %v3float %Eye
         %45 = OpDot %float %43 %44
         %46 = OpExtInst %float %1 FMax %45 %float_0
         %48 = OpExtInst %float %1 Pow %46 %float_0_800000012
         %49 = OpVectorTimesScalar %v4float %42 %48
         %50 = OpLoad %float %specular
         %51 = OpVectorTimesScalar %v4float %49 %50
               OpStore %ISpecular %51
         %54 = OpLoad %v4float %IAmbient
         %55 = OpLoad %v4float %IDiffuse
         %56 = OpFAdd %v4float %54 %55
         %58 = OpLoad %v3float %inColor
         %59 = OpCompositeExtract %float %58 0
         %60 = OpCompositeExtract %float %58 1
         %61 = OpCompositeExtract %float %58 2
         %62 = OpCompositeConstruct %v4float %59 %60 %61 %float_1
         %63 = OpFMul %v4float %56 %62
         %64 = OpLoad %v4float %ISpecular
         %65 = OpFAdd %v4float %63 %64
         %66 = OpCompositeExtract %float %65 0
         %67 = OpCompositeExtract %float %65 1
         %68 = OpCompositeExtract %float %65 2
         %69 = OpCompositeExtract %float %65 3
         %70 = OpCompositeConstruct %v4float %66 %67 %68 %69
               OpStore %outFragColor %70
               OpReturn
               OpFunctionEnd
