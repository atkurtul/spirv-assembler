; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 245
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUVW %inViewVec %inNormal %inLightVec %outColor0 %outColor1 %inPos
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %type "type"
               OpName %normal "normal"
               OpName %inUVW "inUVW"
               OpName %color "color"
               OpName %samplerEnvMap "samplerEnvMap"
               OpName %wViewVec "wViewVec"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "inverseModelview"
               OpName %ubo "ubo"
               OpName %inViewVec "inViewVec"
               OpName %normal_0 "normal"
               OpName %inNormal "inNormal"
               OpName %wNormal "wNormal"
               OpName %NdotL "NdotL"
               OpName %inLightVec "inLightVec"
               OpName %eyeDir "eyeDir"
               OpName %halfVec "halfVec"
               OpName %NdotH "NdotH"
               OpName %NdotV "NdotV"
               OpName %VdotH "VdotH"
               OpName %NH2 "NH2"
               OpName %g1 "g1"
               OpName %g2 "g2"
               OpName %geoAtt "geoAtt"
               OpName %fresnel "fresnel"
               OpName %spec "spec"
               OpName %wViewVec_0 "wViewVec"
               OpName %wNormal_0 "wNormal"
               OpName %outColor0 "outColor0"
               OpName %Exposure "Exposure"
               OpMemberName %Exposure 0 "exposure"
               OpName %exposure "exposure"
               OpName %l "l"
               OpName %threshold "threshold"
               OpName %outColor1 "outColor1"
               OpName %inPos "inPos"
               OpDecorate %type SpecId 0
               OpDecorate %inUVW Location 0
               OpDecorate %samplerEnvMap DescriptorSet 0
               OpDecorate %samplerEnvMap Binding 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inViewVec Location 3
               OpDecorate %inNormal Location 2
               OpDecorate %inLightVec Location 4
               OpDecorate %outColor0 Location 0
               OpMemberDecorate %Exposure 0 Offset 0
               OpDecorate %Exposure Block
               OpDecorate %exposure DescriptorSet 0
               OpDecorate %exposure Binding 2
               OpDecorate %outColor1 Location 1
               OpDecorate %inPos Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
       %type = OpSpecConstant %int 0
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inUVW = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %23 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %24 = OpTypeSampledImage %23
%_ptr_UniformConstant_24 = OpTypePointer UniformConstant %24
%samplerEnvMap = OpVariable %_ptr_UniformConstant_24 UniformConstant
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%mat3v3float = OpTypeMatrix %v3float 3
  %inViewVec = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_float = OpTypePointer Function %float
 %inLightVec = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
    %float_5 = OpConstant %float 5
%float_0_400000006 = OpConstant %float 0.400000006
%float_0_600000024 = OpConstant %float 0.600000024
%float_3_1400001 = OpConstant %float 3.1400001
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_800000012 = OpConstant %float 0.800000012
%float_0_625 = OpConstant %float 0.625
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outColor0 = OpVariable %_ptr_Output_v4float Output
        %199 = OpConstantComposite %v3float %float_1 %float_1 %float_1
   %Exposure = OpTypeStruct %float
%_ptr_Uniform_Exposure = OpTypePointer Uniform %Exposure
   %exposure = OpVariable %_ptr_Uniform_Exposure Uniform
      %int_0 = OpConstant %int 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
%float_0_212599993 = OpConstant %float 0.212599993
%float_0_715200007 = OpConstant %float 0.715200007
%float_0_0722000003 = OpConstant %float 0.0722000003
        %221 = OpConstantComposite %v3float %float_0_212599993 %float_0_715200007 %float_0_0722000003
 %float_0_75 = OpConstant %float 0.75
  %outColor1 = OpVariable %_ptr_Output_v4float Output
       %bool = OpTypeBool
        %236 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Output_float = OpTypePointer Output %float
      %inPos = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
     %normal = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v4float Function
   %wViewVec = OpVariable %_ptr_Function_v3float Function
   %normal_0 = OpVariable %_ptr_Function_v3float Function
    %wNormal = OpVariable %_ptr_Function_v3float Function
      %NdotL = OpVariable %_ptr_Function_float Function
     %eyeDir = OpVariable %_ptr_Function_v3float Function
    %halfVec = OpVariable %_ptr_Function_v3float Function
      %NdotH = OpVariable %_ptr_Function_float Function
      %NdotV = OpVariable %_ptr_Function_float Function
      %VdotH = OpVariable %_ptr_Function_float Function
        %NH2 = OpVariable %_ptr_Function_float Function
         %g1 = OpVariable %_ptr_Function_float Function
         %g2 = OpVariable %_ptr_Function_float Function
     %geoAtt = OpVariable %_ptr_Function_float Function
    %fresnel = OpVariable %_ptr_Function_float Function
       %spec = OpVariable %_ptr_Function_float Function
 %wViewVec_0 = OpVariable %_ptr_Function_v3float Function
  %wNormal_0 = OpVariable %_ptr_Function_v3float Function
          %l = OpVariable %_ptr_Function_float Function
  %threshold = OpVariable %_ptr_Function_float Function
        %230 = OpVariable %_ptr_Function_v3float Function
               OpSelectionMerge %11 None
               OpSwitch %type %11 0 %8 1 %9 2 %10
          %8 = OpLabel
         %18 = OpLoad %v3float %inUVW
         %19 = OpExtInst %v3float %1 Normalize %18
               OpStore %normal %19
         %27 = OpLoad %24 %samplerEnvMap
         %28 = OpLoad %v3float %normal
         %29 = OpImageSampleImplicitLod %v4float %27 %28
               OpStore %color %29
               OpBranch %11
          %9 = OpLabel
         %38 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %39 = OpLoad %mat4v4float %38
         %41 = OpCompositeExtract %v4float %39 0
         %42 = OpVectorShuffle %v3float %41 %41 0 1 2
         %43 = OpCompositeExtract %v4float %39 1
         %44 = OpVectorShuffle %v3float %43 %43 0 1 2
         %45 = OpCompositeExtract %v4float %39 2
         %46 = OpVectorShuffle %v3float %45 %45 0 1 2
         %47 = OpCompositeConstruct %mat3v3float %42 %44 %46
         %49 = OpLoad %v3float %inViewVec
         %50 = OpExtInst %v3float %1 Normalize %49
         %51 = OpMatrixTimesVector %v3float %47 %50
               OpStore %wViewVec %51
         %54 = OpLoad %v3float %inNormal
         %55 = OpExtInst %v3float %1 Normalize %54
               OpStore %normal_0 %55
         %57 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %58 = OpLoad %mat4v4float %57
         %59 = OpCompositeExtract %v4float %58 0
         %60 = OpVectorShuffle %v3float %59 %59 0 1 2
         %61 = OpCompositeExtract %v4float %58 1
         %62 = OpVectorShuffle %v3float %61 %61 0 1 2
         %63 = OpCompositeExtract %v4float %58 2
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpCompositeConstruct %mat3v3float %60 %62 %64
         %66 = OpLoad %v3float %normal_0
         %67 = OpMatrixTimesVector %v3float %65 %66
               OpStore %wNormal %67
         %70 = OpLoad %v3float %normal_0
         %72 = OpLoad %v3float %inLightVec
         %73 = OpDot %float %70 %72
         %75 = OpExtInst %float %1 FMax %73 %float_0
               OpStore %NdotL %75
         %77 = OpLoad %v3float %inViewVec
         %78 = OpExtInst %v3float %1 Normalize %77
               OpStore %eyeDir %78
         %80 = OpLoad %v3float %inLightVec
         %81 = OpLoad %v3float %eyeDir
         %82 = OpFAdd %v3float %80 %81
         %83 = OpExtInst %v3float %1 Normalize %82
               OpStore %halfVec %83
         %85 = OpLoad %v3float %normal_0
         %86 = OpLoad %v3float %halfVec
         %87 = OpDot %float %85 %86
         %88 = OpExtInst %float %1 FMax %87 %float_0
               OpStore %NdotH %88
         %90 = OpLoad %v3float %normal_0
         %91 = OpLoad %v3float %eyeDir
         %92 = OpDot %float %90 %91
         %93 = OpExtInst %float %1 FMax %92 %float_0
               OpStore %NdotV %93
         %95 = OpLoad %v3float %eyeDir
         %96 = OpLoad %v3float %halfVec
         %97 = OpDot %float %95 %96
         %98 = OpExtInst %float %1 FMax %97 %float_0
               OpStore %VdotH %98
        %101 = OpLoad %float %NdotH
        %102 = OpFMul %float %float_2 %101
               OpStore %NH2 %102
        %104 = OpLoad %float %NH2
        %105 = OpLoad %float %NdotV
        %106 = OpFMul %float %104 %105
        %107 = OpLoad %float %VdotH
        %108 = OpFDiv %float %106 %107
               OpStore %g1 %108
        %110 = OpLoad %float %NH2
        %111 = OpLoad %float %NdotL
        %112 = OpFMul %float %110 %111
        %113 = OpLoad %float %VdotH
        %114 = OpFDiv %float %112 %113
               OpStore %g2 %114
        %117 = OpLoad %float %g1
        %118 = OpLoad %float %g2
        %119 = OpExtInst %float %1 FMin %117 %118
        %120 = OpExtInst %float %1 FMin %float_1 %119
               OpStore %geoAtt %120
        %122 = OpLoad %float %VdotH
        %123 = OpFSub %float %float_1 %122
        %125 = OpExtInst %float %1 Pow %123 %float_5
               OpStore %fresnel %125
        %127 = OpLoad %float %fresnel
        %128 = OpFMul %float %127 %float_0_400000006
               OpStore %fresnel %128
        %130 = OpLoad %float %fresnel
        %131 = OpFAdd %float %130 %float_0_600000024
               OpStore %fresnel %131
        %133 = OpLoad %float %fresnel
        %134 = OpLoad %float %geoAtt
        %135 = OpFMul %float %133 %134
        %136 = OpLoad %float %NdotV
        %137 = OpLoad %float %NdotL
        %138 = OpFMul %float %136 %137
        %140 = OpFMul %float %138 %float_3_1400001
        %141 = OpFDiv %float %135 %140
               OpStore %spec %141
        %142 = OpLoad %24 %samplerEnvMap
        %143 = OpLoad %v3float %wViewVec
        %144 = OpFNegate %v3float %143
        %145 = OpLoad %v3float %wNormal
        %146 = OpExtInst %v3float %1 Reflect %144 %145
        %147 = OpImageSampleImplicitLod %v4float %142 %146
               OpStore %color %147
        %148 = OpLoad %v4float %color
        %149 = OpVectorShuffle %v3float %148 %148 0 1 2
        %150 = OpLoad %float %NdotL
        %151 = OpVectorTimesScalar %v3float %149 %150
        %153 = OpLoad %float %spec
        %155 = OpFMul %float %153 %float_0_800000012
        %156 = OpFAdd %float %float_0_200000003 %155
        %157 = OpVectorTimesScalar %v3float %151 %156
        %158 = OpCompositeExtract %float %157 0
        %159 = OpCompositeExtract %float %157 1
        %160 = OpCompositeExtract %float %157 2
        %161 = OpCompositeConstruct %v4float %158 %159 %160 %float_1
               OpStore %color %161
               OpBranch %11
         %10 = OpLabel
        %164 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
        %165 = OpLoad %mat4v4float %164
        %166 = OpCompositeExtract %v4float %165 0
        %167 = OpVectorShuffle %v3float %166 %166 0 1 2
        %168 = OpCompositeExtract %v4float %165 1
        %169 = OpVectorShuffle %v3float %168 %168 0 1 2
        %170 = OpCompositeExtract %v4float %165 2
        %171 = OpVectorShuffle %v3float %170 %170 0 1 2
        %172 = OpCompositeConstruct %mat3v3float %167 %169 %171
        %173 = OpLoad %v3float %inViewVec
        %174 = OpExtInst %v3float %1 Normalize %173
        %175 = OpMatrixTimesVector %v3float %172 %174
               OpStore %wViewVec_0 %175
        %177 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
        %178 = OpLoad %mat4v4float %177
        %179 = OpCompositeExtract %v4float %178 0
        %180 = OpVectorShuffle %v3float %179 %179 0 1 2
        %181 = OpCompositeExtract %v4float %178 1
        %182 = OpVectorShuffle %v3float %181 %181 0 1 2
        %183 = OpCompositeExtract %v4float %178 2
        %184 = OpVectorShuffle %v3float %183 %183 0 1 2
        %185 = OpCompositeConstruct %mat3v3float %180 %182 %184
        %186 = OpLoad %v3float %inNormal
        %187 = OpMatrixTimesVector %v3float %185 %186
               OpStore %wNormal_0 %187
        %188 = OpLoad %24 %samplerEnvMap
        %189 = OpLoad %v3float %wViewVec_0
        %190 = OpFNegate %v3float %189
        %191 = OpLoad %v3float %wNormal_0
        %193 = OpExtInst %v3float %1 Refract %190 %191 %float_0_625
        %194 = OpImageSampleImplicitLod %v4float %188 %193
               OpStore %color %194
               OpBranch %11
         %11 = OpLabel
        %200 = OpLoad %v4float %color
        %201 = OpVectorShuffle %v3float %200 %200 0 1 2
        %202 = OpFNegate %v3float %201
        %208 = OpAccessChain %_ptr_Uniform_float %exposure %int_0
        %209 = OpLoad %float %208
        %210 = OpVectorTimesScalar %v3float %202 %209
        %211 = OpExtInst %v3float %1 Exp %210
        %212 = OpFSub %v3float %199 %211
        %213 = OpLoad %v4float %outColor0
        %214 = OpVectorShuffle %v4float %213 %212 4 5 6 3
               OpStore %outColor0 %214
        %216 = OpLoad %v4float %outColor0
        %217 = OpVectorShuffle %v3float %216 %216 0 1 2
        %222 = OpDot %float %217 %221
               OpStore %l %222
               OpStore %threshold %float_0_75
        %226 = OpLoad %float %l
        %227 = OpLoad %float %threshold
        %229 = OpFOrdGreaterThan %bool %226 %227
               OpSelectionMerge %232 None
               OpBranchConditional %229 %231 %235
        %231 = OpLabel
        %233 = OpLoad %v4float %outColor0
        %234 = OpVectorShuffle %v3float %233 %233 0 1 2
               OpStore %230 %234
               OpBranch %232
        %235 = OpLabel
               OpStore %230 %236
               OpBranch %232
        %232 = OpLabel
        %237 = OpLoad %v3float %230
        %238 = OpLoad %v4float %outColor1
        %239 = OpVectorShuffle %v4float %238 %237 4 5 6 3
               OpStore %outColor1 %239
        %243 = OpAccessChain %_ptr_Output_float %outColor1 %uint_3
               OpStore %243 %float_1
               OpReturn
               OpFunctionEnd
