; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 113
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUVW %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %Uncharted2Tonemap_vf3_ "Uncharted2Tonemap(vf3;"
               OpName %color "color"
               OpName %A "A"
               OpName %B "B"
               OpName %C "C"
               OpName %D "D"
               OpName %E "E"
               OpName %F "F"
               OpName %W "W"
               OpName %color_0 "color"
               OpName %samplerEnv "samplerEnv"
               OpName %inUVW "inUVW"
               OpName %UBOParams "UBOParams"
               OpMemberName %UBOParams 0 "lights"
               OpMemberName %UBOParams 1 "exposure"
               OpMemberName %UBOParams 2 "gamma"
               OpName %uboParams "uboParams"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %outColor "outColor"
               OpDecorate %samplerEnv DescriptorSet 0
               OpDecorate %samplerEnv Binding 2
               OpDecorate %inUVW Location 0
               OpDecorate %_arr_v4float_uint_4 ArrayStride 16
               OpMemberDecorate %UBOParams 0 Offset 0
               OpMemberDecorate %UBOParams 1 Offset 64
               OpMemberDecorate %UBOParams 2 Offset 68
               OpDecorate %UBOParams Block
               OpDecorate %uboParams DescriptorSet 0
               OpDecorate %uboParams Binding 1
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
          %9 = OpTypeFunction %v3float %_ptr_Function_v3float
%_ptr_Function_float = OpTypePointer Function %float
%float_0_150000006 = OpConstant %float 0.150000006
  %float_0_5 = OpConstant %float 0.5
%float_0_100000001 = OpConstant %float 0.100000001
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_0199999996 = OpConstant %float 0.0199999996
%float_0_300000012 = OpConstant %float 0.300000012
%float_11_1999998 = OpConstant %float 11.1999998
         %65 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %66 = OpTypeSampledImage %65
%_ptr_UniformConstant_66 = OpTypePointer UniformConstant %66
 %samplerEnv = OpVariable %_ptr_UniformConstant_66 UniformConstant
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inUVW = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_4 = OpConstant %uint 4
%_arr_v4float_uint_4 = OpTypeArray %v4float %uint_4
  %UBOParams = OpTypeStruct %_arr_v4float_uint_4 %float %float
%_ptr_Uniform_UBOParams = OpTypePointer Uniform %UBOParams
  %uboParams = OpVariable %_ptr_Uniform_UBOParams Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_1 = OpConstant %float 1
         %93 = OpConstantComposite %v3float %float_11_1999998 %float_11_1999998 %float_11_1999998
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
    %color_0 = OpVariable %_ptr_Function_v3float Function
      %param = OpVariable %_ptr_Function_v3float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
         %69 = OpLoad %66 %samplerEnv
         %72 = OpLoad %v3float %inUVW
         %74 = OpImageSampleImplicitLod %v4float %69 %72
         %75 = OpVectorShuffle %v3float %74 %74 0 1 2
               OpStore %color_0 %75
         %76 = OpLoad %v3float %color_0
         %86 = OpAccessChain %_ptr_Uniform_float %uboParams %int_1
         %87 = OpLoad %float %86
         %88 = OpVectorTimesScalar %v3float %76 %87
               OpStore %param %88
         %90 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param
               OpStore %color_0 %90
         %91 = OpLoad %v3float %color_0
               OpStore %param_0 %93
         %95 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param_0
         %96 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
         %97 = OpFDiv %v3float %96 %95
         %98 = OpFMul %v3float %91 %97
               OpStore %color_0 %98
         %99 = OpLoad %v3float %color_0
        %101 = OpAccessChain %_ptr_Uniform_float %uboParams %int_2
        %102 = OpLoad %float %101
        %103 = OpFDiv %float %float_1 %102
        %104 = OpCompositeConstruct %v3float %103 %103 %103
        %105 = OpExtInst %v3float %1 Pow %99 %104
               OpStore %color_0 %105
        %108 = OpLoad %v3float %color_0
        %109 = OpCompositeExtract %float %108 0
        %110 = OpCompositeExtract %float %108 1
        %111 = OpCompositeExtract %float %108 2
        %112 = OpCompositeConstruct %v4float %109 %110 %111 %float_1
               OpStore %outColor %112
               OpReturn
               OpFunctionEnd
%Uncharted2Tonemap_vf3_ = OpFunction %v3float None %9
      %color = OpFunctionParameter %_ptr_Function_v3float
         %12 = OpLabel
          %A = OpVariable %_ptr_Function_float Function
          %B = OpVariable %_ptr_Function_float Function
          %C = OpVariable %_ptr_Function_float Function
          %D = OpVariable %_ptr_Function_float Function
          %E = OpVariable %_ptr_Function_float Function
          %F = OpVariable %_ptr_Function_float Function
          %W = OpVariable %_ptr_Function_float Function
               OpStore %A %float_0_150000006
               OpStore %B %float_0_5
               OpStore %C %float_0_100000001
               OpStore %D %float_0_200000003
               OpStore %E %float_0_0199999996
               OpStore %F %float_0_300000012
               OpStore %W %float_11_1999998
         %28 = OpLoad %v3float %color
         %29 = OpLoad %float %A
         %30 = OpLoad %v3float %color
         %31 = OpVectorTimesScalar %v3float %30 %29
         %32 = OpLoad %float %C
         %33 = OpLoad %float %B
         %34 = OpFMul %float %32 %33
         %35 = OpCompositeConstruct %v3float %34 %34 %34
         %36 = OpFAdd %v3float %31 %35
         %37 = OpFMul %v3float %28 %36
         %38 = OpLoad %float %D
         %39 = OpLoad %float %E
         %40 = OpFMul %float %38 %39
         %41 = OpCompositeConstruct %v3float %40 %40 %40
         %42 = OpFAdd %v3float %37 %41
         %43 = OpLoad %v3float %color
         %44 = OpLoad %float %A
         %45 = OpLoad %v3float %color
         %46 = OpVectorTimesScalar %v3float %45 %44
         %47 = OpLoad %float %B
         %48 = OpCompositeConstruct %v3float %47 %47 %47
         %49 = OpFAdd %v3float %46 %48
         %50 = OpFMul %v3float %43 %49
         %51 = OpLoad %float %D
         %52 = OpLoad %float %F
         %53 = OpFMul %float %51 %52
         %54 = OpCompositeConstruct %v3float %53 %53 %53
         %55 = OpFAdd %v3float %50 %54
         %56 = OpFDiv %v3float %42 %55
         %57 = OpLoad %float %E
         %58 = OpLoad %float %F
         %59 = OpFDiv %float %57 %58
         %60 = OpCompositeConstruct %v3float %59 %59 %59
         %61 = OpFSub %v3float %56 %60
               OpReturnValue %61
               OpFunctionEnd
