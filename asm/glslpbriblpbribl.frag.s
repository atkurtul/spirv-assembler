; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 515
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inWorldPos %outColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %Uncharted2Tonemap_vf3_ "Uncharted2Tonemap(vf3;"
               OpName %x "x"
               OpName %D_GGX_f1_f1_ "D_GGX(f1;f1;"
               OpName %dotNH "dotNH"
               OpName %roughness "roughness"
               OpName %G_SchlicksmithGGX_f1_f1_f1_ "G_SchlicksmithGGX(f1;f1;f1;"
               OpName %dotNL "dotNL"
               OpName %dotNV "dotNV"
               OpName %roughness_0 "roughness"
               OpName %F_Schlick_f1_vf3_ "F_Schlick(f1;vf3;"
               OpName %cosTheta "cosTheta"
               OpName %F0 "F0"
               OpName %F_SchlickR_f1_vf3_f1_ "F_SchlickR(f1;vf3;f1;"
               OpName %cosTheta_0 "cosTheta"
               OpName %F0_0 "F0"
               OpName %roughness_1 "roughness"
               OpName %prefilteredReflection_vf3_f1_ "prefilteredReflection(vf3;f1;"
               OpName %R "R"
               OpName %roughness_2 "roughness"
               OpName %specularContribution_vf3_vf3_vf3_vf3_f1_f1_ "specularContribution(vf3;vf3;vf3;vf3;f1;f1;"
               OpName %L "L"
               OpName %V "V"
               OpName %N "N"
               OpName %F0_1 "F0"
               OpName %metallic "metallic"
               OpName %roughness_3 "roughness"
               OpName %A "A"
               OpName %B "B"
               OpName %C "C"
               OpName %D "D"
               OpName %E "E"
               OpName %F "F"
               OpName %alpha "alpha"
               OpName %alpha2 "alpha2"
               OpName %denom "denom"
               OpName %r "r"
               OpName %k "k"
               OpName %GL "GL"
               OpName %GV "GV"
               OpName %lod "lod"
               OpName %lodf "lodf"
               OpName %lodc "lodc"
               OpName %a "a"
               OpName %prefilteredMap "prefilteredMap"
               OpName %b "b"
               OpName %H "H"
               OpName %dotNH_0 "dotNH"
               OpName %dotNV_0 "dotNV"
               OpName %dotNL_0 "dotNL"
               OpName %lightColor "lightColor"
               OpName %color "color"
               OpName %D_0 "D"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %G "G"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %F_0 "F"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %spec "spec"
               OpName %kD "kD"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "roughness"
               OpMemberName %PushConsts 1 "metallic"
               OpMemberName %PushConsts 2 "specular"
               OpMemberName %PushConsts 3 "r"
               OpMemberName %PushConsts 4 "g"
               OpMemberName %PushConsts 5 "b"
               OpName %material "material"
               OpName %N_0 "N"
               OpName %inNormal "inNormal"
               OpName %V_0 "V"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "camPos"
               OpName %ubo "ubo"
               OpName %inWorldPos "inWorldPos"
               OpName %R_0 "R"
               OpName %metallic_0 "metallic"
               OpName %roughness_4 "roughness"
               OpName %F0_2 "F0"
               OpName %Lo "Lo"
               OpName %i "i"
               OpName %L_0 "L"
               OpName %UBOParams "UBOParams"
               OpMemberName %UBOParams 0 "lights"
               OpMemberName %UBOParams 1 "exposure"
               OpMemberName %UBOParams 2 "gamma"
               OpName %uboParams "uboParams"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpName %param_8 "param"
               OpName %param_9 "param"
               OpName %param_10 "param"
               OpName %param_11 "param"
               OpName %brdf "brdf"
               OpName %samplerBRDFLUT "samplerBRDFLUT"
               OpName %reflection "reflection"
               OpName %param_12 "param"
               OpName %param_13 "param"
               OpName %irradiance "irradiance"
               OpName %samplerIrradiance "samplerIrradiance"
               OpName %diffuse "diffuse"
               OpName %F_1 "F"
               OpName %param_14 "param"
               OpName %param_15 "param"
               OpName %param_16 "param"
               OpName %specular "specular"
               OpName %kD_0 "kD"
               OpName %ambient "ambient"
               OpName %color_0 "color"
               OpName %param_17 "param"
               OpName %param_18 "param"
               OpName %outColor "outColor"
               OpName %inUV "inUV"
               OpDecorate %prefilteredMap DescriptorSet 0
               OpDecorate %prefilteredMap Binding 4
               OpMemberDecorate %PushConsts 0 Offset 12
               OpMemberDecorate %PushConsts 1 Offset 16
               OpMemberDecorate %PushConsts 2 Offset 20
               OpMemberDecorate %PushConsts 3 Offset 24
               OpMemberDecorate %PushConsts 4 Offset 28
               OpMemberDecorate %PushConsts 5 Offset 32
               OpDecorate %PushConsts Block
               OpDecorate %inNormal Location 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inWorldPos Location 0
               OpDecorate %_arr_v4float_uint_4 ArrayStride 16
               OpMemberDecorate %UBOParams 0 Offset 0
               OpMemberDecorate %UBOParams 1 Offset 64
               OpMemberDecorate %UBOParams 2 Offset 68
               OpDecorate %UBOParams Block
               OpDecorate %uboParams DescriptorSet 0
               OpDecorate %uboParams Binding 1
               OpDecorate %samplerBRDFLUT DescriptorSet 0
               OpDecorate %samplerBRDFLUT Binding 3
               OpDecorate %samplerIrradiance DescriptorSet 0
               OpDecorate %samplerIrradiance Binding 2
               OpDecorate %outColor Location 0
               OpDecorate %inUV Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
          %9 = OpTypeFunction %v3float %_ptr_Function_v3float
%_ptr_Function_float = OpTypePointer Function %float
         %14 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float
         %19 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float %_ptr_Function_float
         %25 = OpTypeFunction %v3float %_ptr_Function_float %_ptr_Function_v3float
         %30 = OpTypeFunction %v3float %_ptr_Function_float %_ptr_Function_v3float %_ptr_Function_float
         %36 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_float
         %41 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_float %_ptr_Function_float
%float_0_150000006 = OpConstant %float 0.150000006
  %float_0_5 = OpConstant %float 0.5
%float_0_100000001 = OpConstant %float 0.100000001
%float_0_200000003 = OpConstant %float 0.200000003
%float_0_0199999996 = OpConstant %float 0.0199999996
%float_0_300000012 = OpConstant %float 0.300000012
    %float_1 = OpConstant %float 1
%float_3_14159274 = OpConstant %float 3.14159274
    %float_8 = OpConstant %float 8
    %float_5 = OpConstant %float 5
    %float_9 = OpConstant %float 9
        %194 = OpTypeImage %float Cube 0 0 0 1 Unknown
        %195 = OpTypeSampledImage %194
%_ptr_UniformConstant_195 = OpTypePointer UniformConstant %195
%prefilteredMap = OpVariable %_ptr_UniformConstant_195 UniformConstant
    %v4float = OpTypeVector %float 4
    %float_0 = OpConstant %float 0
        %241 = OpConstantComposite %v3float %float_1 %float_1 %float_1
        %243 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %bool = OpTypeBool
    %float_4 = OpConstant %float 4
%float_0_00100000005 = OpConstant %float 0.00100000005
 %PushConsts = OpTypeStruct %float %float %float %float %float %float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
   %material = OpVariable %_ptr_PushConstant_PushConsts PushConstant
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_PushConstant_float = OpTypePointer PushConstant %float
      %int_4 = OpConstant %int 4
      %int_5 = OpConstant %int 5
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
      %int_1 = OpConstant %int 1
      %int_0 = OpConstant %int 0
%float_0_0399999991 = OpConstant %float 0.0399999991
        %350 = OpConstantComposite %v3float %float_0_0399999991 %float_0_0399999991 %float_0_0399999991
%_ptr_Function_int = OpTypePointer Function %int
       %uint = OpTypeInt 32 0
     %uint_4 = OpConstant %uint 4
%_arr_v4float_uint_4 = OpTypeArray %v4float %uint_4
  %UBOParams = OpTypeStruct %_arr_v4float_uint_4 %float %float
%_ptr_Uniform_UBOParams = OpTypePointer Uniform %UBOParams
  %uboParams = OpVariable %_ptr_Uniform_UBOParams Uniform
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
        %407 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %408 = OpTypeSampledImage %407
%_ptr_UniformConstant_408 = OpTypePointer UniformConstant %408
%samplerBRDFLUT = OpVariable %_ptr_UniformConstant_408 UniformConstant
%samplerIrradiance = OpVariable %_ptr_UniformConstant_195 UniformConstant
     %uint_0 = OpConstant %uint 0
     %uint_1 = OpConstant %uint 1
%_ptr_Uniform_float = OpTypePointer Uniform %float
%float_11_1999998 = OpConstant %float 11.1999998
        %493 = OpConstantComposite %v3float %float_11_1999998 %float_11_1999998 %float_11_1999998
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %N_0 = OpVariable %_ptr_Function_v3float Function
        %V_0 = OpVariable %_ptr_Function_v3float Function
        %R_0 = OpVariable %_ptr_Function_v3float Function
 %metallic_0 = OpVariable %_ptr_Function_float Function
%roughness_4 = OpVariable %_ptr_Function_float Function
       %F0_2 = OpVariable %_ptr_Function_v3float Function
         %Lo = OpVariable %_ptr_Function_v3float Function
          %i = OpVariable %_ptr_Function_int Function
        %L_0 = OpVariable %_ptr_Function_v3float Function
    %param_6 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_v3float Function
    %param_8 = OpVariable %_ptr_Function_v3float Function
    %param_9 = OpVariable %_ptr_Function_v3float Function
   %param_10 = OpVariable %_ptr_Function_float Function
   %param_11 = OpVariable %_ptr_Function_float Function
       %brdf = OpVariable %_ptr_Function_v2float Function
 %reflection = OpVariable %_ptr_Function_v3float Function
   %param_12 = OpVariable %_ptr_Function_v3float Function
   %param_13 = OpVariable %_ptr_Function_float Function
 %irradiance = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
        %F_1 = OpVariable %_ptr_Function_v3float Function
   %param_14 = OpVariable %_ptr_Function_float Function
   %param_15 = OpVariable %_ptr_Function_v3float Function
   %param_16 = OpVariable %_ptr_Function_float Function
   %specular = OpVariable %_ptr_Function_v3float Function
       %kD_0 = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
    %color_0 = OpVariable %_ptr_Function_v3float Function
   %param_17 = OpVariable %_ptr_Function_v3float Function
   %param_18 = OpVariable %_ptr_Function_v3float Function
        %321 = OpLoad %v3float %inNormal
        %322 = OpExtInst %v3float %1 Normalize %321
               OpStore %N_0 %322
        %329 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3
        %330 = OpLoad %v3float %329
        %332 = OpLoad %v3float %inWorldPos
        %333 = OpFSub %v3float %330 %332
        %334 = OpExtInst %v3float %1 Normalize %333
               OpStore %V_0 %334
        %336 = OpLoad %v3float %V_0
        %337 = OpFNegate %v3float %336
        %338 = OpLoad %v3float %N_0
        %339 = OpExtInst %v3float %1 Reflect %337 %338
               OpStore %R_0 %339
        %342 = OpAccessChain %_ptr_PushConstant_float %material %int_1
        %343 = OpLoad %float %342
               OpStore %metallic_0 %343
        %346 = OpAccessChain %_ptr_PushConstant_float %material %int_0
        %347 = OpLoad %float %346
               OpStore %roughness_4 %347
               OpStore %F0_2 %350
        %351 = OpLoad %v3float %F0_2
        %352 = OpAccessChain %_ptr_PushConstant_float %material %int_3
        %353 = OpLoad %float %352
        %354 = OpAccessChain %_ptr_PushConstant_float %material %int_4
        %355 = OpLoad %float %354
        %356 = OpAccessChain %_ptr_PushConstant_float %material %int_5
        %357 = OpLoad %float %356
        %358 = OpCompositeConstruct %v3float %353 %355 %357
        %359 = OpLoad %float %metallic_0
        %360 = OpCompositeConstruct %v3float %359 %359 %359
        %361 = OpExtInst %v3float %1 FMix %351 %358 %360
               OpStore %F0_2 %361
               OpStore %Lo %243
               OpStore %i %int_0
               OpBranch %365
        %365 = OpLabel
               OpLoopMerge %367 %368 None
               OpBranch %369
        %369 = OpLabel
        %370 = OpLoad %int %i
        %371 = OpSLessThan %bool %370 %int_4
               OpBranchConditional %371 %366 %367
        %366 = OpLabel
        %379 = OpLoad %int %i
        %381 = OpAccessChain %_ptr_Uniform_v4float %uboParams %int_0 %379
        %382 = OpLoad %v4float %381
        %383 = OpVectorShuffle %v3float %382 %382 0 1 2
        %384 = OpLoad %v3float %inWorldPos
        %385 = OpFSub %v3float %383 %384
        %386 = OpExtInst %v3float %1 Normalize %385
               OpStore %L_0 %386
        %388 = OpLoad %v3float %L_0
               OpStore %param_6 %388
        %390 = OpLoad %v3float %V_0
               OpStore %param_7 %390
        %392 = OpLoad %v3float %N_0
               OpStore %param_8 %392
        %394 = OpLoad %v3float %F0_2
               OpStore %param_9 %394
        %396 = OpLoad %float %metallic_0
               OpStore %param_10 %396
        %398 = OpLoad %float %roughness_4
               OpStore %param_11 %398
        %399 = OpFunctionCall %v3float %specularContribution_vf3_vf3_vf3_vf3_f1_f1_ %param_6 %param_7 %param_8 %param_9 %param_10 %param_11
        %400 = OpLoad %v3float %Lo
        %401 = OpFAdd %v3float %400 %399
               OpStore %Lo %401
               OpBranch %368
        %368 = OpLabel
        %402 = OpLoad %int %i
        %403 = OpIAdd %int %402 %int_1
               OpStore %i %403
               OpBranch %365
        %367 = OpLabel
        %411 = OpLoad %408 %samplerBRDFLUT
        %412 = OpLoad %v3float %N_0
        %413 = OpLoad %v3float %V_0
        %414 = OpDot %float %412 %413
        %415 = OpExtInst %float %1 FMax %414 %float_0
        %416 = OpLoad %float %roughness_4
        %417 = OpCompositeConstruct %v2float %415 %416
        %418 = OpImageSampleImplicitLod %v4float %411 %417
        %419 = OpVectorShuffle %v2float %418 %418 0 1
               OpStore %brdf %419
        %422 = OpLoad %v3float %R_0
               OpStore %param_12 %422
        %424 = OpLoad %float %roughness_4
               OpStore %param_13 %424
        %425 = OpFunctionCall %v3float %prefilteredReflection_vf3_f1_ %param_12 %param_13
               OpStore %reflection %425
        %428 = OpLoad %195 %samplerIrradiance
        %429 = OpLoad %v3float %N_0
        %430 = OpImageSampleImplicitLod %v4float %428 %429
        %431 = OpVectorShuffle %v3float %430 %430 0 1 2
               OpStore %irradiance %431
        %433 = OpLoad %v3float %irradiance
        %434 = OpAccessChain %_ptr_PushConstant_float %material %int_3
        %435 = OpLoad %float %434
        %436 = OpAccessChain %_ptr_PushConstant_float %material %int_4
        %437 = OpLoad %float %436
        %438 = OpAccessChain %_ptr_PushConstant_float %material %int_5
        %439 = OpLoad %float %438
        %440 = OpCompositeConstruct %v3float %435 %437 %439
        %441 = OpFMul %v3float %433 %440
               OpStore %diffuse %441
        %443 = OpLoad %v3float %N_0
        %444 = OpLoad %v3float %V_0
        %445 = OpDot %float %443 %444
        %446 = OpExtInst %float %1 FMax %445 %float_0
               OpStore %param_14 %446
        %449 = OpLoad %v3float %F0_2
               OpStore %param_15 %449
        %451 = OpLoad %float %roughness_4
               OpStore %param_16 %451
        %452 = OpFunctionCall %v3float %F_SchlickR_f1_vf3_f1_ %param_14 %param_15 %param_16
               OpStore %F_1 %452
        %454 = OpLoad %v3float %reflection
        %455 = OpLoad %v3float %F_1
        %457 = OpAccessChain %_ptr_Function_float %brdf %uint_0
        %458 = OpLoad %float %457
        %459 = OpVectorTimesScalar %v3float %455 %458
        %461 = OpAccessChain %_ptr_Function_float %brdf %uint_1
        %462 = OpLoad %float %461
        %463 = OpCompositeConstruct %v3float %462 %462 %462
        %464 = OpFAdd %v3float %459 %463
        %465 = OpFMul %v3float %454 %464
               OpStore %specular %465
        %467 = OpLoad %v3float %F_1
        %468 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %469 = OpFSub %v3float %468 %467
               OpStore %kD_0 %469
        %470 = OpLoad %float %metallic_0
        %471 = OpFSub %float %float_1 %470
        %472 = OpLoad %v3float %kD_0
        %473 = OpVectorTimesScalar %v3float %472 %471
               OpStore %kD_0 %473
        %475 = OpLoad %v3float %kD_0
        %476 = OpLoad %v3float %diffuse
        %477 = OpFMul %v3float %475 %476
        %478 = OpLoad %v3float %specular
        %479 = OpFAdd %v3float %477 %478
               OpStore %ambient %479
        %481 = OpLoad %v3float %ambient
        %482 = OpLoad %v3float %Lo
        %483 = OpFAdd %v3float %481 %482
               OpStore %color_0 %483
        %484 = OpLoad %v3float %color_0
        %486 = OpAccessChain %_ptr_Uniform_float %uboParams %int_1
        %487 = OpLoad %float %486
        %488 = OpVectorTimesScalar %v3float %484 %487
               OpStore %param_17 %488
        %490 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param_17
               OpStore %color_0 %490
        %491 = OpLoad %v3float %color_0
               OpStore %param_18 %493
        %495 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param_18
        %496 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %497 = OpFDiv %v3float %496 %495
        %498 = OpFMul %v3float %491 %497
               OpStore %color_0 %498
        %499 = OpLoad %v3float %color_0
        %501 = OpAccessChain %_ptr_Uniform_float %uboParams %int_2
        %502 = OpLoad %float %501
        %503 = OpFDiv %float %float_1 %502
        %504 = OpCompositeConstruct %v3float %503 %503 %503
        %505 = OpExtInst %v3float %1 Pow %499 %504
               OpStore %color_0 %505
        %508 = OpLoad %v3float %color_0
        %509 = OpCompositeExtract %float %508 0
        %510 = OpCompositeExtract %float %508 1
        %511 = OpCompositeExtract %float %508 2
        %512 = OpCompositeConstruct %v4float %509 %510 %511 %float_1
               OpStore %outColor %512
               OpReturn
               OpFunctionEnd
%Uncharted2Tonemap_vf3_ = OpFunction %v3float None %9
          %x = OpFunctionParameter %_ptr_Function_v3float
         %12 = OpLabel
          %A = OpVariable %_ptr_Function_float Function
          %B = OpVariable %_ptr_Function_float Function
          %C = OpVariable %_ptr_Function_float Function
          %D = OpVariable %_ptr_Function_float Function
          %E = OpVariable %_ptr_Function_float Function
          %F = OpVariable %_ptr_Function_float Function
               OpStore %A %float_0_150000006
               OpStore %B %float_0_5
               OpStore %C %float_0_100000001
               OpStore %D %float_0_200000003
               OpStore %E %float_0_0199999996
               OpStore %F %float_0_300000012
         %62 = OpLoad %v3float %x
         %63 = OpLoad %float %A
         %64 = OpLoad %v3float %x
         %65 = OpVectorTimesScalar %v3float %64 %63
         %66 = OpLoad %float %C
         %67 = OpLoad %float %B
         %68 = OpFMul %float %66 %67
         %69 = OpCompositeConstruct %v3float %68 %68 %68
         %70 = OpFAdd %v3float %65 %69
         %71 = OpFMul %v3float %62 %70
         %72 = OpLoad %float %D
         %73 = OpLoad %float %E
         %74 = OpFMul %float %72 %73
         %75 = OpCompositeConstruct %v3float %74 %74 %74
         %76 = OpFAdd %v3float %71 %75
         %77 = OpLoad %v3float %x
         %78 = OpLoad %float %A
         %79 = OpLoad %v3float %x
         %80 = OpVectorTimesScalar %v3float %79 %78
         %81 = OpLoad %float %B
         %82 = OpCompositeConstruct %v3float %81 %81 %81
         %83 = OpFAdd %v3float %80 %82
         %84 = OpFMul %v3float %77 %83
         %85 = OpLoad %float %D
         %86 = OpLoad %float %F
         %87 = OpFMul %float %85 %86
         %88 = OpCompositeConstruct %v3float %87 %87 %87
         %89 = OpFAdd %v3float %84 %88
         %90 = OpFDiv %v3float %76 %89
         %91 = OpLoad %float %E
         %92 = OpLoad %float %F
         %93 = OpFDiv %float %91 %92
         %94 = OpCompositeConstruct %v3float %93 %93 %93
         %95 = OpFSub %v3float %90 %94
               OpReturnValue %95
               OpFunctionEnd
%D_GGX_f1_f1_ = OpFunction %float None %14
      %dotNH = OpFunctionParameter %_ptr_Function_float
  %roughness = OpFunctionParameter %_ptr_Function_float
         %18 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
     %alpha2 = OpVariable %_ptr_Function_float Function
      %denom = OpVariable %_ptr_Function_float Function
         %99 = OpLoad %float %roughness
        %100 = OpLoad %float %roughness
        %101 = OpFMul %float %99 %100
               OpStore %alpha %101
        %103 = OpLoad %float %alpha
        %104 = OpLoad %float %alpha
        %105 = OpFMul %float %103 %104
               OpStore %alpha2 %105
        %107 = OpLoad %float %dotNH
        %108 = OpLoad %float %dotNH
        %109 = OpFMul %float %107 %108
        %110 = OpLoad %float %alpha2
        %112 = OpFSub %float %110 %float_1
        %113 = OpFMul %float %109 %112
        %114 = OpFAdd %float %113 %float_1
               OpStore %denom %114
        %115 = OpLoad %float %alpha2
        %117 = OpLoad %float %denom
        %118 = OpFMul %float %float_3_14159274 %117
        %119 = OpLoad %float %denom
        %120 = OpFMul %float %118 %119
        %121 = OpFDiv %float %115 %120
               OpReturnValue %121
               OpFunctionEnd
%G_SchlicksmithGGX_f1_f1_f1_ = OpFunction %float None %19
      %dotNL = OpFunctionParameter %_ptr_Function_float
      %dotNV = OpFunctionParameter %_ptr_Function_float
%roughness_0 = OpFunctionParameter %_ptr_Function_float
         %24 = OpLabel
          %r = OpVariable %_ptr_Function_float Function
          %k = OpVariable %_ptr_Function_float Function
         %GL = OpVariable %_ptr_Function_float Function
         %GV = OpVariable %_ptr_Function_float Function
        %125 = OpLoad %float %roughness_0
        %126 = OpFAdd %float %125 %float_1
               OpStore %r %126
        %128 = OpLoad %float %r
        %129 = OpLoad %float %r
        %130 = OpFMul %float %128 %129
        %132 = OpFDiv %float %130 %float_8
               OpStore %k %132
        %134 = OpLoad %float %dotNL
        %135 = OpLoad %float %dotNL
        %136 = OpLoad %float %k
        %137 = OpFSub %float %float_1 %136
        %138 = OpFMul %float %135 %137
        %139 = OpLoad %float %k
        %140 = OpFAdd %float %138 %139
        %141 = OpFDiv %float %134 %140
               OpStore %GL %141
        %143 = OpLoad %float %dotNV
        %144 = OpLoad %float %dotNV
        %145 = OpLoad %float %k
        %146 = OpFSub %float %float_1 %145
        %147 = OpFMul %float %144 %146
        %148 = OpLoad %float %k
        %149 = OpFAdd %float %147 %148
        %150 = OpFDiv %float %143 %149
               OpStore %GV %150
        %151 = OpLoad %float %GL
        %152 = OpLoad %float %GV
        %153 = OpFMul %float %151 %152
               OpReturnValue %153
               OpFunctionEnd
%F_Schlick_f1_vf3_ = OpFunction %v3float None %25
   %cosTheta = OpFunctionParameter %_ptr_Function_float
         %F0 = OpFunctionParameter %_ptr_Function_v3float
         %29 = OpLabel
        %156 = OpLoad %v3float %F0
        %157 = OpLoad %v3float %F0
        %158 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %159 = OpFSub %v3float %158 %157
        %160 = OpLoad %float %cosTheta
        %161 = OpFSub %float %float_1 %160
        %163 = OpExtInst %float %1 Pow %161 %float_5
        %164 = OpVectorTimesScalar %v3float %159 %163
        %165 = OpFAdd %v3float %156 %164
               OpReturnValue %165
               OpFunctionEnd
%F_SchlickR_f1_vf3_f1_ = OpFunction %v3float None %30
 %cosTheta_0 = OpFunctionParameter %_ptr_Function_float
       %F0_0 = OpFunctionParameter %_ptr_Function_v3float
%roughness_1 = OpFunctionParameter %_ptr_Function_float
         %35 = OpLabel
        %168 = OpLoad %v3float %F0_0
        %169 = OpLoad %float %roughness_1
        %170 = OpFSub %float %float_1 %169
        %171 = OpCompositeConstruct %v3float %170 %170 %170
        %172 = OpLoad %v3float %F0_0
        %173 = OpExtInst %v3float %1 FMax %171 %172
        %174 = OpLoad %v3float %F0_0
        %175 = OpFSub %v3float %173 %174
        %176 = OpLoad %float %cosTheta_0
        %177 = OpFSub %float %float_1 %176
        %178 = OpExtInst %float %1 Pow %177 %float_5
        %179 = OpVectorTimesScalar %v3float %175 %178
        %180 = OpFAdd %v3float %168 %179
               OpReturnValue %180
               OpFunctionEnd
%prefilteredReflection_vf3_f1_ = OpFunction %v3float None %36
          %R = OpFunctionParameter %_ptr_Function_v3float
%roughness_2 = OpFunctionParameter %_ptr_Function_float
         %40 = OpLabel
        %lod = OpVariable %_ptr_Function_float Function
       %lodf = OpVariable %_ptr_Function_float Function
       %lodc = OpVariable %_ptr_Function_float Function
          %a = OpVariable %_ptr_Function_v3float Function
          %b = OpVariable %_ptr_Function_v3float Function
        %184 = OpLoad %float %roughness_2
        %186 = OpFMul %float %184 %float_9
               OpStore %lod %186
        %188 = OpLoad %float %lod
        %189 = OpExtInst %float %1 Floor %188
               OpStore %lodf %189
        %191 = OpLoad %float %lod
        %192 = OpExtInst %float %1 Ceil %191
               OpStore %lodc %192
        %198 = OpLoad %195 %prefilteredMap
        %199 = OpLoad %v3float %R
        %200 = OpLoad %float %lodf
        %202 = OpImageSampleExplicitLod %v4float %198 %199 Lod %200
        %203 = OpVectorShuffle %v3float %202 %202 0 1 2
               OpStore %a %203
        %205 = OpLoad %195 %prefilteredMap
        %206 = OpLoad %v3float %R
        %207 = OpLoad %float %lodc
        %208 = OpImageSampleExplicitLod %v4float %205 %206 Lod %207
        %209 = OpVectorShuffle %v3float %208 %208 0 1 2
               OpStore %b %209
        %210 = OpLoad %v3float %a
        %211 = OpLoad %v3float %b
        %212 = OpLoad %float %lod
        %213 = OpLoad %float %lodf
        %214 = OpFSub %float %212 %213
        %215 = OpCompositeConstruct %v3float %214 %214 %214
        %216 = OpExtInst %v3float %1 FMix %210 %211 %215
               OpReturnValue %216
               OpFunctionEnd
%specularContribution_vf3_vf3_vf3_vf3_f1_f1_ = OpFunction %v3float None %41
          %L = OpFunctionParameter %_ptr_Function_v3float
          %V = OpFunctionParameter %_ptr_Function_v3float
          %N = OpFunctionParameter %_ptr_Function_v3float
       %F0_1 = OpFunctionParameter %_ptr_Function_v3float
   %metallic = OpFunctionParameter %_ptr_Function_float
%roughness_3 = OpFunctionParameter %_ptr_Function_float
         %49 = OpLabel
          %H = OpVariable %_ptr_Function_v3float Function
    %dotNH_0 = OpVariable %_ptr_Function_float Function
    %dotNV_0 = OpVariable %_ptr_Function_float Function
    %dotNL_0 = OpVariable %_ptr_Function_float Function
 %lightColor = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v3float Function
        %D_0 = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_float Function
    %param_0 = OpVariable %_ptr_Function_float Function
          %G = OpVariable %_ptr_Function_float Function
    %param_1 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_float Function
    %param_3 = OpVariable %_ptr_Function_float Function
        %F_0 = OpVariable %_ptr_Function_v3float Function
    %param_4 = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_v3float Function
       %spec = OpVariable %_ptr_Function_v3float Function
         %kD = OpVariable %_ptr_Function_v3float Function
        %220 = OpLoad %v3float %V
        %221 = OpLoad %v3float %L
        %222 = OpFAdd %v3float %220 %221
        %223 = OpExtInst %v3float %1 Normalize %222
               OpStore %H %223
        %225 = OpLoad %v3float %N
        %226 = OpLoad %v3float %H
        %227 = OpDot %float %225 %226
        %229 = OpExtInst %float %1 FClamp %227 %float_0 %float_1
               OpStore %dotNH_0 %229
        %231 = OpLoad %v3float %N
        %232 = OpLoad %v3float %V
        %233 = OpDot %float %231 %232
        %234 = OpExtInst %float %1 FClamp %233 %float_0 %float_1
               OpStore %dotNV_0 %234
        %236 = OpLoad %v3float %N
        %237 = OpLoad %v3float %L
        %238 = OpDot %float %236 %237
        %239 = OpExtInst %float %1 FClamp %238 %float_0 %float_1
               OpStore %dotNL_0 %239
               OpStore %lightColor %241
               OpStore %color %243
        %244 = OpLoad %float %dotNL_0
        %246 = OpFOrdGreaterThan %bool %244 %float_0
               OpSelectionMerge %248 None
               OpBranchConditional %246 %247 %248
        %247 = OpLabel
        %251 = OpLoad %float %dotNH_0
               OpStore %param %251
        %253 = OpLoad %float %roughness_3
               OpStore %param_0 %253
        %254 = OpFunctionCall %float %D_GGX_f1_f1_ %param %param_0
               OpStore %D_0 %254
        %257 = OpLoad %float %dotNL_0
               OpStore %param_1 %257
        %259 = OpLoad %float %dotNV_0
               OpStore %param_2 %259
        %261 = OpLoad %float %roughness_3
               OpStore %param_3 %261
        %262 = OpFunctionCall %float %G_SchlicksmithGGX_f1_f1_f1_ %param_1 %param_2 %param_3
               OpStore %G %262
        %265 = OpLoad %float %dotNV_0
               OpStore %param_4 %265
        %267 = OpLoad %v3float %F0_1
               OpStore %param_5 %267
        %268 = OpFunctionCall %v3float %F_Schlick_f1_vf3_ %param_4 %param_5
               OpStore %F_0 %268
        %270 = OpLoad %float %D_0
        %271 = OpLoad %v3float %F_0
        %272 = OpVectorTimesScalar %v3float %271 %270
        %273 = OpLoad %float %G
        %274 = OpVectorTimesScalar %v3float %272 %273
        %276 = OpLoad %float %dotNL_0
        %277 = OpFMul %float %float_4 %276
        %278 = OpLoad %float %dotNV_0
        %279 = OpFMul %float %277 %278
        %281 = OpFAdd %float %279 %float_0_00100000005
        %282 = OpCompositeConstruct %v3float %281 %281 %281
        %283 = OpFDiv %v3float %274 %282
               OpStore %spec %283
        %285 = OpLoad %v3float %F_0
        %286 = OpFSub %v3float %241 %285
        %287 = OpLoad %float %metallic
        %288 = OpFSub %float %float_1 %287
        %289 = OpVectorTimesScalar %v3float %286 %288
               OpStore %kD %289
        %290 = OpLoad %v3float %kD
        %297 = OpAccessChain %_ptr_PushConstant_float %material %int_3
        %298 = OpLoad %float %297
        %300 = OpAccessChain %_ptr_PushConstant_float %material %int_4
        %301 = OpLoad %float %300
        %303 = OpAccessChain %_ptr_PushConstant_float %material %int_5
        %304 = OpLoad %float %303
        %305 = OpCompositeConstruct %v3float %298 %301 %304
        %306 = OpFMul %v3float %290 %305
        %307 = OpCompositeConstruct %v3float %float_3_14159274 %float_3_14159274 %float_3_14159274
        %308 = OpFDiv %v3float %306 %307
        %309 = OpLoad %v3float %spec
        %310 = OpFAdd %v3float %308 %309
        %311 = OpLoad %float %dotNL_0
        %312 = OpVectorTimesScalar %v3float %310 %311
        %313 = OpLoad %v3float %color
        %314 = OpFAdd %v3float %313 %312
               OpStore %color %314
               OpBranch %248
        %248 = OpLabel
        %315 = OpLoad %v3float %color
               OpReturnValue %315
               OpFunctionEnd
