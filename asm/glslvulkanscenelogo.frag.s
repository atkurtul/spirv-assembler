; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 64
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inEyePos %inLightVec %inNormal %inColor %outFragColor %inUV
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
               OpName %diff "diff"
               OpName %inColor "inColor"
               OpName %shininess "shininess"
               OpName %spec "spec"
               OpName %outFragColor "outFragColor"
               OpName %inUV "inUV"
               OpDecorate %inEyePos Location 3
               OpDecorate %inLightVec Location 4
               OpDecorate %inNormal Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outFragColor Location 0
               OpDecorate %inUV Location 0
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
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
%_ptr_Function_float = OpTypePointer Function %float
         %42 = OpConstantComposite %v4float %float_1 %float_1 %float_1 %float_1
  %float_2_5 = OpConstant %float 2.5
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Output_float = OpTypePointer Output %float
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
       %diff = OpVariable %_ptr_Function_v4float Function
  %shininess = OpVariable %_ptr_Function_float Function
       %spec = OpVariable %_ptr_Function_v4float Function
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
         %27 = OpLoad %v3float %inColor
         %29 = OpCompositeExtract %float %27 0
         %30 = OpCompositeExtract %float %27 1
         %31 = OpCompositeExtract %float %27 2
         %32 = OpCompositeConstruct %v4float %29 %30 %31 %float_1
         %33 = OpLoad %v3float %inNormal
         %34 = OpLoad %v3float %inLightVec
         %35 = OpDot %float %33 %34
         %37 = OpExtInst %float %1 FMax %35 %float_0
         %38 = OpVectorTimesScalar %v4float %32 %37
               OpStore %diff %38
               OpStore %shininess %float_0
         %43 = OpLoad %v3float %Reflected
         %44 = OpLoad %v3float %Eye
         %45 = OpDot %float %43 %44
         %46 = OpExtInst %float %1 FMax %45 %float_0
         %48 = OpExtInst %float %1 Pow %46 %float_2_5
         %49 = OpVectorTimesScalar %v4float %42 %48
         %50 = OpLoad %float %shininess
         %51 = OpVectorTimesScalar %v4float %49 %50
               OpStore %spec %51
         %54 = OpLoad %v4float %diff
         %55 = OpLoad %v4float %spec
         %56 = OpFAdd %v4float %54 %55
               OpStore %outFragColor %56
         %60 = OpAccessChain %_ptr_Output_float %outFragColor %uint_3
               OpStore %60 %float_1
               OpReturn
               OpFunctionEnd
