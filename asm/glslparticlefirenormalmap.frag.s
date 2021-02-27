; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 111
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inLightVecB %inLightVec %inViewVec %outFragColor %inLightDir
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %specularColor "specularColor"
               OpName %invRadius "invRadius"
               OpName %ambient "ambient"
               OpName %rgb "rgb"
               OpName %sColorMap "sColorMap"
               OpName %inUV "inUV"
               OpName %normal "normal"
               OpName %sNormalHeightMap "sNormalHeightMap"
               OpName %distSqr "distSqr"
               OpName %inLightVecB "inLightVecB"
               OpName %lVec "lVec"
               OpName %atten "atten"
               OpName %diffuse "diffuse"
               OpName %light "light"
               OpName %inLightVec "inLightVec"
               OpName %view "view"
               OpName %inViewVec "inViewVec"
               OpName %reflectDir "reflectDir"
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpName %inLightDir "inLightDir"
               OpDecorate %sColorMap DescriptorSet 0
               OpDecorate %sColorMap Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %sNormalHeightMap DescriptorSet 0
               OpDecorate %sNormalHeightMap Binding 2
               OpDecorate %inLightVecB Location 2
               OpDecorate %inLightVec Location 1
               OpDecorate %inViewVec Location 4
               OpDecorate %outFragColor Location 0
               OpDecorate %inLightDir Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%float_0_850000024 = OpConstant %float 0.850000024
  %float_0_5 = OpConstant %float 0.5
    %float_0 = OpConstant %float 0
         %13 = OpConstantComposite %v3float %float_0_850000024 %float_0_5 %float_0
%_ptr_Function_float = OpTypePointer Function %float
%float_0_0222222228 = OpConstant %float 0.0222222228
 %float_0_25 = OpConstant %float 0.25
         %20 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %21 = OpTypeSampledImage %20
%_ptr_UniformConstant_21 = OpTypePointer UniformConstant %21
  %sColorMap = OpVariable %_ptr_UniformConstant_21 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%sNormalHeightMap = OpVariable %_ptr_UniformConstant_21 UniformConstant
    %float_2 = OpConstant %float 2
%_ptr_Input_v3float = OpTypePointer Input %v3float
%inLightVecB = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_4 = OpConstant %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
 %inLightDir = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
%specularColor = OpVariable %_ptr_Function_v3float Function
  %invRadius = OpVariable %_ptr_Function_float Function
    %ambient = OpVariable %_ptr_Function_float Function
        %rgb = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
    %distSqr = OpVariable %_ptr_Function_float Function
       %lVec = OpVariable %_ptr_Function_v3float Function
      %atten = OpVariable %_ptr_Function_float Function
    %diffuse = OpVariable %_ptr_Function_float Function
      %light = OpVariable %_ptr_Function_v3float Function
       %view = OpVariable %_ptr_Function_v3float Function
 %reflectDir = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_float Function
               OpStore %specularColor %13
               OpStore %invRadius %float_0_0222222228
               OpStore %ambient %float_0_25
         %24 = OpLoad %21 %sColorMap
         %28 = OpLoad %v2float %inUV
         %30 = OpImageSampleImplicitLod %v4float %24 %28
         %31 = OpVectorShuffle %v3float %30 %30 0 1 2
               OpStore %rgb %31
         %34 = OpLoad %21 %sNormalHeightMap
         %35 = OpLoad %v2float %inUV
         %36 = OpImageSampleImplicitLod %v4float %34 %35
         %37 = OpVectorShuffle %v3float %36 %36 0 1 2
         %38 = OpCompositeConstruct %v3float %float_0_5 %float_0_5 %float_0_5
         %39 = OpFSub %v3float %37 %38
         %41 = OpVectorTimesScalar %v3float %39 %float_2
         %42 = OpExtInst %v3float %1 Normalize %41
               OpStore %normal %42
         %46 = OpLoad %v3float %inLightVecB
         %47 = OpLoad %v3float %inLightVecB
         %48 = OpDot %float %46 %47
               OpStore %distSqr %48
         %50 = OpLoad %v3float %inLightVecB
         %51 = OpLoad %float %distSqr
         %52 = OpExtInst %float %1 InverseSqrt %51
         %53 = OpVectorTimesScalar %v3float %50 %52
               OpStore %lVec %53
         %56 = OpLoad %float %invRadius
         %57 = OpLoad %float %distSqr
         %58 = OpExtInst %float %1 Sqrt %57
         %59 = OpFMul %float %56 %58
         %60 = OpFSub %float %float_1 %59
         %61 = OpExtInst %float %1 FClamp %60 %float_0 %float_1
         %62 = OpLoad %float %ambient
         %63 = OpExtInst %float %1 FMax %61 %62
               OpStore %atten %63
         %65 = OpLoad %v3float %lVec
         %66 = OpLoad %v3float %normal
         %67 = OpDot %float %65 %66
         %68 = OpExtInst %float %1 FClamp %67 %float_0 %float_1
               OpStore %diffuse %68
         %71 = OpLoad %v3float %inLightVec
         %72 = OpFNegate %v3float %71
         %73 = OpExtInst %v3float %1 Normalize %72
               OpStore %light %73
         %76 = OpLoad %v3float %inViewVec
         %77 = OpExtInst %v3float %1 Normalize %76
               OpStore %view %77
         %79 = OpLoad %v3float %light
         %80 = OpFNegate %v3float %79
         %81 = OpLoad %v3float %normal
         %82 = OpExtInst %v3float %1 Reflect %80 %81
               OpStore %reflectDir %82
         %84 = OpLoad %v3float %view
         %85 = OpLoad %v3float %reflectDir
         %86 = OpDot %float %84 %85
         %87 = OpExtInst %float %1 FMax %86 %float_0
         %89 = OpExtInst %float %1 Pow %87 %float_4
               OpStore %specular %89
         %92 = OpLoad %v3float %rgb
         %93 = OpLoad %float %atten
         %94 = OpVectorTimesScalar %v3float %92 %93
         %95 = OpLoad %float %diffuse
         %96 = OpLoad %v3float %rgb
         %97 = OpVectorTimesScalar %v3float %96 %95
         %98 = OpLoad %float %specular
         %99 = OpFMul %float %float_0_5 %98
        %100 = OpLoad %v3float %specularColor
        %101 = OpVectorTimesScalar %v3float %100 %99
        %102 = OpFAdd %v3float %97 %101
        %103 = OpFAdd %v3float %94 %102
        %104 = OpLoad %float %atten
        %105 = OpVectorTimesScalar %v3float %103 %104
        %106 = OpCompositeExtract %float %105 0
        %107 = OpCompositeExtract %float %105 1
        %108 = OpCompositeExtract %float %105 2
        %109 = OpCompositeConstruct %v4float %106 %107 %108 %float_1
               OpStore %outFragColor %109
               OpReturn
               OpFunctionEnd
