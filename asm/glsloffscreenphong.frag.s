; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 78
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
%float_0_100000001 = OpConstant %float 0.100000001
    %float_1 = OpConstant %float 1
         %28 = OpConstantComposite %v4float %float_0_100000001 %float_0_100000001 %float_0_100000001 %float_1
    %float_0 = OpConstant %float 0
%_ptr_Function_float = OpTypePointer Function %float
 %float_0_75 = OpConstant %float 0.75
         %40 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
       %bool = OpTypeBool
  %float_0_5 = OpConstant %float 0.5
         %49 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_1
   %float_16 = OpConstant %float 16
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
         %30 = OpLoad %v3float %inNormal
         %31 = OpLoad %v3float %inLightVec
         %32 = OpDot %float %30 %31
         %34 = OpExtInst %float %1 FMax %32 %float_0
         %35 = OpCompositeConstruct %v4float %34 %34 %34 %34
               OpStore %IDiffuse %35
               OpStore %specular %float_0_75
               OpStore %ISpecular %40
         %41 = OpLoad %v3float %inEyePos
         %42 = OpLoad %v3float %inNormal
         %43 = OpDot %float %41 %42
         %45 = OpFOrdLessThan %bool %43 %float_0
               OpSelectionMerge %47 None
               OpBranchConditional %45 %46 %47
         %46 = OpLabel
         %50 = OpLoad %v3float %Reflected
         %51 = OpLoad %v3float %Eye
         %52 = OpDot %float %50 %51
         %53 = OpExtInst %float %1 FMax %52 %float_0
         %55 = OpExtInst %float %1 Pow %53 %float_16
         %56 = OpVectorTimesScalar %v4float %49 %55
         %57 = OpLoad %float %specular
         %58 = OpVectorTimesScalar %v4float %56 %57
               OpStore %ISpecular %58
               OpBranch %47
         %47 = OpLabel
         %61 = OpLoad %v4float %IAmbient
         %62 = OpLoad %v4float %IDiffuse
         %63 = OpFAdd %v4float %61 %62
         %65 = OpLoad %v3float %inColor
         %66 = OpCompositeExtract %float %65 0
         %67 = OpCompositeExtract %float %65 1
         %68 = OpCompositeExtract %float %65 2
         %69 = OpCompositeConstruct %v4float %66 %67 %68 %float_1
         %70 = OpFMul %v4float %63 %69
         %71 = OpLoad %v4float %ISpecular
         %72 = OpFAdd %v4float %70 %71
         %73 = OpCompositeExtract %float %72 0
         %74 = OpCompositeExtract %float %72 1
         %75 = OpCompositeExtract %float %72 2
         %76 = OpCompositeExtract %float %72 3
         %77 = OpCompositeConstruct %v4float %73 %74 %75 %76
               OpStore %outFragColor %77
               OpReturn
               OpFunctionEnd
