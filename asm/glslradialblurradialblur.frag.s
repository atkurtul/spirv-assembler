; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 101
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %texDim "texDim"
               OpName %samplerColor "samplerColor"
               OpName %radialSize "radialSize"
               OpName %UV "UV"
               OpName %inUV "inUV"
               OpName %color "color"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "radialBlurScale"
               OpMemberName %UBO 1 "radialBlurStrength"
               OpMemberName %UBO 2 "radialOrigin"
               OpName %ubo "ubo"
               OpName %i "i"
               OpName %scale "scale"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpMemberDecorate %UBO 2 Offset 8
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
      %float = OpTypeFloat 32
         %11 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %12 = OpTypeSampledImage %11
%_ptr_UniformConstant_12 = OpTypePointer UniformConstant %12
%samplerColor = OpVariable %_ptr_UniformConstant_12 UniformConstant
      %int_0 = OpConstant %int 0
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %float_1 = OpConstant %float 1
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Function_int = OpTypePointer Function %int
     %uint_1 = OpConstant %uint 1
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_0 = OpConstant %float 0
         %44 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
  %float_0_5 = OpConstant %float 0.5
        %UBO = OpTypeStruct %float %float %v2float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v2float = OpTypePointer Uniform %v2float
     %int_32 = OpConstant %int 32
       %bool = OpTypeBool
%_ptr_Function_float = OpTypePointer Function %float
%_ptr_Uniform_float = OpTypePointer Uniform %float
   %float_31 = OpConstant %float 31
      %int_1 = OpConstant %int 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
   %float_32 = OpConstant %float 32
       %main = OpFunction %void None %3
          %5 = OpLabel
     %texDim = OpVariable %_ptr_Function_v2int Function
 %radialSize = OpVariable %_ptr_Function_v2float Function
         %UV = OpVariable %_ptr_Function_v2float Function
      %color = OpVariable %_ptr_Function_v4float Function
          %i = OpVariable %_ptr_Function_int Function
      %scale = OpVariable %_ptr_Function_float Function
         %15 = OpLoad %12 %samplerColor
         %17 = OpImage %11 %15
         %18 = OpImageQuerySizeLod %v2int %17 %int_0
               OpStore %texDim %18
         %26 = OpAccessChain %_ptr_Function_int %texDim %uint_0
         %27 = OpLoad %int %26
         %28 = OpConvertSToF %float %27
         %29 = OpFDiv %float %float_1 %28
         %31 = OpAccessChain %_ptr_Function_int %texDim %uint_1
         %32 = OpLoad %int %31
         %33 = OpConvertSToF %float %32
         %34 = OpFDiv %float %float_1 %33
         %35 = OpCompositeConstruct %v2float %29 %34
               OpStore %radialSize %35
         %39 = OpLoad %v2float %inUV
               OpStore %UV %39
               OpStore %color %44
         %45 = OpLoad %v2float %radialSize
         %47 = OpVectorTimesScalar %v2float %45 %float_0_5
         %53 = OpAccessChain %_ptr_Uniform_v2float %ubo %int_2
         %54 = OpLoad %v2float %53
         %55 = OpFSub %v2float %47 %54
         %56 = OpLoad %v2float %UV
         %57 = OpFAdd %v2float %56 %55
               OpStore %UV %57
               OpStore %i %int_0
               OpBranch %59
         %59 = OpLabel
               OpLoopMerge %61 %62 None
               OpBranch %63
         %63 = OpLabel
         %64 = OpLoad %int %i
         %67 = OpSLessThan %bool %64 %int_32
               OpBranchConditional %67 %60 %61
         %60 = OpLabel
         %71 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %72 = OpLoad %float %71
         %73 = OpLoad %int %i
         %74 = OpConvertSToF %float %73
         %76 = OpFDiv %float %74 %float_31
         %77 = OpFMul %float %72 %76
         %78 = OpFSub %float %float_1 %77
               OpStore %scale %78
         %79 = OpLoad %12 %samplerColor
         %80 = OpLoad %v2float %UV
         %81 = OpLoad %float %scale
         %82 = OpVectorTimesScalar %v2float %80 %81
         %83 = OpAccessChain %_ptr_Uniform_v2float %ubo %int_2
         %84 = OpLoad %v2float %83
         %85 = OpFAdd %v2float %82 %84
         %86 = OpImageSampleImplicitLod %v4float %79 %85
         %87 = OpLoad %v4float %color
         %88 = OpFAdd %v4float %87 %86
               OpStore %color %88
               OpBranch %62
         %62 = OpLabel
         %89 = OpLoad %int %i
         %91 = OpIAdd %int %89 %int_1
               OpStore %i %91
               OpBranch %59
         %61 = OpLabel
         %94 = OpLoad %v4float %color
         %96 = OpCompositeConstruct %v4float %float_32 %float_32 %float_32 %float_32
         %97 = OpFDiv %v4float %94 %96
         %98 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
         %99 = OpLoad %float %98
        %100 = OpVectorTimesScalar %v4float %97 %99
               OpStore %outFragColor %100
               OpReturn
               OpFunctionEnd
