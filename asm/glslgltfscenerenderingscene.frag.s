; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 138
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inColor %inNormal %inTangent %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %samplerColorMap "samplerColorMap"
               OpName %inUV "inUV"
               OpName %inColor "inColor"
               OpName %ALPHA_MASK "ALPHA_MASK"
               OpName %ALPHA_MASK_CUTOFF "ALPHA_MASK_CUTOFF"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %T "T"
               OpName %inTangent "inTangent"
               OpName %B "B"
               OpName %TBN "TBN"
               OpName %samplerNormalMap "samplerNormalMap"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %V "V"
               OpName %inViewVec "inViewVec"
               OpName %R "R"
               OpName %diffuse "diffuse"
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColorMap DescriptorSet 1
               OpDecorate %samplerColorMap Binding 0
               OpDecorate %inUV Location 2
               OpDecorate %inColor Location 1
               OpDecorate %ALPHA_MASK SpecId 0
               OpDecorate %ALPHA_MASK_CUTOFF SpecId 1
               OpDecorate %inNormal Location 0
               OpDecorate %inTangent Location 5
               OpDecorate %samplerNormalMap DescriptorSet 1
               OpDecorate %samplerNormalMap Binding 1
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerColorMap = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
       %bool = OpTypeBool
 %ALPHA_MASK = OpSpecConstantFalse %bool
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Function_float = OpTypePointer Function %float
%ALPHA_MASK_CUTOFF = OpSpecConstant %float 0
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
%_ptr_Input_float = OpTypePointer Input %float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
    %float_0 = OpConstant %float 0
%samplerNormalMap = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %float_2 = OpConstant %float 2
         %92 = OpConstantComposite %v3float %float_1 %float_1 %float_1
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
%float_0_100000001 = OpConstant %float 0.100000001
   %float_32 = OpConstant %float 32
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %T = OpVariable %_ptr_Function_v3float Function
          %B = OpVariable %_ptr_Function_v3float Function
        %TBN = OpVariable %_ptr_Function_mat3v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_float Function
         %14 = OpLoad %11 %samplerColorMap
         %18 = OpLoad %v2float %inUV
         %19 = OpImageSampleImplicitLod %v4float %14 %18
         %23 = OpLoad %v3float %inColor
         %25 = OpCompositeExtract %float %23 0
         %26 = OpCompositeExtract %float %23 1
         %27 = OpCompositeExtract %float %23 2
         %28 = OpCompositeConstruct %v4float %25 %26 %27 %float_1
         %29 = OpFMul %v4float %19 %28
               OpStore %color %29
               OpSelectionMerge %33 None
               OpBranchConditional %ALPHA_MASK %32 %33
         %32 = OpLabel
         %37 = OpAccessChain %_ptr_Function_float %color %uint_3
         %38 = OpLoad %float %37
         %40 = OpFOrdLessThan %bool %38 %ALPHA_MASK_CUTOFF
               OpSelectionMerge %42 None
               OpBranchConditional %40 %41 %42
         %41 = OpLabel
               OpKill
         %42 = OpLabel
               OpBranch %33
         %33 = OpLabel
         %47 = OpLoad %v3float %inNormal
         %48 = OpExtInst %v3float %1 Normalize %47
               OpStore %N %48
         %52 = OpLoad %v4float %inTangent
         %53 = OpVectorShuffle %v3float %52 %52 0 1 2
         %54 = OpExtInst %v3float %1 Normalize %53
               OpStore %T %54
         %56 = OpLoad %v3float %inNormal
         %57 = OpLoad %v4float %inTangent
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpExtInst %v3float %1 Cross %56 %58
         %61 = OpAccessChain %_ptr_Input_float %inTangent %uint_3
         %62 = OpLoad %float %61
         %63 = OpVectorTimesScalar %v3float %59 %62
               OpStore %B %63
         %67 = OpLoad %v3float %T
         %68 = OpLoad %v3float %B
         %69 = OpLoad %v3float %N
         %71 = OpCompositeExtract %float %67 0
         %72 = OpCompositeExtract %float %67 1
         %73 = OpCompositeExtract %float %67 2
         %74 = OpCompositeExtract %float %68 0
         %75 = OpCompositeExtract %float %68 1
         %76 = OpCompositeExtract %float %68 2
         %77 = OpCompositeExtract %float %69 0
         %78 = OpCompositeExtract %float %69 1
         %79 = OpCompositeExtract %float %69 2
         %80 = OpCompositeConstruct %v3float %71 %72 %73
         %81 = OpCompositeConstruct %v3float %74 %75 %76
         %82 = OpCompositeConstruct %v3float %77 %78 %79
         %83 = OpCompositeConstruct %mat3v3float %80 %81 %82
               OpStore %TBN %83
         %84 = OpLoad %mat3v3float %TBN
         %86 = OpLoad %11 %samplerNormalMap
         %87 = OpLoad %v2float %inUV
         %88 = OpImageSampleImplicitLod %v4float %86 %87
         %89 = OpVectorShuffle %v3float %88 %88 0 1 2
         %91 = OpVectorTimesScalar %v3float %89 %float_2
         %93 = OpFSub %v3float %91 %92
         %94 = OpExtInst %v3float %1 Normalize %93
         %95 = OpMatrixTimesVector %v3float %84 %94
               OpStore %N %95
         %98 = OpLoad %v3float %inLightVec
         %99 = OpExtInst %v3float %1 Normalize %98
               OpStore %L %99
        %102 = OpLoad %v3float %inViewVec
        %103 = OpExtInst %v3float %1 Normalize %102
               OpStore %V %103
        %105 = OpLoad %v3float %L
        %106 = OpFNegate %v3float %105
        %107 = OpLoad %v3float %N
        %108 = OpExtInst %v3float %1 Reflect %106 %107
               OpStore %R %108
        %110 = OpLoad %v3float %N
        %111 = OpLoad %v3float %L
        %112 = OpDot %float %110 %111
        %114 = OpExtInst %float %1 FMax %112 %float_0_100000001
        %115 = OpCompositeConstruct %v3float %114 %114 %114
               OpStore %diffuse %115
        %117 = OpLoad %v3float %R
        %118 = OpLoad %v3float %V
        %119 = OpDot %float %117 %118
        %120 = OpExtInst %float %1 FMax %119 %float_0
        %122 = OpExtInst %float %1 Pow %120 %float_32
               OpStore %specular %122
        %125 = OpLoad %v3float %diffuse
        %126 = OpLoad %v4float %color
        %127 = OpVectorShuffle %v3float %126 %126 0 1 2
        %128 = OpFMul %v3float %125 %127
        %129 = OpLoad %float %specular
        %130 = OpCompositeConstruct %v3float %129 %129 %129
        %131 = OpFAdd %v3float %128 %130
        %132 = OpAccessChain %_ptr_Function_float %color %uint_3
        %133 = OpLoad %float %132
        %134 = OpCompositeExtract %float %131 0
        %135 = OpCompositeExtract %float %131 1
        %136 = OpCompositeExtract %float %131 2
        %137 = OpCompositeConstruct %v4float %134 %135 %136 %133
               OpStore %outFragColor %137
               OpReturn
               OpFunctionEnd
