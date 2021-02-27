; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 96
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inEyePos %inLightVec %outFragColor %inColor %inWorldPos %inLightPos
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %Eye "Eye"
               OpName %inEyePos "inEyePos"
               OpName %Reflected "Reflected"
               OpName %inLightVec "inLightVec"
               OpName %IAmbient "IAmbient"
               OpName %IDiffuse "IDiffuse"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpName %lightVec "lightVec"
               OpName %inWorldPos "inWorldPos"
               OpName %inLightPos "inLightPos"
               OpName %sampledDist "sampledDist"
               OpName %shadowCubeMap "shadowCubeMap"
               OpName %dist "dist"
               OpName %shadow "shadow"
               OpDecorate %inNormal Location 0
               OpDecorate %inEyePos Location 2
               OpDecorate %inLightVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 1
               OpDecorate %inWorldPos Location 4
               OpDecorate %inLightPos Location 5
               OpDecorate %shadowCubeMap DescriptorSet 0
               OpDecorate %shadowCubeMap Binding 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%float_0_577350259 = OpConstant %float 0.577350259
         %16 = OpConstantComposite %v3float %float_0_577350259 %float_0_577350259 %float_0_577350259
   %inEyePos = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%float_0_0500000007 = OpConstant %float 0.0500000007
    %float_1 = OpConstant %float 1
         %34 = OpConstantComposite %v4float %float_0_0500000007 %float_0_0500000007 %float_0_0500000007 %float_1
         %36 = OpConstantComposite %v4float %float_1 %float_1 %float_1 %float_1
    %float_0 = OpConstant %float 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
 %inLightPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_float = OpTypePointer Function %float
         %68 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %69 = OpTypeSampledImage %68
%_ptr_UniformConstant_69 = OpTypePointer UniformConstant %69
%shadowCubeMap = OpVariable %_ptr_UniformConstant_69 UniformConstant
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%float_0_150000006 = OpConstant %float 0.150000006
       %bool = OpTypeBool
  %float_0_5 = OpConstant %float 0.5
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
   %IAmbient = OpVariable %_ptr_Function_v4float Function
   %IDiffuse = OpVariable %_ptr_Function_v4float Function
   %lightVec = OpVariable %_ptr_Function_v3float Function
%sampledDist = OpVariable %_ptr_Function_float Function
       %dist = OpVariable %_ptr_Function_float Function
     %shadow = OpVariable %_ptr_Function_float Function
         %12 = OpLoad %v3float %inNormal
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
               OpStore %L %16
         %19 = OpLoad %v3float %inEyePos
         %20 = OpFNegate %v3float %19
         %21 = OpExtInst %v3float %1 Normalize %20
               OpStore %Eye %21
         %24 = OpLoad %v3float %inLightVec
         %25 = OpFNegate %v3float %24
         %26 = OpLoad %v3float %inNormal
         %27 = OpExtInst %v3float %1 Reflect %25 %26
         %28 = OpExtInst %v3float %1 Normalize %27
               OpStore %Reflected %28
               OpStore %IAmbient %34
         %37 = OpLoad %v3float %inNormal
         %38 = OpLoad %v3float %inLightVec
         %39 = OpDot %float %37 %38
         %41 = OpExtInst %float %1 FMax %39 %float_0
         %42 = OpVectorTimesScalar %v4float %36 %41
               OpStore %IDiffuse %42
         %45 = OpLoad %v4float %IAmbient
         %46 = OpLoad %v4float %IDiffuse
         %48 = OpLoad %v3float %inColor
         %49 = OpCompositeExtract %float %48 0
         %50 = OpCompositeExtract %float %48 1
         %51 = OpCompositeExtract %float %48 2
         %52 = OpCompositeConstruct %v4float %49 %50 %51 %float_1
         %53 = OpFMul %v4float %46 %52
         %54 = OpFAdd %v4float %45 %53
         %55 = OpCompositeExtract %float %54 0
         %56 = OpCompositeExtract %float %54 1
         %57 = OpCompositeExtract %float %54 2
         %58 = OpCompositeExtract %float %54 3
         %59 = OpCompositeConstruct %v4float %55 %56 %57 %58
               OpStore %outFragColor %59
         %62 = OpLoad %v3float %inWorldPos
         %64 = OpLoad %v3float %inLightPos
         %65 = OpFSub %v3float %62 %64
               OpStore %lightVec %65
         %72 = OpLoad %69 %shadowCubeMap
         %73 = OpLoad %v3float %lightVec
         %74 = OpImageSampleImplicitLod %v4float %72 %73
         %77 = OpCompositeExtract %float %74 0
               OpStore %sampledDist %77
         %79 = OpLoad %v3float %lightVec
         %80 = OpExtInst %float %1 Length %79
               OpStore %dist %80
         %82 = OpLoad %float %dist
         %83 = OpLoad %float %sampledDist
         %85 = OpFAdd %float %83 %float_0_150000006
         %87 = OpFOrdLessThanEqual %bool %82 %85
         %89 = OpSelect %float %87 %float_1 %float_0_5
               OpStore %shadow %89
         %90 = OpLoad %float %shadow
         %91 = OpLoad %v4float %outFragColor
         %92 = OpVectorShuffle %v3float %91 %91 0 1 2
         %93 = OpVectorTimesScalar %v3float %92 %90
         %94 = OpLoad %v4float %outFragColor
         %95 = OpVectorShuffle %v4float %94 %93 4 5 6 3
               OpStore %outFragColor %95
               OpReturn
               OpFunctionEnd
