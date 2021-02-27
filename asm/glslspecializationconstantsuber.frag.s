; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 207
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
               OpName %LIGHTING_MODEL "LIGHTING_MODEL"
               OpName %ambient "ambient"
               OpName %inColor "inColor"
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
               OpName %N_0 "N"
               OpName %L_0 "L"
               OpName %intensity "intensity"
               OpName %color "color"
               OpName %PARAM_TOON_DESATURATION "PARAM_TOON_DESATURATION"
               OpName %color_0 "color"
               OpName %samplerColormap "samplerColormap"
               OpName %inUV "inUV"
               OpName %ambient_0 "ambient"
               OpName %N_1 "N"
               OpName %L_1 "L"
               OpName %V_0 "V"
               OpName %R_0 "R"
               OpName %diffuse_0 "diffuse"
               OpName %specular_0 "specular"
               OpName %samplerDiscard "samplerDiscard"
               OpDecorate %LIGHTING_MODEL SpecId 0
               OpDecorate %inColor Location 1
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %PARAM_TOON_DESATURATION SpecId 1
               OpDecorate %samplerColormap DescriptorSet 0
               OpDecorate %samplerColormap Binding 1
               OpDecorate %inUV Location 2
               OpDecorate %samplerDiscard DescriptorSet 0
               OpDecorate %samplerDiscard Binding 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%LIGHTING_MODEL = OpSpecConstant %int 0
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
 %float_0_25 = OpConstant %float 0.25
         %20 = OpConstantComposite %v3float %float_0_25 %float_0_25 %float_0_25
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
   %float_32 = OpConstant %float 32
 %float_0_75 = OpConstant %float 0.75
         %55 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
 %float_1_75 = OpConstant %float 1.75
    %float_1 = OpConstant %float 1
%_ptr_Function_float = OpTypePointer Function %float
%float_0_980000019 = OpConstant %float 0.980000019
       %bool = OpTypeBool
  %float_1_5 = OpConstant %float 1.5
%float_0_899999976 = OpConstant %float 0.899999976
  %float_0_5 = OpConstant %float 0.5
%float_0_600000024 = OpConstant %float 0.600000024
%float_0_400000006 = OpConstant %float 0.400000006
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_212599993 = OpConstant %float 0.212599993
%float_0_715200007 = OpConstant %float 0.715200007
%float_0_0722000003 = OpConstant %float 0.0722000003
        %127 = OpConstantComposite %v3float %float_0_212599993 %float_0_715200007 %float_0_0722000003
%PARAM_TOON_DESATURATION = OpSpecConstant %float 0
%_ptr_Function_v4float = OpTypePointer Function %v4float
        %144 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %145 = OpTypeSampledImage %144
%_ptr_UniformConstant_145 = OpTypePointer UniformConstant %145
%samplerColormap = OpVariable %_ptr_UniformConstant_145 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%samplerDiscard = OpVariable %_ptr_UniformConstant_145 UniformConstant
       %main = OpFunction %void None %3
          %5 = OpLabel
    %ambient = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
        %N_0 = OpVariable %_ptr_Function_v3float Function
        %L_0 = OpVariable %_ptr_Function_v3float Function
  %intensity = OpVariable %_ptr_Function_float Function
      %color = OpVariable %_ptr_Function_v3float Function
    %color_0 = OpVariable %_ptr_Function_v4float Function
  %ambient_0 = OpVariable %_ptr_Function_v3float Function
        %N_1 = OpVariable %_ptr_Function_v3float Function
        %L_1 = OpVariable %_ptr_Function_v3float Function
        %V_0 = OpVariable %_ptr_Function_v3float Function
        %R_0 = OpVariable %_ptr_Function_v3float Function
  %diffuse_0 = OpVariable %_ptr_Function_v3float Function
 %specular_0 = OpVariable %_ptr_Function_float Function
               OpSelectionMerge %11 None
               OpSwitch %LIGHTING_MODEL %11 0 %8 1 %9 2 %10
          %8 = OpLabel
         %18 = OpLoad %v3float %inColor
         %21 = OpFMul %v3float %18 %20
               OpStore %ambient %21
         %24 = OpLoad %v3float %inNormal
         %25 = OpExtInst %v3float %1 Normalize %24
               OpStore %N %25
         %28 = OpLoad %v3float %inLightVec
         %29 = OpExtInst %v3float %1 Normalize %28
               OpStore %L %29
         %32 = OpLoad %v3float %inViewVec
         %33 = OpExtInst %v3float %1 Normalize %32
               OpStore %V %33
         %35 = OpLoad %v3float %L
         %36 = OpFNegate %v3float %35
         %37 = OpLoad %v3float %N
         %38 = OpExtInst %v3float %1 Reflect %36 %37
               OpStore %R %38
         %40 = OpLoad %v3float %N
         %41 = OpLoad %v3float %L
         %42 = OpDot %float %40 %41
         %44 = OpExtInst %float %1 FMax %42 %float_0
         %45 = OpLoad %v3float %inColor
         %46 = OpVectorTimesScalar %v3float %45 %44
               OpStore %diffuse %46
         %48 = OpLoad %v3float %R
         %49 = OpLoad %v3float %V
         %50 = OpDot %float %48 %49
         %51 = OpExtInst %float %1 FMax %50 %float_0
         %53 = OpExtInst %float %1 Pow %51 %float_32
         %56 = OpVectorTimesScalar %v3float %55 %53
               OpStore %specular %56
         %60 = OpLoad %v3float %ambient
         %61 = OpLoad %v3float %diffuse
         %63 = OpVectorTimesScalar %v3float %61 %float_1_75
         %64 = OpFAdd %v3float %60 %63
         %65 = OpLoad %v3float %specular
         %66 = OpFAdd %v3float %64 %65
         %68 = OpCompositeExtract %float %66 0
         %69 = OpCompositeExtract %float %66 1
         %70 = OpCompositeExtract %float %66 2
         %71 = OpCompositeConstruct %v4float %68 %69 %70 %float_1
               OpStore %outFragColor %71
               OpBranch %11
          %9 = OpLabel
         %74 = OpLoad %v3float %inNormal
         %75 = OpExtInst %v3float %1 Normalize %74
               OpStore %N_0 %75
         %77 = OpLoad %v3float %inLightVec
         %78 = OpExtInst %v3float %1 Normalize %77
               OpStore %L_0 %78
         %81 = OpLoad %v3float %N_0
         %82 = OpLoad %v3float %L_0
         %83 = OpDot %float %81 %82
               OpStore %intensity %83
         %84 = OpLoad %float %intensity
         %87 = OpFOrdGreaterThan %bool %84 %float_0_980000019
               OpSelectionMerge %89 None
               OpBranchConditional %87 %88 %94
         %88 = OpLabel
         %91 = OpLoad %v3float %inColor
         %93 = OpVectorTimesScalar %v3float %91 %float_1_5
               OpStore %color %93
               OpBranch %89
         %94 = OpLabel
         %95 = OpLoad %float %intensity
         %97 = OpFOrdGreaterThan %bool %95 %float_0_899999976
               OpSelectionMerge %99 None
               OpBranchConditional %97 %98 %102
         %98 = OpLabel
        %100 = OpLoad %v3float %inColor
        %101 = OpVectorTimesScalar %v3float %100 %float_1
               OpStore %color %101
               OpBranch %99
        %102 = OpLabel
        %103 = OpLoad %float %intensity
        %105 = OpFOrdGreaterThan %bool %103 %float_0_5
               OpSelectionMerge %107 None
               OpBranchConditional %105 %106 %111
        %106 = OpLabel
        %108 = OpLoad %v3float %inColor
        %110 = OpVectorTimesScalar %v3float %108 %float_0_600000024
               OpStore %color %110
               OpBranch %107
        %111 = OpLabel
        %112 = OpLoad %float %intensity
        %113 = OpFOrdGreaterThan %bool %112 %float_0_25
               OpSelectionMerge %115 None
               OpBranchConditional %113 %114 %119
        %114 = OpLabel
        %116 = OpLoad %v3float %inColor
        %118 = OpVectorTimesScalar %v3float %116 %float_0_400000006
               OpStore %color %118
               OpBranch %115
        %119 = OpLabel
        %120 = OpLoad %v3float %inColor
        %122 = OpVectorTimesScalar %v3float %120 %float_0_200000003
               OpStore %color %122
               OpBranch %115
        %115 = OpLabel
               OpBranch %107
        %107 = OpLabel
               OpBranch %99
         %99 = OpLabel
               OpBranch %89
         %89 = OpLabel
        %123 = OpLoad %v3float %color
        %128 = OpLoad %v3float %color
        %129 = OpDot %float %127 %128
        %130 = OpCompositeConstruct %v3float %129 %129 %129
        %132 = OpCompositeConstruct %v3float %PARAM_TOON_DESATURATION %PARAM_TOON_DESATURATION %PARAM_TOON_DESATURATION
        %133 = OpExtInst %v3float %1 FMix %123 %130 %132
        %134 = OpCompositeExtract %float %133 0
        %135 = OpCompositeExtract %float %133 1
        %136 = OpCompositeExtract %float %133 2
        %137 = OpCompositeConstruct %v3float %134 %135 %136
               OpStore %color %137
        %138 = OpLoad %v3float %color
        %139 = OpLoad %v4float %outFragColor
        %140 = OpVectorShuffle %v4float %139 %138 4 5 6 3
               OpStore %outFragColor %140
               OpBranch %11
         %10 = OpLabel
        %148 = OpLoad %145 %samplerColormap
        %152 = OpLoad %v2float %inUV
        %153 = OpImageSampleImplicitLod %v4float %148 %152
        %154 = OpVectorShuffle %v4float %153 %153 0 0 0 3
               OpStore %color_0 %154
        %156 = OpLoad %v4float %color_0
        %157 = OpVectorShuffle %v3float %156 %156 0 1 2
        %158 = OpFMul %v3float %157 %20
        %159 = OpLoad %v3float %inColor
        %160 = OpFMul %v3float %158 %159
               OpStore %ambient_0 %160
        %162 = OpLoad %v3float %inNormal
        %163 = OpExtInst %v3float %1 Normalize %162
               OpStore %N_1 %163
        %165 = OpLoad %v3float %inLightVec
        %166 = OpExtInst %v3float %1 Normalize %165
               OpStore %L_1 %166
        %168 = OpLoad %v3float %inViewVec
        %169 = OpExtInst %v3float %1 Normalize %168
               OpStore %V_0 %169
        %171 = OpLoad %v3float %L_1
        %172 = OpFNegate %v3float %171
        %173 = OpLoad %v3float %N_1
        %174 = OpExtInst %v3float %1 Reflect %172 %173
               OpStore %R_0 %174
        %176 = OpLoad %v3float %N_1
        %177 = OpLoad %v3float %L_1
        %178 = OpDot %float %176 %177
        %179 = OpExtInst %float %1 FMax %178 %float_0
        %180 = OpLoad %v4float %color_0
        %181 = OpVectorShuffle %v3float %180 %180 0 1 2
        %182 = OpVectorTimesScalar %v3float %181 %179
               OpStore %diffuse_0 %182
        %184 = OpLoad %v3float %R_0
        %185 = OpLoad %v3float %V_0
        %186 = OpDot %float %184 %185
        %187 = OpExtInst %float %1 FMax %186 %float_0
        %188 = OpExtInst %float %1 Pow %187 %float_32
        %191 = OpAccessChain %_ptr_Function_float %color_0 %uint_3
        %192 = OpLoad %float %191
        %193 = OpFMul %float %188 %192
               OpStore %specular_0 %193
        %194 = OpLoad %v3float %ambient_0
        %195 = OpLoad %v3float %diffuse_0
        %196 = OpFAdd %v3float %194 %195
        %197 = OpLoad %float %specular_0
        %198 = OpCompositeConstruct %v3float %197 %197 %197
        %199 = OpFAdd %v3float %196 %198
        %200 = OpCompositeExtract %float %199 0
        %201 = OpCompositeExtract %float %199 1
        %202 = OpCompositeExtract %float %199 2
        %203 = OpCompositeConstruct %v4float %200 %201 %202 %float_1
               OpStore %outFragColor %203
               OpBranch %11
         %11 = OpLabel
               OpReturn
               OpFunctionEnd
