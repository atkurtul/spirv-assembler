; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 360
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inTangentViewPos %inTangentFragPos %inUV %outColor %inTangentLightPos
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %parallaxMapping_vf2_vf3_ "parallaxMapping(vf2;vf3;"
               OpName %uv "uv"
               OpName %viewDir "viewDir"
               OpName %steepParallaxMapping_vf2_vf3_ "steepParallaxMapping(vf2;vf3;"
               OpName %uv_0 "uv"
               OpName %viewDir_0 "viewDir"
               OpName %parallaxOcclusionMapping_vf2_vf3_ "parallaxOcclusionMapping(vf2;vf3;"
               OpName %uv_1 "uv"
               OpName %viewDir_1 "viewDir"
               OpName %height "height"
               OpName %sNormalHeightMap "sNormalHeightMap"
               OpName %p "p"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "heightScale"
               OpMemberName %UBO 1 "parallaxBias"
               OpMemberName %UBO 2 "numLayers"
               OpMemberName %UBO 3 "mappingMode"
               OpName %ubo "ubo"
               OpName %layerDepth "layerDepth"
               OpName %currLayerDepth "currLayerDepth"
               OpName %deltaUV "deltaUV"
               OpName %currUV "currUV"
               OpName %height_0 "height"
               OpName %i "i"
               OpName %layerDepth_0 "layerDepth"
               OpName %currLayerDepth_0 "currLayerDepth"
               OpName %deltaUV_0 "deltaUV"
               OpName %currUV_0 "currUV"
               OpName %height_1 "height"
               OpName %i_0 "i"
               OpName %prevUV "prevUV"
               OpName %nextDepth "nextDepth"
               OpName %prevDepth "prevDepth"
               OpName %V "V"
               OpName %inTangentViewPos "inTangentViewPos"
               OpName %inTangentFragPos "inTangentFragPos"
               OpName %uv_2 "uv"
               OpName %inUV "inUV"
               OpName %outColor "outColor"
               OpName %sColorMap "sColorMap"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %normalHeightMapLod "normalHeightMapLod"
               OpName %color "color"
               OpName %N "N"
               OpName %L "L"
               OpName %inTangentLightPos "inTangentLightPos"
               OpName %R "R"
               OpName %H "H"
               OpName %ambient "ambient"
               OpName %diffuse "diffuse"
               OpName %specular "specular"
               OpDecorate %sNormalHeightMap DescriptorSet 0
               OpDecorate %sNormalHeightMap Binding 2
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpMemberDecorate %UBO 2 Offset 8
               OpMemberDecorate %UBO 3 Offset 12
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 3
               OpDecorate %inTangentViewPos Location 2
               OpDecorate %inTangentFragPos Location 3
               OpDecorate %inUV Location 0
               OpDecorate %outColor Location 0
               OpDecorate %sColorMap DescriptorSet 0
               OpDecorate %sColorMap Binding 1
               OpDecorate %inTangentLightPos Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %11 = OpTypeFunction %v2float %_ptr_Function_v2float %_ptr_Function_v3float
%_ptr_Function_float = OpTypePointer Function %float
    %float_1 = OpConstant %float 1
         %27 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %28 = OpTypeSampledImage %27
%_ptr_UniformConstant_28 = OpTypePointer UniformConstant %28
%sNormalHeightMap = OpVariable %_ptr_UniformConstant_28 UniformConstant
    %float_0 = OpConstant %float 0
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %float %float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_0 = OpConstant %int 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
  %float_0_5 = OpConstant %float 0.5
      %int_1 = OpConstant %int 1
     %uint_2 = OpConstant %uint 2
      %int_2 = OpConstant %int 2
%_ptr_Function_int = OpTypePointer Function %int
       %bool = OpTypeBool
%_ptr_Input_v3float = OpTypePointer Input %v3float
%inTangentViewPos = OpVariable %_ptr_Input_v3float Input
%inTangentFragPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
      %int_3 = OpConstant %int 3
%_ptr_Uniform_int = OpTypePointer Uniform %int
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
  %sColorMap = OpVariable %_ptr_UniformConstant_28 UniformConstant
     %uint_0 = OpConstant %uint 0
     %uint_1 = OpConstant %uint 1
    %float_2 = OpConstant %float 2
%inTangentLightPos = OpVariable %_ptr_Input_v3float Input
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_150000006 = OpConstant %float 0.150000006
        %343 = OpConstantComposite %v3float %float_0_150000006 %float_0_150000006 %float_0_150000006
   %float_32 = OpConstant %float 32
       %main = OpFunction %void None %3
          %5 = OpLabel
          %V = OpVariable %_ptr_Function_v3float Function
       %uv_2 = OpVariable %_ptr_Function_v2float Function
      %param = OpVariable %_ptr_Function_v2float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
    %param_1 = OpVariable %_ptr_Function_v2float Function
    %param_2 = OpVariable %_ptr_Function_v3float Function
    %param_3 = OpVariable %_ptr_Function_v2float Function
    %param_4 = OpVariable %_ptr_Function_v3float Function
%normalHeightMapLod = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
          %H = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
        %220 = OpLoad %v3float %inTangentViewPos
        %222 = OpLoad %v3float %inTangentFragPos
        %223 = OpFSub %v3float %220 %222
        %224 = OpExtInst %v3float %1 Normalize %223
               OpStore %V %224
        %228 = OpLoad %v2float %inUV
               OpStore %uv_2 %228
        %231 = OpAccessChain %_ptr_Uniform_int %ubo %int_3
        %232 = OpLoad %int %231
        %233 = OpIEqual %bool %232 %int_0
               OpSelectionMerge %235 None
               OpBranchConditional %233 %234 %242
        %234 = OpLabel
        %239 = OpLoad %28 %sColorMap
        %240 = OpLoad %v2float %inUV
        %241 = OpImageSampleImplicitLod %v4float %239 %240
               OpStore %outColor %241
               OpBranch %235
        %242 = OpLabel
        %243 = OpAccessChain %_ptr_Uniform_int %ubo %int_3
        %244 = OpLoad %int %243
               OpSelectionMerge %248 None
               OpSwitch %244 %248 2 %245 3 %246 4 %247
        %245 = OpLabel
        %250 = OpLoad %v2float %inUV
               OpStore %param %250
        %252 = OpLoad %v3float %V
               OpStore %param_0 %252
        %253 = OpFunctionCall %v2float %parallaxMapping_vf2_vf3_ %param %param_0
               OpStore %uv_2 %253
               OpBranch %248
        %246 = OpLabel
        %256 = OpLoad %v2float %inUV
               OpStore %param_1 %256
        %258 = OpLoad %v3float %V
               OpStore %param_2 %258
        %259 = OpFunctionCall %v2float %steepParallaxMapping_vf2_vf3_ %param_1 %param_2
               OpStore %uv_2 %259
               OpBranch %248
        %247 = OpLabel
        %262 = OpLoad %v2float %inUV
               OpStore %param_3 %262
        %264 = OpLoad %v3float %V
               OpStore %param_4 %264
        %265 = OpFunctionCall %v2float %parallaxOcclusionMapping_vf2_vf3_ %param_3 %param_4
               OpStore %uv_2 %265
               OpBranch %248
        %248 = OpLabel
        %269 = OpLoad %28 %sNormalHeightMap
        %270 = OpLoad %v2float %uv_2
        %271 = OpImageSampleExplicitLod %v4float %269 %270 Lod %float_0
        %272 = OpVectorShuffle %v3float %271 %271 0 1 2
               OpStore %normalHeightMapLod %272
        %274 = OpLoad %28 %sColorMap
        %275 = OpLoad %v2float %uv_2
        %276 = OpImageSampleImplicitLod %v4float %274 %275
        %277 = OpVectorShuffle %v3float %276 %276 0 1 2
               OpStore %color %277
        %279 = OpAccessChain %_ptr_Function_float %uv_2 %uint_0
        %280 = OpLoad %float %279
        %281 = OpFOrdLessThan %bool %280 %float_0
        %282 = OpLogicalNot %bool %281
               OpSelectionMerge %284 None
               OpBranchConditional %282 %283 %284
        %283 = OpLabel
        %285 = OpAccessChain %_ptr_Function_float %uv_2 %uint_0
        %286 = OpLoad %float %285
        %287 = OpFOrdGreaterThan %bool %286 %float_1
               OpBranch %284
        %284 = OpLabel
        %288 = OpPhi %bool %281 %248 %287 %283
        %289 = OpLogicalNot %bool %288
               OpSelectionMerge %291 None
               OpBranchConditional %289 %290 %291
        %290 = OpLabel
        %293 = OpAccessChain %_ptr_Function_float %uv_2 %uint_1
        %294 = OpLoad %float %293
        %295 = OpFOrdLessThan %bool %294 %float_0
               OpBranch %291
        %291 = OpLabel
        %296 = OpPhi %bool %288 %284 %295 %290
        %297 = OpLogicalNot %bool %296
               OpSelectionMerge %299 None
               OpBranchConditional %297 %298 %299
        %298 = OpLabel
        %300 = OpAccessChain %_ptr_Function_float %uv_2 %uint_1
        %301 = OpLoad %float %300
        %302 = OpFOrdGreaterThan %bool %301 %float_1
               OpBranch %299
        %299 = OpLabel
        %303 = OpPhi %bool %296 %291 %302 %298
               OpSelectionMerge %305 None
               OpBranchConditional %303 %304 %305
        %304 = OpLabel
               OpKill
        %305 = OpLabel
        %308 = OpLoad %v3float %normalHeightMapLod
        %310 = OpVectorTimesScalar %v3float %308 %float_2
        %311 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %312 = OpFSub %v3float %310 %311
        %313 = OpExtInst %v3float %1 Normalize %312
               OpStore %N %313
        %316 = OpLoad %v3float %inTangentLightPos
        %317 = OpLoad %v3float %inTangentFragPos
        %318 = OpFSub %v3float %316 %317
        %319 = OpExtInst %v3float %1 Normalize %318
               OpStore %L %319
        %321 = OpLoad %v3float %L
        %322 = OpFNegate %v3float %321
        %323 = OpLoad %v3float %N
        %324 = OpExtInst %v3float %1 Reflect %322 %323
               OpStore %R %324
        %326 = OpLoad %v3float %L
        %327 = OpLoad %v3float %V
        %328 = OpFAdd %v3float %326 %327
        %329 = OpExtInst %v3float %1 Normalize %328
               OpStore %H %329
        %332 = OpLoad %v3float %color
        %333 = OpVectorTimesScalar %v3float %332 %float_0_200000003
               OpStore %ambient %333
        %335 = OpLoad %v3float %L
        %336 = OpLoad %v3float %N
        %337 = OpDot %float %335 %336
        %338 = OpExtInst %float %1 FMax %337 %float_0
        %339 = OpLoad %v3float %color
        %340 = OpVectorTimesScalar %v3float %339 %338
               OpStore %diffuse %340
        %344 = OpLoad %v3float %N
        %345 = OpLoad %v3float %H
        %346 = OpDot %float %344 %345
        %347 = OpExtInst %float %1 FMax %346 %float_0
        %349 = OpExtInst %float %1 Pow %347 %float_32
        %350 = OpVectorTimesScalar %v3float %343 %349
               OpStore %specular %350
        %351 = OpLoad %v3float %ambient
        %352 = OpLoad %v3float %diffuse
        %353 = OpFAdd %v3float %351 %352
        %354 = OpLoad %v3float %specular
        %355 = OpFAdd %v3float %353 %354
        %356 = OpCompositeExtract %float %355 0
        %357 = OpCompositeExtract %float %355 1
        %358 = OpCompositeExtract %float %355 2
        %359 = OpCompositeConstruct %v4float %356 %357 %358 %float_1
               OpStore %outColor %359
               OpBranch %235
        %235 = OpLabel
               OpReturn
               OpFunctionEnd
%parallaxMapping_vf2_vf3_ = OpFunction %v2float None %11
         %uv = OpFunctionParameter %_ptr_Function_v2float
    %viewDir = OpFunctionParameter %_ptr_Function_v3float
         %15 = OpLabel
     %height = OpVariable %_ptr_Function_float Function
          %p = OpVariable %_ptr_Function_v2float Function
         %31 = OpLoad %28 %sNormalHeightMap
         %32 = OpLoad %v2float %uv
         %35 = OpImageSampleExplicitLod %v4float %31 %32 Lod %float_0
         %38 = OpCompositeExtract %float %35 3
         %39 = OpFSub %float %float_1 %38
               OpStore %height %39
         %41 = OpLoad %v3float %viewDir
         %42 = OpVectorShuffle %v2float %41 %41 0 1
         %43 = OpLoad %float %height
         %50 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %51 = OpLoad %float %50
         %53 = OpFMul %float %51 %float_0_5
         %54 = OpFMul %float %43 %53
         %56 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
         %57 = OpLoad %float %56
         %58 = OpFAdd %float %54 %57
         %59 = OpVectorTimesScalar %v2float %42 %58
         %61 = OpAccessChain %_ptr_Function_float %viewDir %uint_2
         %62 = OpLoad %float %61
         %63 = OpCompositeConstruct %v2float %62 %62
         %64 = OpFDiv %v2float %59 %63
               OpStore %p %64
         %65 = OpLoad %v2float %uv
         %66 = OpLoad %v2float %p
         %67 = OpFSub %v2float %65 %66
               OpReturnValue %67
               OpFunctionEnd
%steepParallaxMapping_vf2_vf3_ = OpFunction %v2float None %11
       %uv_0 = OpFunctionParameter %_ptr_Function_v2float
  %viewDir_0 = OpFunctionParameter %_ptr_Function_v3float
         %19 = OpLabel
 %layerDepth = OpVariable %_ptr_Function_float Function
%currLayerDepth = OpVariable %_ptr_Function_float Function
    %deltaUV = OpVariable %_ptr_Function_v2float Function
     %currUV = OpVariable %_ptr_Function_v2float Function
   %height_0 = OpVariable %_ptr_Function_float Function
          %i = OpVariable %_ptr_Function_int Function
         %72 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
         %73 = OpLoad %float %72
         %74 = OpFDiv %float %float_1 %73
               OpStore %layerDepth %74
               OpStore %currLayerDepth %float_0
         %77 = OpLoad %v3float %viewDir_0
         %78 = OpVectorShuffle %v2float %77 %77 0 1
         %79 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %80 = OpLoad %float %79
         %81 = OpVectorTimesScalar %v2float %78 %80
         %82 = OpAccessChain %_ptr_Function_float %viewDir_0 %uint_2
         %83 = OpLoad %float %82
         %84 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
         %85 = OpLoad %float %84
         %86 = OpFMul %float %83 %85
         %87 = OpCompositeConstruct %v2float %86 %86
         %88 = OpFDiv %v2float %81 %87
               OpStore %deltaUV %88
         %90 = OpLoad %v2float %uv_0
               OpStore %currUV %90
         %92 = OpLoad %28 %sNormalHeightMap
         %93 = OpLoad %v2float %currUV
         %94 = OpImageSampleExplicitLod %v4float %92 %93 Lod %float_0
         %95 = OpCompositeExtract %float %94 3
         %96 = OpFSub %float %float_1 %95
               OpStore %height_0 %96
               OpStore %i %int_0
               OpBranch %99
         %99 = OpLabel
               OpLoopMerge %101 %102 None
               OpBranch %103
        %103 = OpLabel
        %104 = OpLoad %int %i
        %105 = OpConvertSToF %float %104
        %106 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %107 = OpLoad %float %106
        %109 = OpFOrdLessThan %bool %105 %107
               OpBranchConditional %109 %100 %101
        %100 = OpLabel
        %110 = OpLoad %float %layerDepth
        %111 = OpLoad %float %currLayerDepth
        %112 = OpFAdd %float %111 %110
               OpStore %currLayerDepth %112
        %113 = OpLoad %v2float %deltaUV
        %114 = OpLoad %v2float %currUV
        %115 = OpFSub %v2float %114 %113
               OpStore %currUV %115
        %116 = OpLoad %28 %sNormalHeightMap
        %117 = OpLoad %v2float %currUV
        %118 = OpImageSampleExplicitLod %v4float %116 %117 Lod %float_0
        %119 = OpCompositeExtract %float %118 3
        %120 = OpFSub %float %float_1 %119
               OpStore %height_0 %120
        %121 = OpLoad %float %height_0
        %122 = OpLoad %float %currLayerDepth
        %123 = OpFOrdLessThan %bool %121 %122
               OpSelectionMerge %125 None
               OpBranchConditional %123 %124 %125
        %124 = OpLabel
               OpBranch %101
        %125 = OpLabel
               OpBranch %102
        %102 = OpLabel
        %127 = OpLoad %int %i
        %128 = OpIAdd %int %127 %int_1
               OpStore %i %128
               OpBranch %99
        %101 = OpLabel
        %129 = OpLoad %v2float %currUV
               OpReturnValue %129
               OpFunctionEnd
%parallaxOcclusionMapping_vf2_vf3_ = OpFunction %v2float None %11
       %uv_1 = OpFunctionParameter %_ptr_Function_v2float
  %viewDir_1 = OpFunctionParameter %_ptr_Function_v3float
         %23 = OpLabel
%layerDepth_0 = OpVariable %_ptr_Function_float Function
%currLayerDepth_0 = OpVariable %_ptr_Function_float Function
  %deltaUV_0 = OpVariable %_ptr_Function_v2float Function
   %currUV_0 = OpVariable %_ptr_Function_v2float Function
   %height_1 = OpVariable %_ptr_Function_float Function
        %i_0 = OpVariable %_ptr_Function_int Function
     %prevUV = OpVariable %_ptr_Function_v2float Function
  %nextDepth = OpVariable %_ptr_Function_float Function
  %prevDepth = OpVariable %_ptr_Function_float Function
        %133 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %134 = OpLoad %float %133
        %135 = OpFDiv %float %float_1 %134
               OpStore %layerDepth_0 %135
               OpStore %currLayerDepth_0 %float_0
        %138 = OpLoad %v3float %viewDir_1
        %139 = OpVectorShuffle %v2float %138 %138 0 1
        %140 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %141 = OpLoad %float %140
        %142 = OpVectorTimesScalar %v2float %139 %141
        %143 = OpAccessChain %_ptr_Function_float %viewDir_1 %uint_2
        %144 = OpLoad %float %143
        %145 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %146 = OpLoad %float %145
        %147 = OpFMul %float %144 %146
        %148 = OpCompositeConstruct %v2float %147 %147
        %149 = OpFDiv %v2float %142 %148
               OpStore %deltaUV_0 %149
        %151 = OpLoad %v2float %uv_1
               OpStore %currUV_0 %151
        %153 = OpLoad %28 %sNormalHeightMap
        %154 = OpLoad %v2float %currUV_0
        %155 = OpImageSampleExplicitLod %v4float %153 %154 Lod %float_0
        %156 = OpCompositeExtract %float %155 3
        %157 = OpFSub %float %float_1 %156
               OpStore %height_1 %157
               OpStore %i_0 %int_0
               OpBranch %159
        %159 = OpLabel
               OpLoopMerge %161 %162 None
               OpBranch %163
        %163 = OpLabel
        %164 = OpLoad %int %i_0
        %165 = OpConvertSToF %float %164
        %166 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %167 = OpLoad %float %166
        %168 = OpFOrdLessThan %bool %165 %167
               OpBranchConditional %168 %160 %161
        %160 = OpLabel
        %169 = OpLoad %float %layerDepth_0
        %170 = OpLoad %float %currLayerDepth_0
        %171 = OpFAdd %float %170 %169
               OpStore %currLayerDepth_0 %171
        %172 = OpLoad %v2float %deltaUV_0
        %173 = OpLoad %v2float %currUV_0
        %174 = OpFSub %v2float %173 %172
               OpStore %currUV_0 %174
        %175 = OpLoad %28 %sNormalHeightMap
        %176 = OpLoad %v2float %currUV_0
        %177 = OpImageSampleExplicitLod %v4float %175 %176 Lod %float_0
        %178 = OpCompositeExtract %float %177 3
        %179 = OpFSub %float %float_1 %178
               OpStore %height_1 %179
        %180 = OpLoad %float %height_1
        %181 = OpLoad %float %currLayerDepth_0
        %182 = OpFOrdLessThan %bool %180 %181
               OpSelectionMerge %184 None
               OpBranchConditional %182 %183 %184
        %183 = OpLabel
               OpBranch %161
        %184 = OpLabel
               OpBranch %162
        %162 = OpLabel
        %186 = OpLoad %int %i_0
        %187 = OpIAdd %int %186 %int_1
               OpStore %i_0 %187
               OpBranch %159
        %161 = OpLabel
        %189 = OpLoad %v2float %currUV_0
        %190 = OpLoad %v2float %deltaUV_0
        %191 = OpFAdd %v2float %189 %190
               OpStore %prevUV %191
        %193 = OpLoad %float %height_1
        %194 = OpLoad %float %currLayerDepth_0
        %195 = OpFSub %float %193 %194
               OpStore %nextDepth %195
        %197 = OpLoad %28 %sNormalHeightMap
        %198 = OpLoad %v2float %prevUV
        %199 = OpImageSampleExplicitLod %v4float %197 %198 Lod %float_0
        %200 = OpCompositeExtract %float %199 3
        %201 = OpFSub %float %float_1 %200
        %202 = OpLoad %float %currLayerDepth_0
        %203 = OpFSub %float %201 %202
        %204 = OpLoad %float %layerDepth_0
        %205 = OpFAdd %float %203 %204
               OpStore %prevDepth %205
        %206 = OpLoad %v2float %currUV_0
        %207 = OpLoad %v2float %prevUV
        %208 = OpLoad %float %nextDepth
        %209 = OpLoad %float %nextDepth
        %210 = OpLoad %float %prevDepth
        %211 = OpFSub %float %209 %210
        %212 = OpFDiv %float %208 %211
        %213 = OpCompositeConstruct %v2float %212 %212
        %214 = OpExtInst %v2float %1 FMix %206 %207 %213
               OpReturnValue %214
               OpFunctionEnd
