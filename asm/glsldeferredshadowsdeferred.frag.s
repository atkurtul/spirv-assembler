; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 422
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
               OpName %textureProj_vf4_f1_vf2_ "textureProj(vf4;f1;vf2;"
               OpName %P "P"
               OpName %layer "layer"
               OpName %offset "offset"
               OpName %filterPCF_vf4_f1_ "filterPCF(vf4;f1;"
               OpName %sc "sc"
               OpName %layer_0 "layer"
               OpName %shadow_vf3_vf3_ "shadow(vf3;vf3;"
               OpName %fragcolor "fragcolor"
               OpName %fragpos "fragpos"
               OpName %shadow "shadow"
               OpName %shadowCoord "shadowCoord"
               OpName %dist "dist"
               OpName %samplerShadowMap "samplerShadowMap"
               OpName %texDim "texDim"
               OpName %scale "scale"
               OpName %dx "dx"
               OpName %dy "dy"
               OpName %shadowFactor "shadowFactor"
               OpName %count "count"
               OpName %range "range"
               OpName %x "x"
               OpName %y "y"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %i "i"
               OpName %shadowClip "shadowClip"
               OpName %Light "Light"
               OpMemberName %Light 0 "position"
               OpMemberName %Light 1 "target"
               OpMemberName %Light 2 "color"
               OpMemberName %Light 3 "viewMatrix"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "viewPos"
               OpMemberName %UBO 1 "lights"
               OpMemberName %UBO 2 "useShadows"
               OpMemberName %UBO 3 "debugDisplayTarget"
               OpName %ubo "ubo"
               OpName %shadowFactor_0 "shadowFactor"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %fragPos "fragPos"
               OpName %samplerposition "samplerposition"
               OpName %inUV "inUV"
               OpName %normal "normal"
               OpName %samplerNormal "samplerNormal"
               OpName %albedo "albedo"
               OpName %samplerAlbedo "samplerAlbedo"
               OpName %outFragColor "outFragColor"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %fragcolor_0 "fragcolor"
               OpName %N "N"
               OpName %i_0 "i"
               OpName %L "L"
               OpName %dist_0 "dist"
               OpName %V "V"
               OpName %lightCosInnerAngle "lightCosInnerAngle"
               OpName %lightCosOuterAngle "lightCosOuterAngle"
               OpName %lightRange "lightRange"
               OpName %dir "dir"
               OpName %cosDir "cosDir"
               OpName %spotEffect "spotEffect"
               OpName %heightAttenuation "heightAttenuation"
               OpName %NdotL "NdotL"
               OpName %diff "diff"
               OpName %R "R"
               OpName %NdotR "NdotR"
               OpName %spec "spec"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpDecorate %samplerShadowMap DescriptorSet 0
               OpDecorate %samplerShadowMap Binding 5
               OpMemberDecorate %Light 0 Offset 0
               OpMemberDecorate %Light 1 Offset 16
               OpMemberDecorate %Light 2 Offset 32
               OpMemberDecorate %Light 3 ColMajor
               OpMemberDecorate %Light 3 Offset 48
               OpMemberDecorate %Light 3 MatrixStride 16
               OpDecorate %_arr_Light_uint_3 ArrayStride 112
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 16
               OpMemberDecorate %UBO 2 Offset 352
               OpMemberDecorate %UBO 3 Offset 356
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 4
               OpDecorate %samplerposition DescriptorSet 0
               OpDecorate %samplerposition Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 2
               OpDecorate %samplerAlbedo DescriptorSet 0
               OpDecorate %samplerAlbedo Binding 3
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Function_float = OpTypePointer Function %float
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
         %12 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_float %_ptr_Function_v2float
         %18 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_float
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %25 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float
    %float_1 = OpConstant %float 1
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
     %uint_2 = OpConstant %uint 2
   %float_n1 = OpConstant %float -1
         %63 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %64 = OpTypeSampledImage %63
%_ptr_UniformConstant_64 = OpTypePointer UniformConstant %64
%samplerShadowMap = OpVariable %_ptr_UniformConstant_64 UniformConstant
     %uint_0 = OpConstant %uint 0
    %float_0 = OpConstant %float 0
 %float_0_25 = OpConstant %float 0.25
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
      %int_0 = OpConstant %int 0
      %v3int = OpTypeVector %int 3
  %float_1_5 = OpConstant %float 1.5
%_ptr_Function_int = OpTypePointer Function %int
     %uint_1 = OpConstant %uint 1
      %int_1 = OpConstant %int 1
      %int_3 = OpConstant %int 3
%mat4v4float = OpTypeMatrix %v4float 4
      %Light = OpTypeStruct %v4float %v4float %v4float %mat4v4float
%_arr_Light_uint_3 = OpTypeArray %Light %uint_3
        %UBO = OpTypeStruct %v4float %_arr_Light_uint_3 %int %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
        %221 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %222 = OpTypeSampledImage %221
%_ptr_UniformConstant_222 = OpTypePointer UniformConstant %222
%samplerposition = OpVariable %_ptr_UniformConstant_222 UniformConstant
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%samplerNormal = OpVariable %_ptr_UniformConstant_222 UniformConstant
%samplerAlbedo = OpVariable %_ptr_UniformConstant_222 UniformConstant
%_ptr_Uniform_int = OpTypePointer Uniform %int
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
        %258 = OpConstantComposite %v3float %float_1 %float_1 %float_1
%_ptr_Output_float = OpTypePointer Output %float
%float_0_100000001 = OpConstant %float 0.100000001
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%float_0_965925813 = OpConstant %float 0.965925813
%float_0_906307817 = OpConstant %float 0.906307817
  %float_100 = OpConstant %float 100
   %float_16 = OpConstant %float 16
  %float_2_5 = OpConstant %float 2.5
      %int_2 = OpConstant %int 2
       %main = OpFunction %void None %3
          %5 = OpLabel
    %fragPos = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
     %albedo = OpVariable %_ptr_Function_v4float Function
    %param_4 = OpVariable %_ptr_Function_v3float Function
    %param_5 = OpVariable %_ptr_Function_v3float Function
%fragcolor_0 = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
        %i_0 = OpVariable %_ptr_Function_int Function
          %L = OpVariable %_ptr_Function_v3float Function
     %dist_0 = OpVariable %_ptr_Function_float Function
          %V = OpVariable %_ptr_Function_v3float Function
%lightCosInnerAngle = OpVariable %_ptr_Function_float Function
%lightCosOuterAngle = OpVariable %_ptr_Function_float Function
 %lightRange = OpVariable %_ptr_Function_float Function
        %dir = OpVariable %_ptr_Function_v3float Function
     %cosDir = OpVariable %_ptr_Function_float Function
 %spotEffect = OpVariable %_ptr_Function_float Function
%heightAttenuation = OpVariable %_ptr_Function_float Function
      %NdotL = OpVariable %_ptr_Function_float Function
       %diff = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
      %NdotR = OpVariable %_ptr_Function_float Function
       %spec = OpVariable %_ptr_Function_v3float Function
    %param_6 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_v3float Function
        %225 = OpLoad %222 %samplerposition
        %228 = OpLoad %v2float %inUV
        %229 = OpImageSampleImplicitLod %v4float %225 %228
        %230 = OpVectorShuffle %v3float %229 %229 0 1 2
               OpStore %fragPos %230
        %233 = OpLoad %222 %samplerNormal
        %234 = OpLoad %v2float %inUV
        %235 = OpImageSampleImplicitLod %v4float %233 %234
        %236 = OpVectorShuffle %v3float %235 %235 0 1 2
               OpStore %normal %236
        %239 = OpLoad %222 %samplerAlbedo
        %240 = OpLoad %v2float %inUV
        %241 = OpImageSampleImplicitLod %v4float %239 %240
               OpStore %albedo %241
        %243 = OpAccessChain %_ptr_Uniform_int %ubo %int_3
        %244 = OpLoad %int %243
        %245 = OpSGreaterThan %bool %244 %int_0
               OpSelectionMerge %247 None
               OpBranchConditional %245 %246 %247
        %246 = OpLabel
        %248 = OpAccessChain %_ptr_Uniform_int %ubo %int_3
        %249 = OpLoad %int %248
               OpSelectionMerge %255 None
               OpSwitch %249 %255 1 %250 2 %251 3 %252 4 %253 5 %254
        %250 = OpLabel
               OpStore %param_4 %258
        %261 = OpLoad %v3float %fragPos
               OpStore %param_5 %261
        %262 = OpFunctionCall %v3float %shadow_vf3_vf3_ %param_4 %param_5
        %263 = OpLoad %v4float %outFragColor
        %264 = OpVectorShuffle %v4float %263 %262 4 5 6 3
               OpStore %outFragColor %264
               OpBranch %255
        %251 = OpLabel
        %266 = OpLoad %v3float %fragPos
        %267 = OpLoad %v4float %outFragColor
        %268 = OpVectorShuffle %v4float %267 %266 4 5 6 3
               OpStore %outFragColor %268
               OpBranch %255
        %252 = OpLabel
        %270 = OpLoad %v3float %normal
        %271 = OpLoad %v4float %outFragColor
        %272 = OpVectorShuffle %v4float %271 %270 4 5 6 3
               OpStore %outFragColor %272
               OpBranch %255
        %253 = OpLabel
        %274 = OpLoad %v4float %albedo
        %275 = OpVectorShuffle %v3float %274 %274 0 1 2
        %276 = OpLoad %v4float %outFragColor
        %277 = OpVectorShuffle %v4float %276 %275 4 5 6 3
               OpStore %outFragColor %277
               OpBranch %255
        %254 = OpLabel
        %279 = OpLoad %v4float %albedo
        %280 = OpVectorShuffle %v3float %279 %279 3 3 3
        %281 = OpLoad %v4float %outFragColor
        %282 = OpVectorShuffle %v4float %281 %280 4 5 6 3
               OpStore %outFragColor %282
               OpBranch %255
        %255 = OpLabel
        %286 = OpAccessChain %_ptr_Output_float %outFragColor %uint_3
               OpStore %286 %float_1
               OpReturn
        %247 = OpLabel
        %289 = OpLoad %v4float %albedo
        %290 = OpVectorShuffle %v3float %289 %289 0 1 2
        %292 = OpVectorTimesScalar %v3float %290 %float_0_100000001
               OpStore %fragcolor_0 %292
        %294 = OpLoad %v3float %normal
        %295 = OpExtInst %v3float %1 Normalize %294
               OpStore %N %295
               OpStore %i_0 %int_0
               OpBranch %297
        %297 = OpLabel
               OpLoopMerge %299 %300 None
               OpBranch %301
        %301 = OpLabel
        %302 = OpLoad %int %i_0
        %303 = OpSLessThan %bool %302 %int_3
               OpBranchConditional %303 %298 %299
        %298 = OpLabel
        %305 = OpLoad %int %i_0
        %307 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %305 %int_0
        %308 = OpLoad %v4float %307
        %309 = OpVectorShuffle %v3float %308 %308 0 1 2
        %310 = OpLoad %v3float %fragPos
        %311 = OpFSub %v3float %309 %310
               OpStore %L %311
        %313 = OpLoad %v3float %L
        %314 = OpExtInst %float %1 Length %313
               OpStore %dist_0 %314
        %315 = OpLoad %v3float %L
        %316 = OpExtInst %v3float %1 Normalize %315
               OpStore %L %316
        %318 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_0
        %319 = OpLoad %v4float %318
        %320 = OpVectorShuffle %v3float %319 %319 0 1 2
        %321 = OpLoad %v3float %fragPos
        %322 = OpFSub %v3float %320 %321
               OpStore %V %322
        %323 = OpLoad %v3float %V
        %324 = OpExtInst %v3float %1 Normalize %323
               OpStore %V %324
               OpStore %lightCosInnerAngle %float_0_965925813
               OpStore %lightCosOuterAngle %float_0_906307817
               OpStore %lightRange %float_100
        %332 = OpLoad %int %i_0
        %333 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %332 %int_0
        %334 = OpLoad %v4float %333
        %335 = OpVectorShuffle %v3float %334 %334 0 1 2
        %336 = OpLoad %int %i_0
        %337 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %336 %int_1
        %338 = OpLoad %v4float %337
        %339 = OpVectorShuffle %v3float %338 %338 0 1 2
        %340 = OpFSub %v3float %335 %339
        %341 = OpExtInst %v3float %1 Normalize %340
               OpStore %dir %341
        %343 = OpLoad %v3float %L
        %344 = OpLoad %v3float %dir
        %345 = OpDot %float %343 %344
               OpStore %cosDir %345
        %347 = OpLoad %float %lightCosOuterAngle
        %348 = OpLoad %float %lightCosInnerAngle
        %349 = OpLoad %float %cosDir
        %350 = OpExtInst %float %1 SmoothStep %347 %348 %349
               OpStore %spotEffect %350
        %352 = OpLoad %float %lightRange
        %353 = OpLoad %float %dist_0
        %354 = OpExtInst %float %1 SmoothStep %352 %float_0 %353
               OpStore %heightAttenuation %354
        %356 = OpLoad %v3float %N
        %357 = OpLoad %v3float %L
        %358 = OpDot %float %356 %357
        %359 = OpExtInst %float %1 FMax %float_0 %358
               OpStore %NdotL %359
        %361 = OpLoad %float %NdotL
        %362 = OpCompositeConstruct %v3float %361 %361 %361
               OpStore %diff %362
        %364 = OpLoad %v3float %L
        %365 = OpFNegate %v3float %364
        %366 = OpLoad %v3float %N
        %367 = OpExtInst %v3float %1 Reflect %365 %366
               OpStore %R %367
        %369 = OpLoad %v3float %R
        %370 = OpLoad %v3float %V
        %371 = OpDot %float %369 %370
        %372 = OpExtInst %float %1 FMax %float_0 %371
               OpStore %NdotR %372
        %374 = OpLoad %float %NdotR
        %376 = OpExtInst %float %1 Pow %374 %float_16
        %377 = OpAccessChain %_ptr_Function_float %albedo %uint_3
        %378 = OpLoad %float %377
        %379 = OpFMul %float %376 %378
        %381 = OpFMul %float %379 %float_2_5
        %382 = OpCompositeConstruct %v3float %381 %381 %381
               OpStore %spec %382
        %383 = OpLoad %v3float %diff
        %384 = OpLoad %v3float %spec
        %385 = OpFAdd %v3float %383 %384
        %386 = OpLoad %float %spotEffect
        %387 = OpVectorTimesScalar %v3float %385 %386
        %388 = OpLoad %float %heightAttenuation
        %389 = OpVectorTimesScalar %v3float %387 %388
        %390 = OpCompositeExtract %float %389 0
        %391 = OpCompositeExtract %float %389 1
        %392 = OpCompositeExtract %float %389 2
        %393 = OpCompositeConstruct %v3float %390 %391 %392
        %394 = OpLoad %int %i_0
        %396 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %394 %int_2
        %397 = OpLoad %v4float %396
        %398 = OpVectorShuffle %v3float %397 %397 0 1 2
        %399 = OpFMul %v3float %393 %398
        %400 = OpLoad %v4float %albedo
        %401 = OpVectorShuffle %v3float %400 %400 0 1 2
        %402 = OpFMul %v3float %399 %401
        %403 = OpLoad %v3float %fragcolor_0
        %404 = OpFAdd %v3float %403 %402
               OpStore %fragcolor_0 %404
               OpBranch %300
        %300 = OpLabel
        %405 = OpLoad %int %i_0
        %406 = OpIAdd %int %405 %int_1
               OpStore %i_0 %406
               OpBranch %297
        %299 = OpLabel
        %407 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
        %408 = OpLoad %int %407
        %409 = OpSGreaterThan %bool %408 %int_0
               OpSelectionMerge %411 None
               OpBranchConditional %409 %410 %411
        %410 = OpLabel
        %413 = OpLoad %v3float %fragcolor_0
               OpStore %param_6 %413
        %415 = OpLoad %v3float %fragPos
               OpStore %param_7 %415
        %416 = OpFunctionCall %v3float %shadow_vf3_vf3_ %param_6 %param_7
               OpStore %fragcolor_0 %416
               OpBranch %411
        %411 = OpLabel
        %417 = OpLoad %v3float %fragcolor_0
        %418 = OpCompositeExtract %float %417 0
        %419 = OpCompositeExtract %float %417 1
        %420 = OpCompositeExtract %float %417 2
        %421 = OpCompositeConstruct %v4float %418 %419 %420 %float_1
               OpStore %outFragColor %421
               OpReturn
               OpFunctionEnd
%textureProj_vf4_f1_vf2_ = OpFunction %float None %12
          %P = OpFunctionParameter %_ptr_Function_v4float
      %layer = OpFunctionParameter %_ptr_Function_float
     %offset = OpFunctionParameter %_ptr_Function_v2float
         %17 = OpLabel
     %shadow = OpVariable %_ptr_Function_float Function
%shadowCoord = OpVariable %_ptr_Function_v4float Function
       %dist = OpVariable %_ptr_Function_float Function
               OpStore %shadow %float_1
         %33 = OpLoad %v4float %P
         %36 = OpAccessChain %_ptr_Function_float %P %uint_3
         %37 = OpLoad %float %36
         %38 = OpCompositeConstruct %v4float %37 %37 %37 %37
         %39 = OpFDiv %v4float %33 %38
               OpStore %shadowCoord %39
         %40 = OpLoad %v4float %shadowCoord
         %41 = OpVectorShuffle %v2float %40 %40 0 1
         %43 = OpVectorTimesScalar %v2float %41 %float_0_5
         %44 = OpCompositeConstruct %v2float %float_0_5 %float_0_5
         %45 = OpFAdd %v2float %43 %44
         %46 = OpLoad %v4float %shadowCoord
         %47 = OpVectorShuffle %v4float %46 %45 4 5 2 3
               OpStore %shadowCoord %47
         %50 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %51 = OpLoad %float %50
         %53 = OpFOrdGreaterThan %bool %51 %float_n1
               OpSelectionMerge %55 None
               OpBranchConditional %53 %54 %55
         %54 = OpLabel
         %56 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %57 = OpLoad %float %56
         %58 = OpFOrdLessThan %bool %57 %float_1
               OpBranch %55
         %55 = OpLabel
         %59 = OpPhi %bool %53 %17 %58 %54
               OpSelectionMerge %61 None
               OpBranchConditional %59 %60 %61
         %60 = OpLabel
         %67 = OpLoad %64 %samplerShadowMap
         %68 = OpLoad %v4float %shadowCoord
         %69 = OpVectorShuffle %v2float %68 %68 0 1
         %70 = OpLoad %v2float %offset
         %71 = OpFAdd %v2float %69 %70
         %72 = OpLoad %float %layer
         %73 = OpCompositeExtract %float %71 0
         %74 = OpCompositeExtract %float %71 1
         %75 = OpCompositeConstruct %v3float %73 %74 %72
         %76 = OpImageSampleImplicitLod %v4float %67 %75
         %78 = OpCompositeExtract %float %76 0
               OpStore %dist %78
         %79 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_3
         %80 = OpLoad %float %79
         %82 = OpFOrdGreaterThan %bool %80 %float_0
               OpSelectionMerge %84 None
               OpBranchConditional %82 %83 %84
         %83 = OpLabel
         %85 = OpLoad %float %dist
         %86 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %87 = OpLoad %float %86
         %88 = OpFOrdLessThan %bool %85 %87
               OpBranch %84
         %84 = OpLabel
         %89 = OpPhi %bool %82 %60 %88 %83
               OpSelectionMerge %91 None
               OpBranchConditional %89 %90 %91
         %90 = OpLabel
               OpStore %shadow %float_0_25
               OpBranch %91
         %91 = OpLabel
               OpBranch %61
         %61 = OpLabel
         %93 = OpLoad %float %shadow
               OpReturnValue %93
               OpFunctionEnd
%filterPCF_vf4_f1_ = OpFunction %float None %18
         %sc = OpFunctionParameter %_ptr_Function_v4float
    %layer_0 = OpFunctionParameter %_ptr_Function_float
         %22 = OpLabel
     %texDim = OpVariable %_ptr_Function_v2int Function
      %scale = OpVariable %_ptr_Function_float Function
         %dx = OpVariable %_ptr_Function_float Function
         %dy = OpVariable %_ptr_Function_float Function
%shadowFactor = OpVariable %_ptr_Function_float Function
      %count = OpVariable %_ptr_Function_int Function
      %range = OpVariable %_ptr_Function_int Function
          %x = OpVariable %_ptr_Function_int Function
          %y = OpVariable %_ptr_Function_int Function
      %param = OpVariable %_ptr_Function_v4float Function
    %param_0 = OpVariable %_ptr_Function_float Function
    %param_1 = OpVariable %_ptr_Function_v2float Function
        %100 = OpLoad %64 %samplerShadowMap
        %102 = OpImage %63 %100
        %104 = OpImageQuerySizeLod %v3int %102 %int_0
        %105 = OpVectorShuffle %v2int %104 %104 0 1
               OpStore %texDim %105
               OpStore %scale %float_1_5
        %109 = OpLoad %float %scale
        %110 = OpFMul %float %109 %float_1
        %112 = OpAccessChain %_ptr_Function_int %texDim %uint_0
        %113 = OpLoad %int %112
        %114 = OpConvertSToF %float %113
        %115 = OpFDiv %float %110 %114
               OpStore %dx %115
        %117 = OpLoad %float %scale
        %118 = OpFMul %float %117 %float_1
        %120 = OpAccessChain %_ptr_Function_int %texDim %uint_1
        %121 = OpLoad %int %120
        %122 = OpConvertSToF %float %121
        %123 = OpFDiv %float %118 %122
               OpStore %dy %123
               OpStore %shadowFactor %float_0
               OpStore %count %int_0
               OpStore %range %int_1
        %129 = OpLoad %int %range
        %130 = OpSNegate %int %129
               OpStore %x %130
               OpBranch %131
        %131 = OpLabel
               OpLoopMerge %133 %134 None
               OpBranch %135
        %135 = OpLabel
        %136 = OpLoad %int %x
        %137 = OpLoad %int %range
        %138 = OpSLessThanEqual %bool %136 %137
               OpBranchConditional %138 %132 %133
        %132 = OpLabel
        %140 = OpLoad %int %range
        %141 = OpSNegate %int %140
               OpStore %y %141
               OpBranch %142
        %142 = OpLabel
               OpLoopMerge %144 %145 None
               OpBranch %146
        %146 = OpLabel
        %147 = OpLoad %int %y
        %148 = OpLoad %int %range
        %149 = OpSLessThanEqual %bool %147 %148
               OpBranchConditional %149 %143 %144
        %143 = OpLabel
        %150 = OpLoad %float %dx
        %151 = OpLoad %int %x
        %152 = OpConvertSToF %float %151
        %153 = OpFMul %float %150 %152
        %154 = OpLoad %float %dy
        %155 = OpLoad %int %y
        %156 = OpConvertSToF %float %155
        %157 = OpFMul %float %154 %156
        %158 = OpCompositeConstruct %v2float %153 %157
        %160 = OpLoad %v4float %sc
               OpStore %param %160
        %162 = OpLoad %float %layer_0
               OpStore %param_0 %162
               OpStore %param_1 %158
        %164 = OpFunctionCall %float %textureProj_vf4_f1_vf2_ %param %param_0 %param_1
        %165 = OpLoad %float %shadowFactor
        %166 = OpFAdd %float %165 %164
               OpStore %shadowFactor %166
        %167 = OpLoad %int %count
        %168 = OpIAdd %int %167 %int_1
               OpStore %count %168
               OpBranch %145
        %145 = OpLabel
        %169 = OpLoad %int %y
        %170 = OpIAdd %int %169 %int_1
               OpStore %y %170
               OpBranch %142
        %144 = OpLabel
               OpBranch %134
        %134 = OpLabel
        %171 = OpLoad %int %x
        %172 = OpIAdd %int %171 %int_1
               OpStore %x %172
               OpBranch %131
        %133 = OpLabel
        %173 = OpLoad %float %shadowFactor
        %174 = OpLoad %int %count
        %175 = OpConvertSToF %float %174
        %176 = OpFDiv %float %173 %175
               OpReturnValue %176
               OpFunctionEnd
%shadow_vf3_vf3_ = OpFunction %v3float None %25
  %fragcolor = OpFunctionParameter %_ptr_Function_v3float
    %fragpos = OpFunctionParameter %_ptr_Function_v3float
         %29 = OpLabel
          %i = OpVariable %_ptr_Function_int Function
 %shadowClip = OpVariable %_ptr_Function_v4float Function
%shadowFactor_0 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_v4float Function
    %param_3 = OpVariable %_ptr_Function_float Function
               OpStore %i %int_0
               OpBranch %180
        %180 = OpLabel
               OpLoopMerge %182 %183 None
               OpBranch %184
        %184 = OpLabel
        %185 = OpLoad %int %i
        %187 = OpSLessThan %bool %185 %int_3
               OpBranchConditional %187 %181 %182
        %181 = OpLabel
        %195 = OpLoad %int %i
        %197 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %195 %int_3
        %198 = OpLoad %mat4v4float %197
        %199 = OpLoad %v3float %fragpos
        %200 = OpCompositeExtract %float %199 0
        %201 = OpCompositeExtract %float %199 1
        %202 = OpCompositeExtract %float %199 2
        %203 = OpCompositeConstruct %v4float %200 %201 %202 %float_1
        %204 = OpMatrixTimesVector %v4float %198 %203
               OpStore %shadowClip %204
        %206 = OpLoad %int %i
        %207 = OpConvertSToF %float %206
        %209 = OpLoad %v4float %shadowClip
               OpStore %param_2 %209
               OpStore %param_3 %207
        %211 = OpFunctionCall %float %filterPCF_vf4_f1_ %param_2 %param_3
               OpStore %shadowFactor_0 %211
        %212 = OpLoad %float %shadowFactor_0
        %213 = OpLoad %v3float %fragcolor
        %214 = OpVectorTimesScalar %v3float %213 %212
               OpStore %fragcolor %214
               OpBranch %183
        %183 = OpLabel
        %215 = OpLoad %int %i
        %216 = OpIAdd %int %215 %int_1
               OpStore %i %216
               OpBranch %180
        %182 = OpLabel
        %217 = OpLoad %v3float %fragcolor
               OpReturnValue %217
               OpFunctionEnd
