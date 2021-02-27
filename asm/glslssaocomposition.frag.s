; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 127
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %fragPos "fragPos"
               OpName %samplerposition "samplerposition"
               OpName %inUV "inUV"
               OpName %normal "normal"
               OpName %samplerNormal "samplerNormal"
               OpName %albedo "albedo"
               OpName %samplerAlbedo "samplerAlbedo"
               OpName %ssao "ssao"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "_dummy"
               OpMemberName %UBO 1 "ssao"
               OpMemberName %UBO 2 "ssaoOnly"
               OpMemberName %UBO 3 "ssaoBlur"
               OpName %uboParams "uboParams"
               OpName %samplerSSAOBlur "samplerSSAOBlur"
               OpName %samplerSSAO "samplerSSAO"
               OpName %lightPos "lightPos"
               OpName %L "L"
               OpName %NdotL "NdotL"
               OpName %outFragColor "outFragColor"
               OpName %baseColor "baseColor"
               OpDecorate %samplerposition DescriptorSet 0
               OpDecorate %samplerposition Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 1
               OpDecorate %samplerAlbedo DescriptorSet 0
               OpDecorate %samplerAlbedo Binding 2
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 2 Offset 68
               OpMemberDecorate %UBO 3 Offset 72
               OpDecorate %UBO Block
               OpDecorate %uboParams DescriptorSet 0
               OpDecorate %uboParams Binding 5
               OpDecorate %samplerSSAOBlur DescriptorSet 0
               OpDecorate %samplerSSAOBlur Binding 4
               OpDecorate %samplerSSAO DescriptorSet 0
               OpDecorate %samplerSSAO Binding 3
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerposition = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%samplerNormal = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
%_ptr_Function_v4float = OpTypePointer Function %v4float
%samplerAlbedo = OpVariable %_ptr_UniformConstant_11 UniformConstant
%_ptr_Function_float = OpTypePointer Function %float
%mat4v4float = OpTypeMatrix %v4float 4
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %mat4v4float %int %int %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
  %uboParams = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_1 = OpConstant %int 1
       %bool = OpTypeBool
%samplerSSAOBlur = OpVariable %_ptr_UniformConstant_11 UniformConstant
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%samplerSSAO = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %float_0 = OpConstant %float 0
         %73 = OpConstantComposite %v3float %float_0 %float_0 %float_0
  %float_0_5 = OpConstant %float 0.5
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
    %fragPos = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
     %albedo = OpVariable %_ptr_Function_v4float Function
       %ssao = OpVariable %_ptr_Function_float Function
         %54 = OpVariable %_ptr_Function_float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
      %NdotL = OpVariable %_ptr_Function_float Function
  %baseColor = OpVariable %_ptr_Function_v3float Function
         %14 = OpLoad %11 %samplerposition
         %18 = OpLoad %v2float %inUV
         %20 = OpImageSampleImplicitLod %v4float %14 %18
         %21 = OpVectorShuffle %v3float %20 %20 0 1 2
               OpStore %fragPos %21
         %24 = OpLoad %11 %samplerNormal
         %25 = OpLoad %v2float %inUV
         %26 = OpImageSampleImplicitLod %v4float %24 %25
         %27 = OpVectorShuffle %v3float %26 %26 0 1 2
         %29 = OpVectorTimesScalar %v3float %27 %float_2
         %31 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
         %32 = OpFSub %v3float %29 %31
         %33 = OpExtInst %v3float %1 Normalize %32
               OpStore %normal %33
         %37 = OpLoad %11 %samplerAlbedo
         %38 = OpLoad %v2float %inUV
         %39 = OpImageSampleImplicitLod %v4float %37 %38
               OpStore %albedo %39
         %49 = OpAccessChain %_ptr_Uniform_int %uboParams %int_3
         %50 = OpLoad %int %49
         %53 = OpIEqual %bool %50 %int_1
               OpSelectionMerge %56 None
               OpBranchConditional %53 %55 %64
         %55 = OpLabel
         %58 = OpLoad %11 %samplerSSAOBlur
         %59 = OpLoad %v2float %inUV
         %60 = OpImageSampleImplicitLod %v4float %58 %59
         %63 = OpCompositeExtract %float %60 0
               OpStore %54 %63
               OpBranch %56
         %64 = OpLabel
         %66 = OpLoad %11 %samplerSSAO
         %67 = OpLoad %v2float %inUV
         %68 = OpImageSampleImplicitLod %v4float %66 %67
         %69 = OpCompositeExtract %float %68 0
               OpStore %54 %69
               OpBranch %56
         %56 = OpLabel
         %70 = OpLoad %float %54
               OpStore %ssao %70
               OpStore %lightPos %73
         %75 = OpLoad %v3float %lightPos
         %76 = OpLoad %v3float %fragPos
         %77 = OpFSub %v3float %75 %76
         %78 = OpExtInst %v3float %1 Normalize %77
               OpStore %L %78
         %81 = OpLoad %v3float %normal
         %82 = OpLoad %v3float %L
         %83 = OpDot %float %81 %82
         %84 = OpExtInst %float %1 FMax %float_0_5 %83
               OpStore %NdotL %84
         %86 = OpAccessChain %_ptr_Uniform_int %uboParams %int_2
         %87 = OpLoad %int %86
         %88 = OpIEqual %bool %87 %int_1
               OpSelectionMerge %90 None
               OpBranchConditional %88 %89 %97
         %89 = OpLabel
         %93 = OpLoad %float %ssao
         %94 = OpCompositeConstruct %v3float %93 %93 %93
         %95 = OpLoad %v4float %outFragColor
         %96 = OpVectorShuffle %v4float %95 %94 4 5 6 3
               OpStore %outFragColor %96
               OpBranch %90
         %97 = OpLabel
         %99 = OpLoad %v4float %albedo
        %100 = OpVectorShuffle %v3float %99 %99 0 1 2
        %101 = OpLoad %float %NdotL
        %102 = OpVectorTimesScalar %v3float %100 %101
               OpStore %baseColor %102
        %103 = OpAccessChain %_ptr_Uniform_int %uboParams %int_1
        %104 = OpLoad %int %103
        %105 = OpIEqual %bool %104 %int_1
               OpSelectionMerge %107 None
               OpBranchConditional %105 %106 %123
        %106 = OpLabel
        %108 = OpLoad %float %ssao
        %109 = OpCompositeConstruct %v3float %108 %108 %108
        %110 = OpLoad %v4float %outFragColor
        %111 = OpVectorShuffle %v4float %110 %109 4 5 6 3
               OpStore %outFragColor %111
        %112 = OpAccessChain %_ptr_Uniform_int %uboParams %int_2
        %113 = OpLoad %int %112
        %114 = OpINotEqual %bool %113 %int_1
               OpSelectionMerge %116 None
               OpBranchConditional %114 %115 %116
        %115 = OpLabel
        %117 = OpLoad %v3float %baseColor
        %118 = OpLoad %v4float %outFragColor
        %119 = OpVectorShuffle %v3float %118 %118 0 1 2
        %120 = OpFMul %v3float %119 %117
        %121 = OpLoad %v4float %outFragColor
        %122 = OpVectorShuffle %v4float %121 %120 4 5 6 3
               OpStore %outFragColor %122
               OpBranch %116
        %116 = OpLabel
               OpBranch %107
        %123 = OpLabel
        %124 = OpLoad %v3float %baseColor
        %125 = OpLoad %v4float %outFragColor
        %126 = OpVectorShuffle %v4float %125 %124 4 5 6 3
               OpStore %outFragColor %126
               OpBranch %107
        %107 = OpLabel
               OpBranch %90
         %90 = OpLabel
               OpReturn
               OpFunctionEnd
