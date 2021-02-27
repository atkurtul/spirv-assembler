; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 662
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID
               OpExecutionMode %main LocalSize 16 16 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %reflectRay_vf3_vf3_ "reflectRay(vf3;vf3;"
               OpName %rayD "rayD"
               OpName %mormal "mormal"
               OpName %lightDiffuse_vf3_vf3_ "lightDiffuse(vf3;vf3;"
               OpName %normal "normal"
               OpName %lightDir "lightDir"
               OpName %lightSpecular_vf3_vf3_f1_ "lightSpecular(vf3;vf3;f1;"
               OpName %normal_0 "normal"
               OpName %lightDir_0 "lightDir"
               OpName %specularFactor "specularFactor"
               OpName %Sphere "Sphere"
               OpMemberName %Sphere 0 "pos"
               OpMemberName %Sphere 1 "radius"
               OpMemberName %Sphere 2 "diffuse"
               OpMemberName %Sphere 3 "specular"
               OpMemberName %Sphere 4 "id"
               OpName %sphereIntersect_vf3_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ "sphereIntersect(vf3;vf3;struct-Sphere-vf3-f1-vf3-f1-i11;"
               OpName %rayO "rayO"
               OpName %rayD_0 "rayD"
               OpName %sphere "sphere"
               OpName %sphereNormal_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ "sphereNormal(vf3;struct-Sphere-vf3-f1-vf3-f1-i11;"
               OpName %pos "pos"
               OpName %sphere_0 "sphere"
               OpName %Plane "Plane"
               OpMemberName %Plane 0 "normal"
               OpMemberName %Plane 1 "distance"
               OpMemberName %Plane 2 "diffuse"
               OpMemberName %Plane 3 "specular"
               OpMemberName %Plane 4 "id"
               OpName %planeIntersect_vf3_vf3_struct_Plane_vf3_f1_vf3_f1_i11_ "planeIntersect(vf3;vf3;struct-Plane-vf3-f1-vf3-f1-i11;"
               OpName %rayO_0 "rayO"
               OpName %rayD_1 "rayD"
               OpName %plane "plane"
               OpName %intersect_vf3_vf3_f1_ "intersect(vf3;vf3;f1;"
               OpName %rayO_1 "rayO"
               OpName %rayD_2 "rayD"
               OpName %resT "resT"
               OpName %calcShadow_vf3_vf3_i1_f1_ "calcShadow(vf3;vf3;i1;f1;"
               OpName %rayO_2 "rayO"
               OpName %rayD_3 "rayD"
               OpName %objectId "objectId"
               OpName %t "t"
               OpName %fog_f1_vf3_ "fog(f1;vf3;"
               OpName %t_0 "t"
               OpName %color "color"
               OpName %renderScene_vf3_vf3_i1_ "renderScene(vf3;vf3;i1;"
               OpName %rayO_3 "rayO"
               OpName %rayD_4 "rayD"
               OpName %id "id"
               OpName %viewVec "viewVec"
               OpName %Camera "Camera"
               OpMemberName %Camera 0 "pos"
               OpMemberName %Camera 1 "lookat"
               OpMemberName %Camera 2 "fov"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "lightPos"
               OpMemberName %UBO 1 "aspectRatio"
               OpMemberName %UBO 2 "fogColor"
               OpMemberName %UBO 3 "camera"
               OpMemberName %UBO 4 "rotMat"
               OpName %ubo "ubo"
               OpName %halfVec "halfVec"
               OpName %oc "oc"
               OpName %b "b"
               OpName %c "c"
               OpName %h "h"
               OpName %t_1 "t"
               OpName %d "d"
               OpName %t_2 "t"
               OpName %id_0 "id"
               OpName %i "i"
               OpName %Sphere_0 "Sphere"
               OpMemberName %Sphere_0 0 "pos"
               OpMemberName %Sphere_0 1 "radius"
               OpMemberName %Sphere_0 2 "diffuse"
               OpMemberName %Sphere_0 3 "specular"
               OpMemberName %Sphere_0 4 "id"
               OpName %Spheres "Spheres"
               OpMemberName %Spheres 0 "spheres"
               OpName %_ ""
               OpName %tSphere "tSphere"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %i_0 "i"
               OpName %Plane_0 "Plane"
               OpMemberName %Plane_0 0 "normal"
               OpMemberName %Plane_0 1 "distance"
               OpMemberName %Plane_0 2 "diffuse"
               OpMemberName %Plane_0 3 "specular"
               OpMemberName %Plane_0 4 "id"
               OpName %Planes "Planes"
               OpMemberName %Planes 0 "planes"
               OpName %__0 ""
               OpName %tplane "tplane"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %i_1 "i"
               OpName %tSphere_0 "tSphere"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpName %color_0 "color"
               OpName %t_3 "t"
               OpName %objectID "objectID"
               OpName %param_8 "param"
               OpName %param_9 "param"
               OpName %param_10 "param"
               OpName %pos_0 "pos"
               OpName %lightVec "lightVec"
               OpName %i_2 "i"
               OpName %normal_1 "normal"
               OpName %diffuse "diffuse"
               OpName %param_11 "param"
               OpName %param_12 "param"
               OpName %specular "specular"
               OpName %param_13 "param"
               OpName %param_14 "param"
               OpName %param_15 "param"
               OpName %i_3 "i"
               OpName %param_16 "param"
               OpName %param_17 "param"
               OpName %diffuse_0 "diffuse"
               OpName %param_18 "param"
               OpName %param_19 "param"
               OpName %specular_0 "specular"
               OpName %param_20 "param"
               OpName %param_21 "param"
               OpName %param_22 "param"
               OpName %param_23 "param"
               OpName %param_24 "param"
               OpName %param_25 "param"
               OpName %param_26 "param"
               OpName %param_27 "param"
               OpName %param_28 "param"
               OpName %param_29 "param"
               OpName %param_30 "param"
               OpName %dim "dim"
               OpName %resultImage "resultImage"
               OpName %uv "uv"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %rayO_4 "rayO"
               OpName %rayD_5 "rayD"
               OpName %id_1 "id"
               OpName %finalColor "finalColor"
               OpName %param_31 "param"
               OpName %param_32 "param"
               OpName %param_33 "param"
               OpName %reflectionStrength "reflectionStrength"
               OpName %i_4 "i"
               OpName %reflectionColor "reflectionColor"
               OpName %param_34 "param"
               OpName %param_35 "param"
               OpName %param_36 "param"
               OpMemberDecorate %Camera 0 Offset 0
               OpMemberDecorate %Camera 1 Offset 16
               OpMemberDecorate %Camera 2 Offset 28
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 12
               OpMemberDecorate %UBO 2 Offset 16
               OpMemberDecorate %UBO 3 Offset 32
               OpMemberDecorate %UBO 4 ColMajor
               OpMemberDecorate %UBO 4 Offset 64
               OpMemberDecorate %UBO 4 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpMemberDecorate %Sphere_0 0 Offset 0
               OpMemberDecorate %Sphere_0 1 Offset 12
               OpMemberDecorate %Sphere_0 2 Offset 16
               OpMemberDecorate %Sphere_0 3 Offset 28
               OpMemberDecorate %Sphere_0 4 Offset 32
               OpDecorate %_runtimearr_Sphere_0 ArrayStride 48
               OpMemberDecorate %Spheres 0 Offset 0
               OpDecorate %Spheres BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 2
               OpMemberDecorate %Plane_0 0 Offset 0
               OpMemberDecorate %Plane_0 1 Offset 12
               OpMemberDecorate %Plane_0 2 Offset 16
               OpMemberDecorate %Plane_0 3 Offset 28
               OpMemberDecorate %Plane_0 4 Offset 32
               OpDecorate %_runtimearr_Plane_0 ArrayStride 48
               OpMemberDecorate %Planes 0 Offset 0
               OpDecorate %Planes BufferBlock
               OpDecorate %__0 DescriptorSet 0
               OpDecorate %__0 Binding 3
               OpDecorate %resultImage DescriptorSet 0
               OpDecorate %resultImage Binding 0
               OpDecorate %resultImage NonReadable
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
          %9 = OpTypeFunction %void %_ptr_Function_v3float %_ptr_Function_v3float
         %14 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float
%_ptr_Function_float = OpTypePointer Function %float
         %20 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_float
        %int = OpTypeInt 32 1
     %Sphere = OpTypeStruct %v3float %float %v3float %float %int
%_ptr_Function_Sphere = OpTypePointer Function %Sphere
         %29 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_Sphere
         %35 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_Sphere
      %Plane = OpTypeStruct %v3float %float %v3float %float %int
%_ptr_Function_Plane = OpTypePointer Function %Plane
         %42 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_Plane
         %48 = OpTypeFunction %int %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_float
%_ptr_Function_int = OpTypePointer Function %int
         %55 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_int %_ptr_Function_float
         %62 = OpTypeFunction %v3float %_ptr_Function_float %_ptr_Function_v3float
         %67 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_int
    %float_2 = OpConstant %float 2
%float_0_100000001 = OpConstant %float 0.100000001
    %float_1 = OpConstant %float 1
    %v4float = OpTypeVector %float 4
     %Camera = OpTypeStruct %v3float %v3float %float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %v3float %float %v4float %Camera %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
      %int_0 = OpConstant %int 0
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
    %float_0 = OpConstant %float 0
      %int_1 = OpConstant %int 1
    %float_4 = OpConstant %float 4
       %bool = OpTypeBool
   %float_n1 = OpConstant %float -1
     %int_n1 = OpConstant %int -1
   %Sphere_0 = OpTypeStruct %v3float %float %v3float %float %int
%_runtimearr_Sphere_0 = OpTypeRuntimeArray %Sphere_0
    %Spheres = OpTypeStruct %_runtimearr_Sphere_0
%_ptr_Uniform_Spheres = OpTypePointer Uniform %Spheres
          %_ = OpVariable %_ptr_Uniform_Spheres Uniform
       %uint = OpTypeInt 32 0
%_ptr_Uniform_Sphere_0 = OpTypePointer Uniform %Sphere_0
      %int_2 = OpConstant %int 2
      %int_4 = OpConstant %int 4
%float_9_99999975en05 = OpConstant %float 9.99999975e-05
%_ptr_Uniform_int = OpTypePointer Uniform %int
    %Plane_0 = OpTypeStruct %v3float %float %v3float %float %int
%_runtimearr_Plane_0 = OpTypeRuntimeArray %Plane_0
     %Planes = OpTypeStruct %_runtimearr_Plane_0
%_ptr_Uniform_Planes = OpTypePointer Uniform %Planes
        %__0 = OpVariable %_ptr_Uniform_Planes Uniform
%_ptr_Uniform_Plane_0 = OpTypePointer Uniform %Plane_0
  %float_0_5 = OpConstant %float 0.5
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
   %float_20 = OpConstant %float 20
        %383 = OpConstantComposite %v3float %float_0 %float_0 %float_0
 %float_1000 = OpConstant %float 1000
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
        %563 = OpTypeImage %float 2D 0 0 0 2 Rgba8
%_ptr_UniformConstant_563 = OpTypePointer UniformConstant %563
%resultImage = OpVariable %_ptr_UniformConstant_563 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
     %v3uint = OpTypeVector %uint 3
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
     %v2uint = OpTypeVector %uint 2
       %true = OpConstantTrue %bool
%float_0_400000006 = OpConstant %float 0.400000006
    %uint_16 = OpConstant %uint 16
     %uint_1 = OpConstant %uint 1
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_16 %uint_16 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
        %dim = OpVariable %_ptr_Function_v2int Function
         %uv = OpVariable %_ptr_Function_v2float Function
     %rayO_4 = OpVariable %_ptr_Function_v3float Function
     %rayD_5 = OpVariable %_ptr_Function_v3float Function
       %id_1 = OpVariable %_ptr_Function_int Function
 %finalColor = OpVariable %_ptr_Function_v3float Function
   %param_31 = OpVariable %_ptr_Function_v3float Function
   %param_32 = OpVariable %_ptr_Function_v3float Function
   %param_33 = OpVariable %_ptr_Function_int Function
%reflectionStrength = OpVariable %_ptr_Function_float Function
        %i_4 = OpVariable %_ptr_Function_int Function
%reflectionColor = OpVariable %_ptr_Function_v3float Function
   %param_34 = OpVariable %_ptr_Function_v3float Function
   %param_35 = OpVariable %_ptr_Function_v3float Function
   %param_36 = OpVariable %_ptr_Function_int Function
        %566 = OpLoad %563 %resultImage
        %567 = OpImageQuerySize %v2int %566
               OpStore %dim %567
        %575 = OpLoad %v3uint %gl_GlobalInvocationID
        %576 = OpVectorShuffle %v2uint %575 %575 0 1
        %577 = OpConvertUToF %v2float %576
        %578 = OpLoad %v2int %dim
        %579 = OpConvertSToF %v2float %578
        %580 = OpFDiv %v2float %577 %579
               OpStore %uv %580
        %582 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3 %int_0
        %583 = OpLoad %v3float %582
               OpStore %rayO_4 %583
        %585 = OpLoad %v2float %uv
        %586 = OpVectorTimesScalar %v2float %585 %float_2
        %587 = OpCompositeConstruct %v2float %float_n1 %float_n1
        %588 = OpFAdd %v2float %587 %586
        %589 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
        %590 = OpLoad %float %589
        %591 = OpCompositeConstruct %v2float %590 %float_1
        %592 = OpFMul %v2float %588 %591
        %593 = OpCompositeExtract %float %592 0
        %594 = OpCompositeExtract %float %592 1
        %595 = OpCompositeConstruct %v3float %593 %594 %float_n1
        %596 = OpExtInst %v3float %1 Normalize %595
               OpStore %rayD_5 %596
               OpStore %id_1 %int_0
        %600 = OpLoad %v3float %rayO_4
               OpStore %param_31 %600
        %602 = OpLoad %v3float %rayD_5
               OpStore %param_32 %602
        %604 = OpLoad %int %id_1
               OpStore %param_33 %604
        %605 = OpFunctionCall %v3float %renderScene_vf3_vf3_i1_ %param_31 %param_32 %param_33
        %606 = OpLoad %v3float %param_31
               OpStore %rayO_4 %606
        %607 = OpLoad %v3float %param_32
               OpStore %rayD_5 %607
        %608 = OpLoad %int %param_33
               OpStore %id_1 %608
               OpStore %finalColor %605
               OpSelectionMerge %611 None
               OpBranchConditional %true %610 %611
        %610 = OpLabel
               OpStore %reflectionStrength %float_0_400000006
               OpStore %i_4 %int_0
               OpBranch %615
        %615 = OpLabel
               OpLoopMerge %617 %618 None
               OpBranch %619
        %619 = OpLabel
        %620 = OpLoad %int %i_4
        %621 = OpSLessThan %bool %620 %int_2
               OpBranchConditional %621 %616 %617
        %616 = OpLabel
        %624 = OpLoad %v3float %rayO_4
               OpStore %param_34 %624
        %626 = OpLoad %v3float %rayD_5
               OpStore %param_35 %626
        %628 = OpLoad %int %id_1
               OpStore %param_36 %628
        %629 = OpFunctionCall %v3float %renderScene_vf3_vf3_i1_ %param_34 %param_35 %param_36
        %630 = OpLoad %v3float %param_34
               OpStore %rayO_4 %630
        %631 = OpLoad %v3float %param_35
               OpStore %rayD_5 %631
        %632 = OpLoad %int %param_36
               OpStore %id_1 %632
               OpStore %reflectionColor %629
        %633 = OpLoad %float %reflectionStrength
        %634 = OpFSub %float %float_1 %633
        %635 = OpLoad %v3float %finalColor
        %636 = OpVectorTimesScalar %v3float %635 %634
        %637 = OpLoad %float %reflectionStrength
        %638 = OpLoad %v3float %reflectionColor
        %639 = OpLoad %v3float %finalColor
        %640 = OpLoad %float %reflectionStrength
        %641 = OpFSub %float %float_1 %640
        %642 = OpCompositeConstruct %v3float %641 %641 %641
        %643 = OpExtInst %v3float %1 FMix %638 %639 %642
        %644 = OpVectorTimesScalar %v3float %643 %637
        %645 = OpFAdd %v3float %636 %644
               OpStore %finalColor %645
        %646 = OpLoad %float %reflectionStrength
        %647 = OpFMul %float %646 %float_0_5
               OpStore %reflectionStrength %647
               OpBranch %618
        %618 = OpLabel
        %648 = OpLoad %int %i_4
        %649 = OpIAdd %int %648 %int_1
               OpStore %i_4 %649
               OpBranch %615
        %617 = OpLabel
               OpBranch %611
        %611 = OpLabel
        %650 = OpLoad %563 %resultImage
        %651 = OpLoad %v3uint %gl_GlobalInvocationID
        %652 = OpVectorShuffle %v2uint %651 %651 0 1
        %653 = OpBitcast %v2int %652
        %654 = OpLoad %v3float %finalColor
        %655 = OpCompositeExtract %float %654 0
        %656 = OpCompositeExtract %float %654 1
        %657 = OpCompositeExtract %float %654 2
        %658 = OpCompositeConstruct %v4float %655 %656 %657 %float_0
               OpImageWrite %650 %653 %658
               OpReturn
               OpFunctionEnd
%reflectRay_vf3_vf3_ = OpFunction %void None %9
       %rayD = OpFunctionParameter %_ptr_Function_v3float
     %mormal = OpFunctionParameter %_ptr_Function_v3float
         %13 = OpLabel
         %73 = OpLoad %v3float %rayD
         %75 = OpLoad %v3float %mormal
         %76 = OpLoad %v3float %rayD
         %77 = OpDot %float %75 %76
         %78 = OpFNegate %float %77
         %79 = OpFMul %float %float_2 %78
         %80 = OpLoad %v3float %mormal
         %81 = OpVectorTimesScalar %v3float %80 %79
         %82 = OpFAdd %v3float %73 %81
               OpStore %rayD %82
               OpReturn
               OpFunctionEnd
%lightDiffuse_vf3_vf3_ = OpFunction %float None %14
     %normal = OpFunctionParameter %_ptr_Function_v3float
   %lightDir = OpFunctionParameter %_ptr_Function_v3float
         %18 = OpLabel
         %83 = OpLoad %v3float %normal
         %84 = OpLoad %v3float %lightDir
         %85 = OpDot %float %83 %84
         %88 = OpExtInst %float %1 FClamp %85 %float_0_100000001 %float_1
               OpReturnValue %88
               OpFunctionEnd
%lightSpecular_vf3_vf3_f1_ = OpFunction %float None %20
   %normal_0 = OpFunctionParameter %_ptr_Function_v3float
 %lightDir_0 = OpFunctionParameter %_ptr_Function_v3float
%specularFactor = OpFunctionParameter %_ptr_Function_float
         %25 = OpLabel
    %viewVec = OpVariable %_ptr_Function_v3float Function
    %halfVec = OpVariable %_ptr_Function_v3float Function
        %101 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3 %int_0
        %102 = OpLoad %v3float %101
        %103 = OpExtInst %v3float %1 Normalize %102
               OpStore %viewVec %103
        %105 = OpLoad %v3float %lightDir_0
        %106 = OpLoad %v3float %viewVec
        %107 = OpFAdd %v3float %105 %106
        %108 = OpExtInst %v3float %1 Normalize %107
               OpStore %halfVec %108
        %109 = OpLoad %v3float %normal_0
        %110 = OpLoad %v3float %halfVec
        %111 = OpDot %float %109 %110
        %113 = OpExtInst %float %1 FClamp %111 %float_0 %float_1
        %114 = OpLoad %float %specularFactor
        %115 = OpExtInst %float %1 Pow %113 %114
               OpReturnValue %115
               OpFunctionEnd
%sphereIntersect_vf3_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ = OpFunction %float None %29
       %rayO = OpFunctionParameter %_ptr_Function_v3float
     %rayD_0 = OpFunctionParameter %_ptr_Function_v3float
     %sphere = OpFunctionParameter %_ptr_Function_Sphere
         %34 = OpLabel
         %oc = OpVariable %_ptr_Function_v3float Function
          %b = OpVariable %_ptr_Function_float Function
          %c = OpVariable %_ptr_Function_float Function
          %h = OpVariable %_ptr_Function_float Function
        %t_1 = OpVariable %_ptr_Function_float Function
        %119 = OpLoad %v3float %rayO
        %120 = OpAccessChain %_ptr_Function_v3float %sphere %int_0
        %121 = OpLoad %v3float %120
        %122 = OpFSub %v3float %119 %121
               OpStore %oc %122
        %124 = OpLoad %v3float %oc
        %125 = OpLoad %v3float %rayD_0
        %126 = OpDot %float %124 %125
        %127 = OpFMul %float %float_2 %126
               OpStore %b %127
        %129 = OpLoad %v3float %oc
        %130 = OpLoad %v3float %oc
        %131 = OpDot %float %129 %130
        %133 = OpAccessChain %_ptr_Function_float %sphere %int_1
        %134 = OpLoad %float %133
        %135 = OpAccessChain %_ptr_Function_float %sphere %int_1
        %136 = OpLoad %float %135
        %137 = OpFMul %float %134 %136
        %138 = OpFSub %float %131 %137
               OpStore %c %138
        %140 = OpLoad %float %b
        %141 = OpLoad %float %b
        %142 = OpFMul %float %140 %141
        %144 = OpLoad %float %c
        %145 = OpFMul %float %float_4 %144
        %146 = OpFSub %float %142 %145
               OpStore %h %146
        %147 = OpLoad %float %h
        %149 = OpFOrdLessThan %bool %147 %float_0
               OpSelectionMerge %151 None
               OpBranchConditional %149 %150 %151
        %150 = OpLabel
               OpReturnValue %float_n1
        %151 = OpLabel
        %155 = OpLoad %float %b
        %156 = OpFNegate %float %155
        %157 = OpLoad %float %h
        %158 = OpExtInst %float %1 Sqrt %157
        %159 = OpFSub %float %156 %158
        %160 = OpFDiv %float %159 %float_2
               OpStore %t_1 %160
        %161 = OpLoad %float %t_1
               OpReturnValue %161
               OpFunctionEnd
%sphereNormal_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ = OpFunction %v3float None %35
        %pos = OpFunctionParameter %_ptr_Function_v3float
   %sphere_0 = OpFunctionParameter %_ptr_Function_Sphere
         %39 = OpLabel
        %164 = OpLoad %v3float %pos
        %165 = OpAccessChain %_ptr_Function_v3float %sphere_0 %int_0
        %166 = OpLoad %v3float %165
        %167 = OpFSub %v3float %164 %166
        %168 = OpAccessChain %_ptr_Function_float %sphere_0 %int_1
        %169 = OpLoad %float %168
        %170 = OpCompositeConstruct %v3float %169 %169 %169
        %171 = OpFDiv %v3float %167 %170
               OpReturnValue %171
               OpFunctionEnd
%planeIntersect_vf3_vf3_struct_Plane_vf3_f1_vf3_f1_i11_ = OpFunction %float None %42
     %rayO_0 = OpFunctionParameter %_ptr_Function_v3float
     %rayD_1 = OpFunctionParameter %_ptr_Function_v3float
      %plane = OpFunctionParameter %_ptr_Function_Plane
         %47 = OpLabel
          %d = OpVariable %_ptr_Function_float Function
        %t_2 = OpVariable %_ptr_Function_float Function
        %175 = OpLoad %v3float %rayD_1
        %176 = OpAccessChain %_ptr_Function_v3float %plane %int_0
        %177 = OpLoad %v3float %176
        %178 = OpDot %float %175 %177
               OpStore %d %178
        %179 = OpLoad %float %d
        %180 = OpFOrdEqual %bool %179 %float_0
               OpSelectionMerge %182 None
               OpBranchConditional %180 %181 %182
        %181 = OpLabel
               OpReturnValue %float_0
        %182 = OpLabel
        %185 = OpAccessChain %_ptr_Function_float %plane %int_1
        %186 = OpLoad %float %185
        %187 = OpLoad %v3float %rayO_0
        %188 = OpAccessChain %_ptr_Function_v3float %plane %int_0
        %189 = OpLoad %v3float %188
        %190 = OpDot %float %187 %189
        %191 = OpFAdd %float %186 %190
        %192 = OpFNegate %float %191
        %193 = OpLoad %float %d
        %194 = OpFDiv %float %192 %193
               OpStore %t_2 %194
        %195 = OpLoad %float %t_2
        %196 = OpFOrdLessThan %bool %195 %float_0
               OpSelectionMerge %198 None
               OpBranchConditional %196 %197 %198
        %197 = OpLabel
               OpReturnValue %float_0
        %198 = OpLabel
        %200 = OpLoad %float %t_2
               OpReturnValue %200
               OpFunctionEnd
%intersect_vf3_vf3_f1_ = OpFunction %int None %48
     %rayO_1 = OpFunctionParameter %_ptr_Function_v3float
     %rayD_2 = OpFunctionParameter %_ptr_Function_v3float
       %resT = OpFunctionParameter %_ptr_Function_float
         %53 = OpLabel
       %id_0 = OpVariable %_ptr_Function_int Function
          %i = OpVariable %_ptr_Function_int Function
    %tSphere = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_v3float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
    %param_1 = OpVariable %_ptr_Function_Sphere Function
        %i_0 = OpVariable %_ptr_Function_int Function
     %tplane = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_v3float Function
    %param_3 = OpVariable %_ptr_Function_v3float Function
    %param_4 = OpVariable %_ptr_Function_Plane Function
               OpStore %id_0 %int_n1
               OpStore %i %int_0
               OpBranch %206
        %206 = OpLabel
               OpLoopMerge %208 %209 None
               OpBranch %210
        %210 = OpLabel
        %211 = OpLoad %int %i
        %218 = OpArrayLength %uint %_ 0
        %219 = OpBitcast %int %218
        %220 = OpSLessThan %bool %211 %219
               OpBranchConditional %220 %207 %208
        %207 = OpLabel
        %222 = OpLoad %int %i
        %224 = OpLoad %v3float %rayO_1
               OpStore %param %224
        %226 = OpLoad %v3float %rayD_2
               OpStore %param_0 %226
        %229 = OpAccessChain %_ptr_Uniform_Sphere_0 %_ %int_0 %222
        %230 = OpLoad %Sphere_0 %229
        %231 = OpCompositeExtract %v3float %230 0
        %232 = OpAccessChain %_ptr_Function_v3float %param_1 %int_0
               OpStore %232 %231
        %233 = OpCompositeExtract %float %230 1
        %234 = OpAccessChain %_ptr_Function_float %param_1 %int_1
               OpStore %234 %233
        %235 = OpCompositeExtract %v3float %230 2
        %237 = OpAccessChain %_ptr_Function_v3float %param_1 %int_2
               OpStore %237 %235
        %238 = OpCompositeExtract %float %230 3
        %239 = OpAccessChain %_ptr_Function_float %param_1 %int_3
               OpStore %239 %238
        %240 = OpCompositeExtract %int %230 4
        %242 = OpAccessChain %_ptr_Function_int %param_1 %int_4
               OpStore %242 %240
        %243 = OpFunctionCall %float %sphereIntersect_vf3_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ %param %param_0 %param_1
               OpStore %tSphere %243
        %244 = OpLoad %float %tSphere
        %246 = OpFOrdGreaterThan %bool %244 %float_9_99999975en05
        %247 = OpLoad %float %tSphere
        %248 = OpLoad %float %resT
        %249 = OpFOrdLessThan %bool %247 %248
        %250 = OpLogicalAnd %bool %246 %249
               OpSelectionMerge %252 None
               OpBranchConditional %250 %251 %252
        %251 = OpLabel
        %253 = OpLoad %int %i
        %255 = OpAccessChain %_ptr_Uniform_int %_ %int_0 %253 %int_4
        %256 = OpLoad %int %255
               OpStore %id_0 %256
        %257 = OpLoad %float %tSphere
               OpStore %resT %257
               OpBranch %252
        %252 = OpLabel
               OpBranch %209
        %209 = OpLabel
        %258 = OpLoad %int %i
        %259 = OpIAdd %int %258 %int_1
               OpStore %i %259
               OpBranch %206
        %208 = OpLabel
               OpStore %i_0 %int_0
               OpBranch %261
        %261 = OpLabel
               OpLoopMerge %263 %264 None
               OpBranch %265
        %265 = OpLabel
        %266 = OpLoad %int %i_0
        %272 = OpArrayLength %uint %__0 0
        %273 = OpBitcast %int %272
        %274 = OpSLessThan %bool %266 %273
               OpBranchConditional %274 %262 %263
        %262 = OpLabel
        %276 = OpLoad %int %i_0
        %278 = OpLoad %v3float %rayO_1
               OpStore %param_2 %278
        %280 = OpLoad %v3float %rayD_2
               OpStore %param_3 %280
        %283 = OpAccessChain %_ptr_Uniform_Plane_0 %__0 %int_0 %276
        %284 = OpLoad %Plane_0 %283
        %285 = OpCompositeExtract %v3float %284 0
        %286 = OpAccessChain %_ptr_Function_v3float %param_4 %int_0
               OpStore %286 %285
        %287 = OpCompositeExtract %float %284 1
        %288 = OpAccessChain %_ptr_Function_float %param_4 %int_1
               OpStore %288 %287
        %289 = OpCompositeExtract %v3float %284 2
        %290 = OpAccessChain %_ptr_Function_v3float %param_4 %int_2
               OpStore %290 %289
        %291 = OpCompositeExtract %float %284 3
        %292 = OpAccessChain %_ptr_Function_float %param_4 %int_3
               OpStore %292 %291
        %293 = OpCompositeExtract %int %284 4
        %294 = OpAccessChain %_ptr_Function_int %param_4 %int_4
               OpStore %294 %293
        %295 = OpFunctionCall %float %planeIntersect_vf3_vf3_struct_Plane_vf3_f1_vf3_f1_i11_ %param_2 %param_3 %param_4
               OpStore %tplane %295
        %296 = OpLoad %float %tplane
        %297 = OpFOrdGreaterThan %bool %296 %float_9_99999975en05
        %298 = OpLoad %float %tplane
        %299 = OpLoad %float %resT
        %300 = OpFOrdLessThan %bool %298 %299
        %301 = OpLogicalAnd %bool %297 %300
               OpSelectionMerge %303 None
               OpBranchConditional %301 %302 %303
        %302 = OpLabel
        %304 = OpLoad %int %i_0
        %305 = OpAccessChain %_ptr_Uniform_int %__0 %int_0 %304 %int_4
        %306 = OpLoad %int %305
               OpStore %id_0 %306
        %307 = OpLoad %float %tplane
               OpStore %resT %307
               OpBranch %303
        %303 = OpLabel
               OpBranch %264
        %264 = OpLabel
        %308 = OpLoad %int %i_0
        %309 = OpIAdd %int %308 %int_1
               OpStore %i_0 %309
               OpBranch %261
        %263 = OpLabel
        %310 = OpLoad %int %id_0
               OpReturnValue %310
               OpFunctionEnd
%calcShadow_vf3_vf3_i1_f1_ = OpFunction %float None %55
     %rayO_2 = OpFunctionParameter %_ptr_Function_v3float
     %rayD_3 = OpFunctionParameter %_ptr_Function_v3float
   %objectId = OpFunctionParameter %_ptr_Function_int
          %t = OpFunctionParameter %_ptr_Function_float
         %61 = OpLabel
        %i_1 = OpVariable %_ptr_Function_int Function
  %tSphere_0 = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_v3float Function
    %param_6 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_Sphere Function
               OpStore %i_1 %int_0
               OpBranch %314
        %314 = OpLabel
               OpLoopMerge %316 %317 None
               OpBranch %318
        %318 = OpLabel
        %319 = OpLoad %int %i_1
        %320 = OpArrayLength %uint %_ 0
        %321 = OpBitcast %int %320
        %322 = OpSLessThan %bool %319 %321
               OpBranchConditional %322 %315 %316
        %315 = OpLabel
        %323 = OpLoad %int %i_1
        %324 = OpAccessChain %_ptr_Uniform_int %_ %int_0 %323 %int_4
        %325 = OpLoad %int %324
        %326 = OpLoad %int %objectId
        %327 = OpIEqual %bool %325 %326
               OpSelectionMerge %329 None
               OpBranchConditional %327 %328 %329
        %328 = OpLabel
               OpBranch %317
        %329 = OpLabel
        %332 = OpLoad %int %i_1
        %334 = OpLoad %v3float %rayO_2
               OpStore %param_5 %334
        %336 = OpLoad %v3float %rayD_3
               OpStore %param_6 %336
        %338 = OpAccessChain %_ptr_Uniform_Sphere_0 %_ %int_0 %332
        %339 = OpLoad %Sphere_0 %338
        %340 = OpCompositeExtract %v3float %339 0
        %341 = OpAccessChain %_ptr_Function_v3float %param_7 %int_0
               OpStore %341 %340
        %342 = OpCompositeExtract %float %339 1
        %343 = OpAccessChain %_ptr_Function_float %param_7 %int_1
               OpStore %343 %342
        %344 = OpCompositeExtract %v3float %339 2
        %345 = OpAccessChain %_ptr_Function_v3float %param_7 %int_2
               OpStore %345 %344
        %346 = OpCompositeExtract %float %339 3
        %347 = OpAccessChain %_ptr_Function_float %param_7 %int_3
               OpStore %347 %346
        %348 = OpCompositeExtract %int %339 4
        %349 = OpAccessChain %_ptr_Function_int %param_7 %int_4
               OpStore %349 %348
        %350 = OpFunctionCall %float %sphereIntersect_vf3_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ %param_5 %param_6 %param_7
               OpStore %tSphere_0 %350
        %351 = OpLoad %float %tSphere_0
        %352 = OpFOrdGreaterThan %bool %351 %float_9_99999975en05
        %353 = OpLoad %float %tSphere_0
        %354 = OpLoad %float %t
        %355 = OpFOrdLessThan %bool %353 %354
        %356 = OpLogicalAnd %bool %352 %355
               OpSelectionMerge %358 None
               OpBranchConditional %356 %357 %358
        %357 = OpLabel
        %359 = OpLoad %float %tSphere_0
               OpStore %t %359
               OpReturnValue %float_0_5
        %358 = OpLabel
               OpBranch %317
        %317 = OpLabel
        %362 = OpLoad %int %i_1
        %363 = OpIAdd %int %362 %int_1
               OpStore %i_1 %363
               OpBranch %314
        %316 = OpLabel
               OpReturnValue %float_1
               OpFunctionEnd
%fog_f1_vf3_ = OpFunction %v3float None %62
        %t_0 = OpFunctionParameter %_ptr_Function_float
      %color = OpFunctionParameter %_ptr_Function_v3float
         %66 = OpLabel
        %366 = OpLoad %v3float %color
        %368 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %369 = OpLoad %v4float %368
        %370 = OpVectorShuffle %v3float %369 %369 0 1 2
        %371 = OpLoad %float %t_0
        %372 = OpLoad %float %t_0
        %373 = OpFMul %float %371 %372
        %374 = OpExtInst %float %1 Sqrt %373
        %376 = OpFDiv %float %374 %float_20
        %377 = OpExtInst %float %1 FClamp %376 %float_0 %float_1
        %378 = OpCompositeConstruct %v3float %377 %377 %377
        %379 = OpExtInst %v3float %1 FMix %366 %370 %378
               OpReturnValue %379
               OpFunctionEnd
%renderScene_vf3_vf3_i1_ = OpFunction %v3float None %67
     %rayO_3 = OpFunctionParameter %_ptr_Function_v3float
     %rayD_4 = OpFunctionParameter %_ptr_Function_v3float
         %id = OpFunctionParameter %_ptr_Function_int
         %72 = OpLabel
    %color_0 = OpVariable %_ptr_Function_v3float Function
        %t_3 = OpVariable %_ptr_Function_float Function
   %objectID = OpVariable %_ptr_Function_int Function
    %param_8 = OpVariable %_ptr_Function_v3float Function
    %param_9 = OpVariable %_ptr_Function_v3float Function
   %param_10 = OpVariable %_ptr_Function_float Function
      %pos_0 = OpVariable %_ptr_Function_v3float Function
   %lightVec = OpVariable %_ptr_Function_v3float Function
        %i_2 = OpVariable %_ptr_Function_int Function
   %normal_1 = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_float Function
   %param_11 = OpVariable %_ptr_Function_v3float Function
   %param_12 = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_float Function
   %param_13 = OpVariable %_ptr_Function_v3float Function
   %param_14 = OpVariable %_ptr_Function_v3float Function
   %param_15 = OpVariable %_ptr_Function_float Function
        %i_3 = OpVariable %_ptr_Function_int Function
   %param_16 = OpVariable %_ptr_Function_v3float Function
   %param_17 = OpVariable %_ptr_Function_Sphere Function
  %diffuse_0 = OpVariable %_ptr_Function_float Function
   %param_18 = OpVariable %_ptr_Function_v3float Function
   %param_19 = OpVariable %_ptr_Function_v3float Function
 %specular_0 = OpVariable %_ptr_Function_float Function
   %param_20 = OpVariable %_ptr_Function_v3float Function
   %param_21 = OpVariable %_ptr_Function_v3float Function
   %param_22 = OpVariable %_ptr_Function_float Function
   %param_23 = OpVariable %_ptr_Function_v3float Function
   %param_24 = OpVariable %_ptr_Function_v3float Function
   %param_25 = OpVariable %_ptr_Function_int Function
   %param_26 = OpVariable %_ptr_Function_float Function
   %param_27 = OpVariable %_ptr_Function_float Function
   %param_28 = OpVariable %_ptr_Function_v3float Function
   %param_29 = OpVariable %_ptr_Function_v3float Function
   %param_30 = OpVariable %_ptr_Function_v3float Function
               OpStore %color_0 %383
               OpStore %t_3 %float_1000
        %388 = OpLoad %v3float %rayO_3
               OpStore %param_8 %388
        %390 = OpLoad %v3float %rayD_4
               OpStore %param_9 %390
        %392 = OpLoad %float %t_3
               OpStore %param_10 %392
        %393 = OpFunctionCall %int %intersect_vf3_vf3_f1_ %param_8 %param_9 %param_10
        %394 = OpLoad %float %param_10
               OpStore %t_3 %394
               OpStore %objectID %393
        %395 = OpLoad %int %objectID
        %396 = OpIEqual %bool %395 %int_n1
               OpSelectionMerge %398 None
               OpBranchConditional %396 %397 %398
        %397 = OpLabel
        %399 = OpLoad %v3float %color_0
               OpReturnValue %399
        %398 = OpLabel
        %402 = OpLoad %v3float %rayO_3
        %403 = OpLoad %float %t_3
        %404 = OpLoad %v3float %rayD_4
        %405 = OpVectorTimesScalar %v3float %404 %403
        %406 = OpFAdd %v3float %402 %405
               OpStore %pos_0 %406
        %408 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0
        %409 = OpLoad %v3float %408
        %410 = OpLoad %v3float %pos_0
        %411 = OpFSub %v3float %409 %410
        %412 = OpExtInst %v3float %1 Normalize %411
               OpStore %lightVec %412
               OpStore %i_2 %int_0
               OpBranch %414
        %414 = OpLabel
               OpLoopMerge %416 %417 None
               OpBranch %418
        %418 = OpLabel
        %419 = OpLoad %int %i_2
        %420 = OpArrayLength %uint %__0 0
        %421 = OpBitcast %int %420
        %422 = OpSLessThan %bool %419 %421
               OpBranchConditional %422 %415 %416
        %415 = OpLabel
        %423 = OpLoad %int %objectID
        %424 = OpLoad %int %i_2
        %425 = OpAccessChain %_ptr_Uniform_int %__0 %int_0 %424 %int_4
        %426 = OpLoad %int %425
        %427 = OpIEqual %bool %423 %426
               OpSelectionMerge %429 None
               OpBranchConditional %427 %428 %429
        %428 = OpLabel
        %431 = OpLoad %int %i_2
        %432 = OpAccessChain %_ptr_Uniform_v3float %__0 %int_0 %431 %int_0
        %433 = OpLoad %v3float %432
               OpStore %normal_1 %433
        %436 = OpLoad %v3float %normal_1
               OpStore %param_11 %436
        %438 = OpLoad %v3float %lightVec
               OpStore %param_12 %438
        %439 = OpFunctionCall %float %lightDiffuse_vf3_vf3_ %param_11 %param_12
               OpStore %diffuse %439
        %441 = OpLoad %int %i_2
        %443 = OpLoad %v3float %normal_1
               OpStore %param_13 %443
        %445 = OpLoad %v3float %lightVec
               OpStore %param_14 %445
        %448 = OpAccessChain %_ptr_Uniform_float %__0 %int_0 %441 %int_3
        %449 = OpLoad %float %448
               OpStore %param_15 %449
        %450 = OpFunctionCall %float %lightSpecular_vf3_vf3_f1_ %param_13 %param_14 %param_15
               OpStore %specular %450
        %451 = OpLoad %float %diffuse
        %452 = OpLoad %int %i_2
        %453 = OpAccessChain %_ptr_Uniform_v3float %__0 %int_0 %452 %int_2
        %454 = OpLoad %v3float %453
        %455 = OpVectorTimesScalar %v3float %454 %451
        %456 = OpLoad %float %specular
        %457 = OpCompositeConstruct %v3float %456 %456 %456
        %458 = OpFAdd %v3float %455 %457
               OpStore %color_0 %458
               OpBranch %429
        %429 = OpLabel
               OpBranch %417
        %417 = OpLabel
        %459 = OpLoad %int %i_2
        %460 = OpIAdd %int %459 %int_1
               OpStore %i_2 %460
               OpBranch %414
        %416 = OpLabel
               OpStore %i_3 %int_0
               OpBranch %462
        %462 = OpLabel
               OpLoopMerge %464 %465 None
               OpBranch %466
        %466 = OpLabel
        %467 = OpLoad %int %i_3
        %468 = OpArrayLength %uint %_ 0
        %469 = OpBitcast %int %468
        %470 = OpSLessThan %bool %467 %469
               OpBranchConditional %470 %463 %464
        %463 = OpLabel
        %471 = OpLoad %int %objectID
        %472 = OpLoad %int %i_3
        %473 = OpAccessChain %_ptr_Uniform_int %_ %int_0 %472 %int_4
        %474 = OpLoad %int %473
        %475 = OpIEqual %bool %471 %474
               OpSelectionMerge %477 None
               OpBranchConditional %475 %476 %477
        %476 = OpLabel
        %478 = OpLoad %int %i_3
        %480 = OpLoad %v3float %pos_0
               OpStore %param_16 %480
        %482 = OpAccessChain %_ptr_Uniform_Sphere_0 %_ %int_0 %478
        %483 = OpLoad %Sphere_0 %482
        %484 = OpCompositeExtract %v3float %483 0
        %485 = OpAccessChain %_ptr_Function_v3float %param_17 %int_0
               OpStore %485 %484
        %486 = OpCompositeExtract %float %483 1
        %487 = OpAccessChain %_ptr_Function_float %param_17 %int_1
               OpStore %487 %486
        %488 = OpCompositeExtract %v3float %483 2
        %489 = OpAccessChain %_ptr_Function_v3float %param_17 %int_2
               OpStore %489 %488
        %490 = OpCompositeExtract %float %483 3
        %491 = OpAccessChain %_ptr_Function_float %param_17 %int_3
               OpStore %491 %490
        %492 = OpCompositeExtract %int %483 4
        %493 = OpAccessChain %_ptr_Function_int %param_17 %int_4
               OpStore %493 %492
        %494 = OpFunctionCall %v3float %sphereNormal_vf3_struct_Sphere_vf3_f1_vf3_f1_i11_ %param_16 %param_17
               OpStore %normal_1 %494
        %497 = OpLoad %v3float %normal_1
               OpStore %param_18 %497
        %499 = OpLoad %v3float %lightVec
               OpStore %param_19 %499
        %500 = OpFunctionCall %float %lightDiffuse_vf3_vf3_ %param_18 %param_19
               OpStore %diffuse_0 %500
        %502 = OpLoad %int %i_3
        %504 = OpLoad %v3float %normal_1
               OpStore %param_20 %504
        %506 = OpLoad %v3float %lightVec
               OpStore %param_21 %506
        %508 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %502 %int_3
        %509 = OpLoad %float %508
               OpStore %param_22 %509
        %510 = OpFunctionCall %float %lightSpecular_vf3_vf3_f1_ %param_20 %param_21 %param_22
               OpStore %specular_0 %510
        %511 = OpLoad %float %diffuse_0
        %512 = OpLoad %int %i_3
        %513 = OpAccessChain %_ptr_Uniform_v3float %_ %int_0 %512 %int_2
        %514 = OpLoad %v3float %513
        %515 = OpVectorTimesScalar %v3float %514 %511
        %516 = OpLoad %float %specular_0
        %517 = OpCompositeConstruct %v3float %516 %516 %516
        %518 = OpFAdd %v3float %515 %517
               OpStore %color_0 %518
               OpBranch %477
        %477 = OpLabel
               OpBranch %465
        %465 = OpLabel
        %519 = OpLoad %int %i_3
        %520 = OpIAdd %int %519 %int_1
               OpStore %i_3 %520
               OpBranch %462
        %464 = OpLabel
        %521 = OpLoad %int %id
        %522 = OpIEqual %bool %521 %int_n1
               OpSelectionMerge %524 None
               OpBranchConditional %522 %523 %524
        %523 = OpLabel
        %525 = OpLoad %v3float %color_0
               OpReturnValue %525
        %524 = OpLabel
        %527 = OpLoad %int %objectID
               OpStore %id %527
        %528 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0
        %529 = OpLoad %v3float %528
        %530 = OpLoad %v3float %pos_0
        %531 = OpFSub %v3float %529 %530
        %532 = OpExtInst %float %1 Length %531
               OpStore %t_3 %532
        %534 = OpLoad %v3float %pos_0
               OpStore %param_23 %534
        %536 = OpLoad %v3float %lightVec
               OpStore %param_24 %536
        %538 = OpLoad %int %id
               OpStore %param_25 %538
        %540 = OpLoad %float %t_3
               OpStore %param_26 %540
        %541 = OpFunctionCall %float %calcShadow_vf3_vf3_i1_f1_ %param_23 %param_24 %param_25 %param_26
        %542 = OpLoad %float %param_26
               OpStore %t_3 %542
        %543 = OpLoad %v3float %color_0
        %544 = OpVectorTimesScalar %v3float %543 %541
               OpStore %color_0 %544
        %546 = OpLoad %float %t_3
               OpStore %param_27 %546
        %548 = OpLoad %v3float %color_0
               OpStore %param_28 %548
        %549 = OpFunctionCall %v3float %fog_f1_vf3_ %param_27 %param_28
               OpStore %color_0 %549
        %551 = OpLoad %v3float %rayD_4
               OpStore %param_29 %551
        %553 = OpLoad %v3float %normal_1
               OpStore %param_30 %553
        %554 = OpFunctionCall %void %reflectRay_vf3_vf3_ %param_29 %param_30
        %555 = OpLoad %v3float %param_29
               OpStore %rayD_4 %555
        %556 = OpLoad %v3float %pos_0
               OpStore %rayO_3 %556
        %557 = OpLoad %v3float %color_0
               OpReturnValue %557
               OpFunctionEnd
