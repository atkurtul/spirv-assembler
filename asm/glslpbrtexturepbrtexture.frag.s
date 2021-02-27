; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 570
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inNormal %inTangent %inWorldPos %outColor
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
               OpName %calculateNormal_ "calculateNormal("
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
               OpName %albedoMap "albedoMap"
               OpName %inUV "inUV"
               OpName %tangentNormal "tangentNormal"
               OpName %normalMap "normalMap"
               OpName %N_0 "N"
               OpName %inNormal "inNormal"
               OpName %T "T"
               OpName %inTangent "inTangent"
               OpName %B_0 "B"
               OpName %TBN "TBN"
               OpName %N_1 "N"
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
               OpName %metallicMap "metallicMap"
               OpName %roughness_4 "roughness"
               OpName %roughnessMap "roughnessMap"
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
               OpName %aoMap "aoMap"
               OpName %color_0 "color"
               OpName %param_17 "param"
               OpName %param_18 "param"
               OpName %outColor "outColor"
               OpDecorate %prefilteredMap DescriptorSet 0
               OpDecorate %prefilteredMap Binding 4
               OpDecorate %albedoMap DescriptorSet 0
               OpDecorate %albedoMap Binding 5
               OpDecorate %inUV Location 2
               OpDecorate %normalMap DescriptorSet 0
               OpDecorate %normalMap Binding 6
               OpDecorate %inNormal Location 1
               OpDecorate %inTangent Location 3
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
               OpDecorate %metallicMap DescriptorSet 0
               OpDecorate %metallicMap Binding 8
               OpDecorate %roughnessMap DescriptorSet 0
               OpDecorate %roughnessMap Binding 9
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
               OpDecorate %aoMap DescriptorSet 0
               OpDecorate %aoMap Binding 7
               OpDecorate %outColor Location 0
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
         %50 = OpTypeFunction %v3float
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
        %197 = OpTypeImage %float Cube 0 0 0 1 Unknown
        %198 = OpTypeSampledImage %197
%_ptr_UniformConstant_198 = OpTypePointer UniformConstant %198
%prefilteredMap = OpVariable %_ptr_UniformConstant_198 UniformConstant
    %v4float = OpTypeVector %float 4
    %float_0 = OpConstant %float 0
        %244 = OpConstantComposite %v3float %float_1 %float_1 %float_1
        %246 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %bool = OpTypeBool
    %float_4 = OpConstant %float 4
%float_0_00100000005 = OpConstant %float 0.00100000005
        %294 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %295 = OpTypeSampledImage %294
%_ptr_UniformConstant_295 = OpTypePointer UniformConstant %295
  %albedoMap = OpVariable %_ptr_UniformConstant_295 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%float_2_20000005 = OpConstant %float 2.20000005
        %306 = OpConstantComposite %v3float %float_2_20000005 %float_2_20000005 %float_2_20000005
  %normalMap = OpVariable %_ptr_UniformConstant_295 UniformConstant
    %float_2 = OpConstant %float 2
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
%metallicMap = OpVariable %_ptr_UniformConstant_295 UniformConstant
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%roughnessMap = OpVariable %_ptr_UniformConstant_295 UniformConstant
%float_0_0399999991 = OpConstant %float 0.0399999991
        %408 = OpConstantComposite %v3float %float_0_0399999991 %float_0_0399999991 %float_0_0399999991
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %int_4 = OpConstant %int 4
     %uint_4 = OpConstant %uint 4
%_arr_v4float_uint_4 = OpTypeArray %v4float %uint_4
  %UBOParams = OpTypeStruct %_arr_v4float_uint_4 %float %float
%_ptr_Uniform_UBOParams = OpTypePointer Uniform %UBOParams
  %uboParams = OpVariable %_ptr_Uniform_UBOParams Uniform
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
      %int_1 = OpConstant %int 1
%_ptr_Function_v2float = OpTypePointer Function %v2float
%samplerBRDFLUT = OpVariable %_ptr_UniformConstant_295 UniformConstant
%samplerIrradiance = OpVariable %_ptr_UniformConstant_198 UniformConstant
     %uint_1 = OpConstant %uint 1
      %aoMap = OpVariable %_ptr_UniformConstant_295 UniformConstant
%_ptr_Uniform_float = OpTypePointer Uniform %float
%float_11_1999998 = OpConstant %float 11.1999998
        %550 = OpConstantComposite %v3float %float_11_1999998 %float_11_1999998 %float_11_1999998
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %N_1 = OpVariable %_ptr_Function_v3float Function
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
        %372 = OpFunctionCall %v3float %calculateNormal_
               OpStore %N_1 %372
        %381 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3
        %382 = OpLoad %v3float %381
        %384 = OpLoad %v3float %inWorldPos
        %385 = OpFSub %v3float %382 %384
        %386 = OpExtInst %v3float %1 Normalize %385
               OpStore %V_0 %386
        %388 = OpLoad %v3float %V_0
        %389 = OpFNegate %v3float %388
        %390 = OpLoad %v3float %N_1
        %391 = OpExtInst %v3float %1 Reflect %389 %390
               OpStore %R_0 %391
        %394 = OpLoad %295 %metallicMap
        %395 = OpLoad %v2float %inUV
        %396 = OpImageSampleImplicitLod %v4float %394 %395
        %399 = OpCompositeExtract %float %396 0
               OpStore %metallic_0 %399
        %402 = OpLoad %295 %roughnessMap
        %403 = OpLoad %v2float %inUV
        %404 = OpImageSampleImplicitLod %v4float %402 %403
        %405 = OpCompositeExtract %float %404 0
               OpStore %roughness_4 %405
               OpStore %F0_2 %408
        %409 = OpLoad %v3float %F0_2
        %410 = OpLoad %295 %albedoMap
        %411 = OpLoad %v2float %inUV
        %412 = OpImageSampleImplicitLod %v4float %410 %411
        %413 = OpVectorShuffle %v3float %412 %412 0 1 2
        %414 = OpExtInst %v3float %1 Pow %413 %306
        %415 = OpLoad %float %metallic_0
        %416 = OpCompositeConstruct %v3float %415 %415 %415
        %417 = OpExtInst %v3float %1 FMix %409 %414 %416
               OpStore %F0_2 %417
               OpStore %Lo %246
               OpStore %i %int_0
               OpBranch %422
        %422 = OpLabel
               OpLoopMerge %424 %425 None
               OpBranch %426
        %426 = OpLabel
        %427 = OpLoad %int %i
        %429 = OpSLessThan %bool %427 %int_4
               OpBranchConditional %429 %423 %424
        %423 = OpLabel
        %436 = OpLoad %int %i
        %438 = OpAccessChain %_ptr_Uniform_v4float %uboParams %int_0 %436
        %439 = OpLoad %v4float %438
        %440 = OpVectorShuffle %v3float %439 %439 0 1 2
        %441 = OpLoad %v3float %inWorldPos
        %442 = OpFSub %v3float %440 %441
        %443 = OpExtInst %v3float %1 Normalize %442
               OpStore %L_0 %443
        %445 = OpLoad %v3float %L_0
               OpStore %param_6 %445
        %447 = OpLoad %v3float %V_0
               OpStore %param_7 %447
        %449 = OpLoad %v3float %N_1
               OpStore %param_8 %449
        %451 = OpLoad %v3float %F0_2
               OpStore %param_9 %451
        %453 = OpLoad %float %metallic_0
               OpStore %param_10 %453
        %455 = OpLoad %float %roughness_4
               OpStore %param_11 %455
        %456 = OpFunctionCall %v3float %specularContribution_vf3_vf3_vf3_vf3_f1_f1_ %param_6 %param_7 %param_8 %param_9 %param_10 %param_11
        %457 = OpLoad %v3float %Lo
        %458 = OpFAdd %v3float %457 %456
               OpStore %Lo %458
               OpBranch %425
        %425 = OpLabel
        %459 = OpLoad %int %i
        %461 = OpIAdd %int %459 %int_1
               OpStore %i %461
               OpBranch %422
        %424 = OpLabel
        %465 = OpLoad %295 %samplerBRDFLUT
        %466 = OpLoad %v3float %N_1
        %467 = OpLoad %v3float %V_0
        %468 = OpDot %float %466 %467
        %469 = OpExtInst %float %1 FMax %468 %float_0
        %470 = OpLoad %float %roughness_4
        %471 = OpCompositeConstruct %v2float %469 %470
        %472 = OpImageSampleImplicitLod %v4float %465 %471
        %473 = OpVectorShuffle %v2float %472 %472 0 1
               OpStore %brdf %473
        %476 = OpLoad %v3float %R_0
               OpStore %param_12 %476
        %478 = OpLoad %float %roughness_4
               OpStore %param_13 %478
        %479 = OpFunctionCall %v3float %prefilteredReflection_vf3_f1_ %param_12 %param_13
               OpStore %reflection %479
        %482 = OpLoad %198 %samplerIrradiance
        %483 = OpLoad %v3float %N_1
        %484 = OpImageSampleImplicitLod %v4float %482 %483
        %485 = OpVectorShuffle %v3float %484 %484 0 1 2
               OpStore %irradiance %485
        %487 = OpLoad %v3float %irradiance
        %488 = OpLoad %295 %albedoMap
        %489 = OpLoad %v2float %inUV
        %490 = OpImageSampleImplicitLod %v4float %488 %489
        %491 = OpVectorShuffle %v3float %490 %490 0 1 2
        %492 = OpExtInst %v3float %1 Pow %491 %306
        %493 = OpFMul %v3float %487 %492
               OpStore %diffuse %493
        %495 = OpLoad %v3float %N_1
        %496 = OpLoad %v3float %V_0
        %497 = OpDot %float %495 %496
        %498 = OpExtInst %float %1 FMax %497 %float_0
               OpStore %param_14 %498
        %501 = OpLoad %v3float %F0_2
               OpStore %param_15 %501
        %503 = OpLoad %float %roughness_4
               OpStore %param_16 %503
        %504 = OpFunctionCall %v3float %F_SchlickR_f1_vf3_f1_ %param_14 %param_15 %param_16
               OpStore %F_1 %504
        %506 = OpLoad %v3float %reflection
        %507 = OpLoad %v3float %F_1
        %508 = OpAccessChain %_ptr_Function_float %brdf %uint_0
        %509 = OpLoad %float %508
        %510 = OpVectorTimesScalar %v3float %507 %509
        %512 = OpAccessChain %_ptr_Function_float %brdf %uint_1
        %513 = OpLoad %float %512
        %514 = OpCompositeConstruct %v3float %513 %513 %513
        %515 = OpFAdd %v3float %510 %514
        %516 = OpFMul %v3float %506 %515
               OpStore %specular %516
        %518 = OpLoad %v3float %F_1
        %519 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %520 = OpFSub %v3float %519 %518
               OpStore %kD_0 %520
        %521 = OpLoad %float %metallic_0
        %522 = OpFSub %float %float_1 %521
        %523 = OpLoad %v3float %kD_0
        %524 = OpVectorTimesScalar %v3float %523 %522
               OpStore %kD_0 %524
        %526 = OpLoad %v3float %kD_0
        %527 = OpLoad %v3float %diffuse
        %528 = OpFMul %v3float %526 %527
        %529 = OpLoad %v3float %specular
        %530 = OpFAdd %v3float %528 %529
        %532 = OpLoad %295 %aoMap
        %533 = OpLoad %v2float %inUV
        %534 = OpImageSampleImplicitLod %v4float %532 %533
        %535 = OpVectorShuffle %v3float %534 %534 0 0 0
        %536 = OpFMul %v3float %530 %535
               OpStore %ambient %536
        %538 = OpLoad %v3float %ambient
        %539 = OpLoad %v3float %Lo
        %540 = OpFAdd %v3float %538 %539
               OpStore %color_0 %540
        %541 = OpLoad %v3float %color_0
        %543 = OpAccessChain %_ptr_Uniform_float %uboParams %int_1
        %544 = OpLoad %float %543
        %545 = OpVectorTimesScalar %v3float %541 %544
               OpStore %param_17 %545
        %547 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param_17
               OpStore %color_0 %547
        %548 = OpLoad %v3float %color_0
               OpStore %param_18 %550
        %552 = OpFunctionCall %v3float %Uncharted2Tonemap_vf3_ %param_18
        %553 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %554 = OpFDiv %v3float %553 %552
        %555 = OpFMul %v3float %548 %554
               OpStore %color_0 %555
        %556 = OpLoad %v3float %color_0
        %558 = OpAccessChain %_ptr_Uniform_float %uboParams %int_2
        %559 = OpLoad %float %558
        %560 = OpFDiv %float %float_1 %559
        %561 = OpCompositeConstruct %v3float %560 %560 %560
        %562 = OpExtInst %v3float %1 Pow %556 %561
               OpStore %color_0 %562
        %565 = OpLoad %v3float %color_0
        %566 = OpCompositeExtract %float %565 0
        %567 = OpCompositeExtract %float %565 1
        %568 = OpCompositeExtract %float %565 2
        %569 = OpCompositeConstruct %v4float %566 %567 %568 %float_1
               OpStore %outColor %569
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
         %65 = OpLoad %v3float %x
         %66 = OpLoad %float %A
         %67 = OpLoad %v3float %x
         %68 = OpVectorTimesScalar %v3float %67 %66
         %69 = OpLoad %float %C
         %70 = OpLoad %float %B
         %71 = OpFMul %float %69 %70
         %72 = OpCompositeConstruct %v3float %71 %71 %71
         %73 = OpFAdd %v3float %68 %72
         %74 = OpFMul %v3float %65 %73
         %75 = OpLoad %float %D
         %76 = OpLoad %float %E
         %77 = OpFMul %float %75 %76
         %78 = OpCompositeConstruct %v3float %77 %77 %77
         %79 = OpFAdd %v3float %74 %78
         %80 = OpLoad %v3float %x
         %81 = OpLoad %float %A
         %82 = OpLoad %v3float %x
         %83 = OpVectorTimesScalar %v3float %82 %81
         %84 = OpLoad %float %B
         %85 = OpCompositeConstruct %v3float %84 %84 %84
         %86 = OpFAdd %v3float %83 %85
         %87 = OpFMul %v3float %80 %86
         %88 = OpLoad %float %D
         %89 = OpLoad %float %F
         %90 = OpFMul %float %88 %89
         %91 = OpCompositeConstruct %v3float %90 %90 %90
         %92 = OpFAdd %v3float %87 %91
         %93 = OpFDiv %v3float %79 %92
         %94 = OpLoad %float %E
         %95 = OpLoad %float %F
         %96 = OpFDiv %float %94 %95
         %97 = OpCompositeConstruct %v3float %96 %96 %96
         %98 = OpFSub %v3float %93 %97
               OpReturnValue %98
               OpFunctionEnd
%D_GGX_f1_f1_ = OpFunction %float None %14
      %dotNH = OpFunctionParameter %_ptr_Function_float
  %roughness = OpFunctionParameter %_ptr_Function_float
         %18 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
     %alpha2 = OpVariable %_ptr_Function_float Function
      %denom = OpVariable %_ptr_Function_float Function
        %102 = OpLoad %float %roughness
        %103 = OpLoad %float %roughness
        %104 = OpFMul %float %102 %103
               OpStore %alpha %104
        %106 = OpLoad %float %alpha
        %107 = OpLoad %float %alpha
        %108 = OpFMul %float %106 %107
               OpStore %alpha2 %108
        %110 = OpLoad %float %dotNH
        %111 = OpLoad %float %dotNH
        %112 = OpFMul %float %110 %111
        %113 = OpLoad %float %alpha2
        %115 = OpFSub %float %113 %float_1
        %116 = OpFMul %float %112 %115
        %117 = OpFAdd %float %116 %float_1
               OpStore %denom %117
        %118 = OpLoad %float %alpha2
        %120 = OpLoad %float %denom
        %121 = OpFMul %float %float_3_14159274 %120
        %122 = OpLoad %float %denom
        %123 = OpFMul %float %121 %122
        %124 = OpFDiv %float %118 %123
               OpReturnValue %124
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
        %128 = OpLoad %float %roughness_0
        %129 = OpFAdd %float %128 %float_1
               OpStore %r %129
        %131 = OpLoad %float %r
        %132 = OpLoad %float %r
        %133 = OpFMul %float %131 %132
        %135 = OpFDiv %float %133 %float_8
               OpStore %k %135
        %137 = OpLoad %float %dotNL
        %138 = OpLoad %float %dotNL
        %139 = OpLoad %float %k
        %140 = OpFSub %float %float_1 %139
        %141 = OpFMul %float %138 %140
        %142 = OpLoad %float %k
        %143 = OpFAdd %float %141 %142
        %144 = OpFDiv %float %137 %143
               OpStore %GL %144
        %146 = OpLoad %float %dotNV
        %147 = OpLoad %float %dotNV
        %148 = OpLoad %float %k
        %149 = OpFSub %float %float_1 %148
        %150 = OpFMul %float %147 %149
        %151 = OpLoad %float %k
        %152 = OpFAdd %float %150 %151
        %153 = OpFDiv %float %146 %152
               OpStore %GV %153
        %154 = OpLoad %float %GL
        %155 = OpLoad %float %GV
        %156 = OpFMul %float %154 %155
               OpReturnValue %156
               OpFunctionEnd
%F_Schlick_f1_vf3_ = OpFunction %v3float None %25
   %cosTheta = OpFunctionParameter %_ptr_Function_float
         %F0 = OpFunctionParameter %_ptr_Function_v3float
         %29 = OpLabel
        %159 = OpLoad %v3float %F0
        %160 = OpLoad %v3float %F0
        %161 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %162 = OpFSub %v3float %161 %160
        %163 = OpLoad %float %cosTheta
        %164 = OpFSub %float %float_1 %163
        %166 = OpExtInst %float %1 Pow %164 %float_5
        %167 = OpVectorTimesScalar %v3float %162 %166
        %168 = OpFAdd %v3float %159 %167
               OpReturnValue %168
               OpFunctionEnd
%F_SchlickR_f1_vf3_f1_ = OpFunction %v3float None %30
 %cosTheta_0 = OpFunctionParameter %_ptr_Function_float
       %F0_0 = OpFunctionParameter %_ptr_Function_v3float
%roughness_1 = OpFunctionParameter %_ptr_Function_float
         %35 = OpLabel
        %171 = OpLoad %v3float %F0_0
        %172 = OpLoad %float %roughness_1
        %173 = OpFSub %float %float_1 %172
        %174 = OpCompositeConstruct %v3float %173 %173 %173
        %175 = OpLoad %v3float %F0_0
        %176 = OpExtInst %v3float %1 FMax %174 %175
        %177 = OpLoad %v3float %F0_0
        %178 = OpFSub %v3float %176 %177
        %179 = OpLoad %float %cosTheta_0
        %180 = OpFSub %float %float_1 %179
        %181 = OpExtInst %float %1 Pow %180 %float_5
        %182 = OpVectorTimesScalar %v3float %178 %181
        %183 = OpFAdd %v3float %171 %182
               OpReturnValue %183
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
        %187 = OpLoad %float %roughness_2
        %189 = OpFMul %float %187 %float_9
               OpStore %lod %189
        %191 = OpLoad %float %lod
        %192 = OpExtInst %float %1 Floor %191
               OpStore %lodf %192
        %194 = OpLoad %float %lod
        %195 = OpExtInst %float %1 Ceil %194
               OpStore %lodc %195
        %201 = OpLoad %198 %prefilteredMap
        %202 = OpLoad %v3float %R
        %203 = OpLoad %float %lodf
        %205 = OpImageSampleExplicitLod %v4float %201 %202 Lod %203
        %206 = OpVectorShuffle %v3float %205 %205 0 1 2
               OpStore %a %206
        %208 = OpLoad %198 %prefilteredMap
        %209 = OpLoad %v3float %R
        %210 = OpLoad %float %lodc
        %211 = OpImageSampleExplicitLod %v4float %208 %209 Lod %210
        %212 = OpVectorShuffle %v3float %211 %211 0 1 2
               OpStore %b %212
        %213 = OpLoad %v3float %a
        %214 = OpLoad %v3float %b
        %215 = OpLoad %float %lod
        %216 = OpLoad %float %lodf
        %217 = OpFSub %float %215 %216
        %218 = OpCompositeConstruct %v3float %217 %217 %217
        %219 = OpExtInst %v3float %1 FMix %213 %214 %218
               OpReturnValue %219
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
        %223 = OpLoad %v3float %V
        %224 = OpLoad %v3float %L
        %225 = OpFAdd %v3float %223 %224
        %226 = OpExtInst %v3float %1 Normalize %225
               OpStore %H %226
        %228 = OpLoad %v3float %N
        %229 = OpLoad %v3float %H
        %230 = OpDot %float %228 %229
        %232 = OpExtInst %float %1 FClamp %230 %float_0 %float_1
               OpStore %dotNH_0 %232
        %234 = OpLoad %v3float %N
        %235 = OpLoad %v3float %V
        %236 = OpDot %float %234 %235
        %237 = OpExtInst %float %1 FClamp %236 %float_0 %float_1
               OpStore %dotNV_0 %237
        %239 = OpLoad %v3float %N
        %240 = OpLoad %v3float %L
        %241 = OpDot %float %239 %240
        %242 = OpExtInst %float %1 FClamp %241 %float_0 %float_1
               OpStore %dotNL_0 %242
               OpStore %lightColor %244
               OpStore %color %246
        %247 = OpLoad %float %dotNL_0
        %249 = OpFOrdGreaterThan %bool %247 %float_0
               OpSelectionMerge %251 None
               OpBranchConditional %249 %250 %251
        %250 = OpLabel
        %254 = OpLoad %float %dotNH_0
               OpStore %param %254
        %256 = OpLoad %float %roughness_3
               OpStore %param_0 %256
        %257 = OpFunctionCall %float %D_GGX_f1_f1_ %param %param_0
               OpStore %D_0 %257
        %260 = OpLoad %float %dotNL_0
               OpStore %param_1 %260
        %262 = OpLoad %float %dotNV_0
               OpStore %param_2 %262
        %264 = OpLoad %float %roughness_3
               OpStore %param_3 %264
        %265 = OpFunctionCall %float %G_SchlicksmithGGX_f1_f1_f1_ %param_1 %param_2 %param_3
               OpStore %G %265
        %268 = OpLoad %float %dotNV_0
               OpStore %param_4 %268
        %270 = OpLoad %v3float %F0_1
               OpStore %param_5 %270
        %271 = OpFunctionCall %v3float %F_Schlick_f1_vf3_ %param_4 %param_5
               OpStore %F_0 %271
        %273 = OpLoad %float %D_0
        %274 = OpLoad %v3float %F_0
        %275 = OpVectorTimesScalar %v3float %274 %273
        %276 = OpLoad %float %G
        %277 = OpVectorTimesScalar %v3float %275 %276
        %279 = OpLoad %float %dotNL_0
        %280 = OpFMul %float %float_4 %279
        %281 = OpLoad %float %dotNV_0
        %282 = OpFMul %float %280 %281
        %284 = OpFAdd %float %282 %float_0_00100000005
        %285 = OpCompositeConstruct %v3float %284 %284 %284
        %286 = OpFDiv %v3float %277 %285
               OpStore %spec %286
        %288 = OpLoad %v3float %F_0
        %289 = OpFSub %v3float %244 %288
        %290 = OpLoad %float %metallic
        %291 = OpFSub %float %float_1 %290
        %292 = OpVectorTimesScalar %v3float %289 %291
               OpStore %kD %292
        %293 = OpLoad %v3float %kD
        %298 = OpLoad %295 %albedoMap
        %302 = OpLoad %v2float %inUV
        %303 = OpImageSampleImplicitLod %v4float %298 %302
        %304 = OpVectorShuffle %v3float %303 %303 0 1 2
        %307 = OpExtInst %v3float %1 Pow %304 %306
        %308 = OpFMul %v3float %293 %307
        %309 = OpCompositeConstruct %v3float %float_3_14159274 %float_3_14159274 %float_3_14159274
        %310 = OpFDiv %v3float %308 %309
        %311 = OpLoad %v3float %spec
        %312 = OpFAdd %v3float %310 %311
        %313 = OpLoad %float %dotNL_0
        %314 = OpVectorTimesScalar %v3float %312 %313
        %315 = OpLoad %v3float %color
        %316 = OpFAdd %v3float %315 %314
               OpStore %color %316
               OpBranch %251
        %251 = OpLabel
        %317 = OpLoad %v3float %color
               OpReturnValue %317
               OpFunctionEnd
%calculateNormal_ = OpFunction %v3float None %50
         %52 = OpLabel
%tangentNormal = OpVariable %_ptr_Function_v3float Function
        %N_0 = OpVariable %_ptr_Function_v3float Function
          %T = OpVariable %_ptr_Function_v3float Function
        %B_0 = OpVariable %_ptr_Function_v3float Function
        %TBN = OpVariable %_ptr_Function_mat3v3float Function
        %322 = OpLoad %295 %normalMap
        %323 = OpLoad %v2float %inUV
        %324 = OpImageSampleImplicitLod %v4float %322 %323
        %325 = OpVectorShuffle %v3float %324 %324 0 1 2
        %327 = OpVectorTimesScalar %v3float %325 %float_2
        %328 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %329 = OpFSub %v3float %327 %328
               OpStore %tangentNormal %329
        %333 = OpLoad %v3float %inNormal
        %334 = OpExtInst %v3float %1 Normalize %333
               OpStore %N_0 %334
        %338 = OpLoad %v4float %inTangent
        %339 = OpVectorShuffle %v3float %338 %338 0 1 2
        %340 = OpExtInst %v3float %1 Normalize %339
               OpStore %T %340
        %342 = OpLoad %v3float %N_0
        %343 = OpLoad %v3float %T
        %344 = OpExtInst %v3float %1 Cross %342 %343
        %345 = OpExtInst %v3float %1 Normalize %344
               OpStore %B_0 %345
        %349 = OpLoad %v3float %T
        %350 = OpLoad %v3float %B_0
        %351 = OpLoad %v3float %N_0
        %352 = OpCompositeExtract %float %349 0
        %353 = OpCompositeExtract %float %349 1
        %354 = OpCompositeExtract %float %349 2
        %355 = OpCompositeExtract %float %350 0
        %356 = OpCompositeExtract %float %350 1
        %357 = OpCompositeExtract %float %350 2
        %358 = OpCompositeExtract %float %351 0
        %359 = OpCompositeExtract %float %351 1
        %360 = OpCompositeExtract %float %351 2
        %361 = OpCompositeConstruct %v3float %352 %353 %354
        %362 = OpCompositeConstruct %v3float %355 %356 %357
        %363 = OpCompositeConstruct %v3float %358 %359 %360
        %364 = OpCompositeConstruct %mat3v3float %361 %362 %363
               OpStore %TBN %364
        %365 = OpLoad %mat3v3float %TBN
        %366 = OpLoad %v3float %tangentNormal
        %367 = OpMatrixTimesVector %v3float %365 %366
        %368 = OpExtInst %v3float %1 Normalize %367
               OpReturnValue %368
               OpFunctionEnd
