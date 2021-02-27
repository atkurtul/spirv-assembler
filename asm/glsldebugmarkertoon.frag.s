; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 123
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inColor %inNormal %inLightVec %inViewVec %outFragColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %inColor "inColor"
               OpName %ambient "ambient"
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
               OpName %intensity "intensity"
               OpName %shade "shade"
               OpName %samplerColorMap "samplerColorMap"
               OpName %inUV "inUV"
               OpDecorate %inColor Location 1
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerColorMap DescriptorSet 0
               OpDecorate %samplerColorMap Binding 1
               OpDecorate %inUV Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
%float_0_212599993 = OpConstant %float 0.212599993
%float_0_715200007 = OpConstant %float 0.715200007
%float_0_0722000003 = OpConstant %float 0.0722000003
         %16 = OpConstantComposite %v3float %float_0_212599993 %float_0_715200007 %float_0_0722000003
%float_0_649999976 = OpConstant %float 0.649999976
    %float_1 = OpConstant %float 1
         %30 = OpConstantComposite %v3float %float_1 %float_1 %float_1
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
   %float_16 = OpConstant %float 16
 %float_0_75 = OpConstant %float 0.75
         %65 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
 %float_1_75 = OpConstant %float 1.75
%_ptr_Function_float = OpTypePointer Function %float
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
%float_0_349999994 = OpConstant %float 0.349999994
%float_0_600000024 = OpConstant %float 0.600000024
 %float_0_25 = OpConstant %float 0.25
%float_0_100000001 = OpConstant %float 0.100000001
    %float_3 = OpConstant %float 3
        %116 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %117 = OpTypeSampledImage %116
%_ptr_UniformConstant_117 = OpTypePointer UniformConstant %117
%samplerColorMap = OpVariable %_ptr_UniformConstant_117 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
  %intensity = OpVariable %_ptr_Function_float Function
      %shade = OpVariable %_ptr_Function_float Function
         %12 = OpLoad %v3float %inColor
         %17 = OpLoad %v3float %inColor
         %18 = OpDot %float %16 %17
         %19 = OpCompositeConstruct %v3float %18 %18 %18
         %21 = OpCompositeConstruct %v3float %float_0_649999976 %float_0_649999976 %float_0_649999976
         %22 = OpExtInst %v3float %1 FMix %12 %19 %21
         %23 = OpCompositeExtract %float %22 0
         %24 = OpCompositeExtract %float %22 1
         %25 = OpCompositeExtract %float %22 2
         %26 = OpCompositeConstruct %v3float %23 %24 %25
               OpStore %color %26
         %28 = OpLoad %v3float %color
         %31 = OpFMul %v3float %28 %30
               OpStore %ambient %31
         %34 = OpLoad %v3float %inNormal
         %35 = OpExtInst %v3float %1 Normalize %34
               OpStore %N %35
         %38 = OpLoad %v3float %inLightVec
         %39 = OpExtInst %v3float %1 Normalize %38
               OpStore %L %39
         %42 = OpLoad %v3float %inViewVec
         %43 = OpExtInst %v3float %1 Normalize %42
               OpStore %V %43
         %45 = OpLoad %v3float %L
         %46 = OpFNegate %v3float %45
         %47 = OpLoad %v3float %N
         %48 = OpExtInst %v3float %1 Reflect %46 %47
               OpStore %R %48
         %50 = OpLoad %v3float %N
         %51 = OpLoad %v3float %L
         %52 = OpDot %float %50 %51
         %54 = OpExtInst %float %1 FMax %52 %float_0
         %55 = OpLoad %v3float %color
         %56 = OpVectorTimesScalar %v3float %55 %54
               OpStore %diffuse %56
         %58 = OpLoad %v3float %R
         %59 = OpLoad %v3float %V
         %60 = OpDot %float %58 %59
         %61 = OpExtInst %float %1 FMax %60 %float_0
         %63 = OpExtInst %float %1 Pow %61 %float_16
         %66 = OpVectorTimesScalar %v3float %65 %63
               OpStore %specular %66
         %70 = OpLoad %v3float %ambient
         %71 = OpLoad %v3float %diffuse
         %73 = OpVectorTimesScalar %v3float %71 %float_1_75
         %74 = OpFAdd %v3float %70 %73
         %75 = OpLoad %v3float %specular
         %76 = OpFAdd %v3float %74 %75
         %77 = OpCompositeExtract %float %76 0
         %78 = OpCompositeExtract %float %76 1
         %79 = OpCompositeExtract %float %76 2
         %80 = OpCompositeConstruct %v4float %77 %78 %79 %float_1
               OpStore %outFragColor %80
         %83 = OpLoad %v3float %N
         %84 = OpLoad %v3float %L
         %85 = OpDot %float %83 %84
               OpStore %intensity %85
               OpStore %shade %float_1
         %87 = OpLoad %float %intensity
         %90 = OpFOrdLessThan %bool %87 %float_0_5
         %91 = OpLoad %float %shade
         %92 = OpSelect %float %90 %float_0_75 %91
               OpStore %shade %92
         %93 = OpLoad %float %intensity
         %95 = OpFOrdLessThan %bool %93 %float_0_349999994
         %97 = OpLoad %float %shade
         %98 = OpSelect %float %95 %float_0_600000024 %97
               OpStore %shade %98
         %99 = OpLoad %float %intensity
        %101 = OpFOrdLessThan %bool %99 %float_0_25
        %102 = OpLoad %float %shade
        %103 = OpSelect %float %101 %float_0_5 %102
               OpStore %shade %103
        %104 = OpLoad %float %intensity
        %106 = OpFOrdLessThan %bool %104 %float_0_100000001
        %107 = OpLoad %float %shade
        %108 = OpSelect %float %106 %float_0_25 %107
               OpStore %shade %108
        %109 = OpLoad %v3float %inColor
        %111 = OpVectorTimesScalar %v3float %109 %float_3
        %112 = OpLoad %float %shade
        %113 = OpVectorTimesScalar %v3float %111 %112
        %114 = OpLoad %v4float %outFragColor
        %115 = OpVectorShuffle %v4float %114 %113 4 5 6 3
               OpStore %outFragColor %115
               OpReturn
               OpFunctionEnd
