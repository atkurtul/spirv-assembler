; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 289
; Schema: 0
               OpCapability Shader
               OpCapability FragmentDensityEXT
               OpExtension "SPV_NV_shading_rate"
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inColor %inNormal %inTangent %inLightVec %inViewVec %outFragColor %gl_FragmentSizeNV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpSourceExtension "GL_NV_shading_rate_image"
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
               OpName %UBOScene "UBOScene"
               OpMemberName %UBOScene 0 "projection"
               OpMemberName %UBOScene 1 "view"
               OpMemberName %UBOScene 2 "model"
               OpMemberName %UBOScene 3 "lightPos"
               OpMemberName %UBOScene 4 "viewPos"
               OpMemberName %UBOScene 5 "colorShadingRates"
               OpName %uboScene "uboScene"
               OpName %gl_FragmentSizeNV "gl_FragmentSizeNV"
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
               OpMemberDecorate %UBOScene 0 ColMajor
               OpMemberDecorate %UBOScene 0 Offset 0
               OpMemberDecorate %UBOScene 0 MatrixStride 16
               OpMemberDecorate %UBOScene 1 ColMajor
               OpMemberDecorate %UBOScene 1 Offset 64
               OpMemberDecorate %UBOScene 1 MatrixStride 16
               OpMemberDecorate %UBOScene 2 ColMajor
               OpMemberDecorate %UBOScene 2 Offset 128
               OpMemberDecorate %UBOScene 2 MatrixStride 16
               OpMemberDecorate %UBOScene 3 Offset 192
               OpMemberDecorate %UBOScene 4 Offset 208
               OpMemberDecorate %UBOScene 5 Offset 224
               OpDecorate %UBOScene Block
               OpDecorate %uboScene DescriptorSet 0
               OpDecorate %uboScene Binding 0
               OpDecorate %gl_FragmentSizeNV Flat
               OpDecorate %gl_FragmentSizeNV BuiltIn FragSizeEXT
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
 %float_0_25 = OpConstant %float 0.25
   %float_32 = OpConstant %float 32
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
%mat4v4float = OpTypeMatrix %v4float 4
        %int = OpTypeInt 32 1
   %UBOScene = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %v4float %int
%_ptr_Uniform_UBOScene = OpTypePointer Uniform %UBOScene
   %uboScene = OpVariable %_ptr_Uniform_UBOScene Uniform
      %int_5 = OpConstant %int 5
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_1 = OpConstant %int 1
      %v2int = OpTypeVector %int 2
%_ptr_Input_v2int = OpTypePointer Input %v2int
%gl_FragmentSizeNV = OpVariable %_ptr_Input_v2int Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_int = OpTypePointer Input %int
     %uint_1 = OpConstant %uint 1
%float_0_800000012 = OpConstant %float 0.800000012
%float_0_400000006 = OpConstant %float 0.400000006
        %170 = OpConstantComposite %v3float %float_0 %float_0_800000012 %float_0_400000006
      %int_2 = OpConstant %int 2
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_600000024 = OpConstant %float 0.600000024
        %191 = OpConstantComposite %v3float %float_0_200000003 %float_0_600000024 %float_1
        %209 = OpConstantComposite %v3float %float_0 %float_0_400000006 %float_0_800000012
        %227 = OpConstantComposite %v3float %float_1 %float_1 %float_0_200000003
      %int_4 = OpConstant %int 4
        %246 = OpConstantComposite %v3float %float_0_800000012 %float_0_800000012 %float_0
        %264 = OpConstantComposite %v3float %float_1 %float_0_400000006 %float_0_200000003
        %282 = OpConstantComposite %v3float %float_0_800000012 %float_0 %float_0
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
        %114 = OpExtInst %float %1 FMax %112 %float_0_25
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
        %145 = OpAccessChain %_ptr_Uniform_int %uboScene %int_5
        %146 = OpLoad %int %145
        %148 = OpIEqual %bool %146 %int_1
               OpSelectionMerge %150 None
               OpBranchConditional %148 %149 %150
        %149 = OpLabel
        %156 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %157 = OpLoad %int %156
        %158 = OpIEqual %bool %157 %int_1
               OpSelectionMerge %160 None
               OpBranchConditional %158 %159 %160
        %159 = OpLabel
        %162 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %163 = OpLoad %int %162
        %164 = OpIEqual %bool %163 %int_1
               OpBranch %160
        %160 = OpLabel
        %165 = OpPhi %bool %158 %149 %164 %159
               OpSelectionMerge %167 None
               OpBranchConditional %165 %166 %167
        %166 = OpLabel
        %171 = OpLoad %v4float %outFragColor
        %172 = OpVectorShuffle %v3float %171 %171 0 1 2
        %173 = OpFMul %v3float %172 %170
        %174 = OpLoad %v4float %outFragColor
        %175 = OpVectorShuffle %v4float %174 %173 4 5 6 3
               OpStore %outFragColor %175
               OpReturn
        %167 = OpLabel
        %177 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %178 = OpLoad %int %177
        %180 = OpIEqual %bool %178 %int_2
               OpSelectionMerge %182 None
               OpBranchConditional %180 %181 %182
        %181 = OpLabel
        %183 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %184 = OpLoad %int %183
        %185 = OpIEqual %bool %184 %int_1
               OpBranch %182
        %182 = OpLabel
        %186 = OpPhi %bool %180 %167 %185 %181
               OpSelectionMerge %188 None
               OpBranchConditional %186 %187 %188
        %187 = OpLabel
        %192 = OpLoad %v4float %outFragColor
        %193 = OpVectorShuffle %v3float %192 %192 0 1 2
        %194 = OpFMul %v3float %193 %191
        %195 = OpLoad %v4float %outFragColor
        %196 = OpVectorShuffle %v4float %195 %194 4 5 6 3
               OpStore %outFragColor %196
               OpReturn
        %188 = OpLabel
        %198 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %199 = OpLoad %int %198
        %200 = OpIEqual %bool %199 %int_1
               OpSelectionMerge %202 None
               OpBranchConditional %200 %201 %202
        %201 = OpLabel
        %203 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %204 = OpLoad %int %203
        %205 = OpIEqual %bool %204 %int_2
               OpBranch %202
        %202 = OpLabel
        %206 = OpPhi %bool %200 %188 %205 %201
               OpSelectionMerge %208 None
               OpBranchConditional %206 %207 %208
        %207 = OpLabel
        %210 = OpLoad %v4float %outFragColor
        %211 = OpVectorShuffle %v3float %210 %210 0 1 2
        %212 = OpFMul %v3float %211 %209
        %213 = OpLoad %v4float %outFragColor
        %214 = OpVectorShuffle %v4float %213 %212 4 5 6 3
               OpStore %outFragColor %214
               OpReturn
        %208 = OpLabel
        %216 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %217 = OpLoad %int %216
        %218 = OpIEqual %bool %217 %int_2
               OpSelectionMerge %220 None
               OpBranchConditional %218 %219 %220
        %219 = OpLabel
        %221 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %222 = OpLoad %int %221
        %223 = OpIEqual %bool %222 %int_2
               OpBranch %220
        %220 = OpLabel
        %224 = OpPhi %bool %218 %208 %223 %219
               OpSelectionMerge %226 None
               OpBranchConditional %224 %225 %226
        %225 = OpLabel
        %228 = OpLoad %v4float %outFragColor
        %229 = OpVectorShuffle %v3float %228 %228 0 1 2
        %230 = OpFMul %v3float %229 %227
        %231 = OpLoad %v4float %outFragColor
        %232 = OpVectorShuffle %v4float %231 %230 4 5 6 3
               OpStore %outFragColor %232
               OpReturn
        %226 = OpLabel
        %234 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %235 = OpLoad %int %234
        %237 = OpIEqual %bool %235 %int_4
               OpSelectionMerge %239 None
               OpBranchConditional %237 %238 %239
        %238 = OpLabel
        %240 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %241 = OpLoad %int %240
        %242 = OpIEqual %bool %241 %int_2
               OpBranch %239
        %239 = OpLabel
        %243 = OpPhi %bool %237 %226 %242 %238
               OpSelectionMerge %245 None
               OpBranchConditional %243 %244 %245
        %244 = OpLabel
        %247 = OpLoad %v4float %outFragColor
        %248 = OpVectorShuffle %v3float %247 %247 0 1 2
        %249 = OpFMul %v3float %248 %246
        %250 = OpLoad %v4float %outFragColor
        %251 = OpVectorShuffle %v4float %250 %249 4 5 6 3
               OpStore %outFragColor %251
               OpReturn
        %245 = OpLabel
        %253 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %254 = OpLoad %int %253
        %255 = OpIEqual %bool %254 %int_2
               OpSelectionMerge %257 None
               OpBranchConditional %255 %256 %257
        %256 = OpLabel
        %258 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %259 = OpLoad %int %258
        %260 = OpIEqual %bool %259 %int_4
               OpBranch %257
        %257 = OpLabel
        %261 = OpPhi %bool %255 %245 %260 %256
               OpSelectionMerge %263 None
               OpBranchConditional %261 %262 %263
        %262 = OpLabel
        %265 = OpLoad %v4float %outFragColor
        %266 = OpVectorShuffle %v3float %265 %265 0 1 2
        %267 = OpFMul %v3float %266 %264
        %268 = OpLoad %v4float %outFragColor
        %269 = OpVectorShuffle %v4float %268 %267 4 5 6 3
               OpStore %outFragColor %269
               OpReturn
        %263 = OpLabel
        %271 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_0
        %272 = OpLoad %int %271
        %273 = OpIEqual %bool %272 %int_4
               OpSelectionMerge %275 None
               OpBranchConditional %273 %274 %275
        %274 = OpLabel
        %276 = OpAccessChain %_ptr_Input_int %gl_FragmentSizeNV %uint_1
        %277 = OpLoad %int %276
        %278 = OpIEqual %bool %277 %int_4
               OpBranch %275
        %275 = OpLabel
        %279 = OpPhi %bool %273 %263 %278 %274
               OpSelectionMerge %281 None
               OpBranchConditional %279 %280 %281
        %280 = OpLabel
        %283 = OpLoad %v4float %outFragColor
        %284 = OpVectorShuffle %v3float %283 %283 0 1 2
        %285 = OpFMul %v3float %284 %282
        %286 = OpLoad %v4float %outFragColor
        %287 = OpVectorShuffle %v4float %286 %285 4 5 6 3
               OpStore %outFragColor %287
               OpReturn
        %281 = OpLabel
               OpBranch %150
        %150 = OpLabel
               OpReturn
               OpFunctionEnd
