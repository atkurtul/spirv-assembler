; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 90
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inSamplerIndex %inUV %inLodBias %inNormal %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %textureColor "textureColor"
               OpName %samplers "samplers"
               OpName %inSamplerIndex "inSamplerIndex"
               OpName %inUV "inUV"
               OpName %inLodBias "inLodBias"
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
               OpDecorate %textureColor DescriptorSet 0
               OpDecorate %textureColor Binding 1
               OpDecorate %samplers DescriptorSet 0
               OpDecorate %samplers Binding 2
               OpDecorate %inSamplerIndex Flat
               OpDecorate %inSamplerIndex Location 2
               OpDecorate %inUV Location 0
               OpDecorate %inLodBias Location 1
               OpDecorate %inNormal Location 3
               OpDecorate %inLightVec Location 5
               OpDecorate %inViewVec Location 4
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
%textureColor = OpVariable %_ptr_UniformConstant_10 UniformConstant
         %14 = OpTypeSampler
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_arr_14_uint_3 = OpTypeArray %14 %uint_3
%_ptr_UniformConstant__arr_14_uint_3 = OpTypePointer UniformConstant %_arr_14_uint_3
   %samplers = OpVariable %_ptr_UniformConstant__arr_14_uint_3 UniformConstant
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
%inSamplerIndex = OpVariable %_ptr_Input_int Input
%_ptr_UniformConstant_14 = OpTypePointer UniformConstant %14
         %27 = OpTypeSampledImage %10
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Input_float = OpTypePointer Input %float
  %inLodBias = OpVariable %_ptr_Input_float Input
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
%float_0_649999976 = OpConstant %float 0.649999976
    %float_1 = OpConstant %float 1
         %63 = OpConstantComposite %v3float %float_1 %float_1 %float_1
%_ptr_Function_float = OpTypePointer Function %float
    %float_0 = OpConstant %float 0
   %float_16 = OpConstant %float 16
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %textureColor
         %23 = OpLoad %int %inSamplerIndex
         %25 = OpAccessChain %_ptr_UniformConstant_14 %samplers %23
         %26 = OpLoad %14 %25
         %28 = OpSampledImage %27 %13 %26
         %32 = OpLoad %v2float %inUV
         %35 = OpLoad %float %inLodBias
         %36 = OpImageSampleImplicitLod %v4float %28 %32 Bias %35
               OpStore %color %36
         %42 = OpLoad %v3float %inNormal
         %43 = OpExtInst %v3float %1 Normalize %42
               OpStore %N %43
         %46 = OpLoad %v3float %inLightVec
         %47 = OpExtInst %v3float %1 Normalize %46
               OpStore %L %47
         %50 = OpLoad %v3float %inViewVec
         %51 = OpExtInst %v3float %1 Normalize %50
               OpStore %V %51
         %53 = OpLoad %v3float %L
         %54 = OpLoad %v3float %N
         %55 = OpExtInst %v3float %1 Reflect %53 %54
               OpStore %R %55
         %57 = OpLoad %v3float %N
         %58 = OpLoad %v3float %L
         %59 = OpDot %float %57 %58
         %61 = OpExtInst %float %1 FMax %59 %float_0_649999976
         %64 = OpVectorTimesScalar %v3float %63 %61
               OpStore %diffuse %64
         %67 = OpLoad %v3float %R
         %68 = OpLoad %v3float %V
         %69 = OpDot %float %67 %68
         %71 = OpExtInst %float %1 FMax %69 %float_0
         %73 = OpExtInst %float %1 Pow %71 %float_16
         %74 = OpAccessChain %_ptr_Function_float %color %uint_3
         %75 = OpLoad %float %74
         %76 = OpFMul %float %73 %75
               OpStore %specular %76
         %79 = OpLoad %v3float %diffuse
         %80 = OpLoad %v4float %color
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpFMul %v3float %79 %81
         %83 = OpLoad %float %specular
         %84 = OpCompositeConstruct %v3float %83 %83 %83
         %85 = OpFAdd %v3float %82 %84
         %86 = OpCompositeExtract %float %85 0
         %87 = OpCompositeExtract %float %85 1
         %88 = OpCompositeExtract %float %85 2
         %89 = OpCompositeConstruct %v4float %86 %87 %88 %float_1
               OpStore %outFragColor %89
               OpReturn
               OpFunctionEnd
