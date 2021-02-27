; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 138
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inEyePos %inLightVec %inNormal %outFragColor %inColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %specpart_vf3_vf3_vf3_ "specpart(vf3;vf3;vf3;"
               OpName %L "L"
               OpName %N "N"
               OpName %H "H"
               OpName %Eye "Eye"
               OpName %inEyePos "inEyePos"
               OpName %Reflected "Reflected"
               OpName %inLightVec "inLightVec"
               OpName %inNormal "inNormal"
               OpName %halfVec "halfVec"
               OpName %diff "diff"
               OpName %spec "spec"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %intensity "intensity"
               OpName %IAmbient "IAmbient"
               OpName %IDiffuse "IDiffuse"
               OpName %shininess "shininess"
               OpName %ISpecular "ISpecular"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpName %tex "tex"
               OpName %inUV "inUV"
               OpDecorate %inEyePos Location 3
               OpDecorate %inLightVec Location 4
               OpDecorate %inNormal Location 1
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 2
               OpDecorate %tex DescriptorSet 0
               OpDecorate %tex Binding 1
               OpDecorate %inUV Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
          %9 = OpTypeFunction %float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_v3float
    %float_0 = OpConstant %float 0
       %bool = OpTypeBool
    %float_1 = OpConstant %float 1
   %float_64 = OpConstant %float 64
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inEyePos = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_float = OpTypePointer Function %float
%float_0_100000001 = OpConstant %float 0.100000001
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%float_0_200000003 = OpConstant %float 0.200000003
         %76 = OpConstantComposite %v4float %float_0_200000003 %float_0_200000003 %float_0_200000003 %float_1
  %float_0_5 = OpConstant %float 0.5
         %79 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_0_5
 %float_0_75 = OpConstant %float 0.75
         %88 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_1
    %float_2 = OpConstant %float 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
%float_0_949999988 = OpConstant %float 0.949999988
 %float_2_25 = OpConstant %float 2.25
%float_0_150000006 = OpConstant %float 0.150000006
        %130 = OpConstantComposite %v4float %float_0_100000001 %float_0_100000001 %float_0_100000001 %float_0_100000001
        %131 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %132 = OpTypeSampledImage %131
%_ptr_UniformConstant_132 = OpTypePointer UniformConstant %132
        %tex = OpVariable %_ptr_UniformConstant_132 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %Eye = OpVariable %_ptr_Function_v3float Function
  %Reflected = OpVariable %_ptr_Function_v3float Function
    %halfVec = OpVariable %_ptr_Function_v3float Function
       %diff = OpVariable %_ptr_Function_float Function
       %spec = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_v3float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
    %param_1 = OpVariable %_ptr_Function_v3float Function
  %intensity = OpVariable %_ptr_Function_float Function
   %IAmbient = OpVariable %_ptr_Function_v4float Function
   %IDiffuse = OpVariable %_ptr_Function_v4float Function
  %shininess = OpVariable %_ptr_Function_float Function
  %ISpecular = OpVariable %_ptr_Function_v4float Function
         %36 = OpLoad %v3float %inEyePos
         %37 = OpFNegate %v3float %36
         %38 = OpExtInst %v3float %1 Normalize %37
               OpStore %Eye %38
         %41 = OpLoad %v3float %inLightVec
         %42 = OpFNegate %v3float %41
         %44 = OpLoad %v3float %inNormal
         %45 = OpExtInst %v3float %1 Reflect %42 %44
         %46 = OpExtInst %v3float %1 Normalize %45
               OpStore %Reflected %46
         %48 = OpLoad %v3float %inLightVec
         %49 = OpLoad %v3float %inEyePos
         %50 = OpFAdd %v3float %48 %49
         %51 = OpExtInst %v3float %1 Normalize %50
               OpStore %halfVec %51
         %54 = OpLoad %v3float %inLightVec
         %55 = OpLoad %v3float %inNormal
         %56 = OpDot %float %54 %55
         %57 = OpExtInst %float %1 FClamp %56 %float_0 %float_1
               OpStore %diff %57
         %60 = OpLoad %v3float %inLightVec
               OpStore %param %60
         %62 = OpLoad %v3float %inNormal
               OpStore %param_0 %62
         %64 = OpLoad %v3float %halfVec
               OpStore %param_1 %64
         %65 = OpFunctionCall %float %specpart_vf3_vf3_vf3_ %param %param_0 %param_1
               OpStore %spec %65
         %68 = OpLoad %float %diff
         %69 = OpFAdd %float %float_0_100000001 %68
         %70 = OpLoad %float %spec
         %71 = OpFAdd %float %69 %70
               OpStore %intensity %71
               OpStore %IAmbient %76
         %80 = OpLoad %v3float %inNormal
         %81 = OpLoad %v3float %inLightVec
         %82 = OpDot %float %80 %81
         %83 = OpExtInst %float %1 FMax %82 %float_0
         %84 = OpVectorTimesScalar %v4float %79 %83
               OpStore %IDiffuse %84
               OpStore %shininess %float_0_75
         %89 = OpLoad %v3float %Reflected
         %90 = OpLoad %v3float %Eye
         %91 = OpDot %float %89 %90
         %92 = OpExtInst %float %1 FMax %91 %float_0
         %94 = OpExtInst %float %1 Pow %92 %float_2
         %95 = OpVectorTimesScalar %v4float %88 %94
         %96 = OpLoad %float %shininess
         %97 = OpVectorTimesScalar %v4float %95 %96
               OpStore %ISpecular %97
        %100 = OpLoad %v4float %IAmbient
        %101 = OpLoad %v4float %IDiffuse
        %102 = OpFAdd %v4float %100 %101
        %104 = OpLoad %v3float %inColor
        %105 = OpCompositeExtract %float %104 0
        %106 = OpCompositeExtract %float %104 1
        %107 = OpCompositeExtract %float %104 2
        %108 = OpCompositeConstruct %v4float %105 %106 %107 %float_1
        %109 = OpFMul %v4float %102 %108
        %110 = OpLoad %v4float %ISpecular
        %111 = OpFAdd %v4float %109 %110
        %112 = OpCompositeExtract %float %111 0
        %113 = OpCompositeExtract %float %111 1
        %114 = OpCompositeExtract %float %111 2
        %115 = OpCompositeExtract %float %111 3
        %116 = OpCompositeConstruct %v4float %112 %113 %114 %115
               OpStore %outFragColor %116
        %117 = OpLoad %float %intensity
        %119 = OpFOrdGreaterThan %bool %117 %float_0_949999988
               OpSelectionMerge %121 None
               OpBranchConditional %119 %120 %121
        %120 = OpLabel
        %123 = OpLoad %v4float %outFragColor
        %124 = OpVectorTimesScalar %v4float %123 %float_2_25
               OpStore %outFragColor %124
               OpBranch %121
        %121 = OpLabel
        %125 = OpLoad %float %intensity
        %127 = OpFOrdLessThan %bool %125 %float_0_150000006
               OpSelectionMerge %129 None
               OpBranchConditional %127 %128 %129
        %128 = OpLabel
               OpStore %outFragColor %130
               OpBranch %129
        %129 = OpLabel
               OpReturn
               OpFunctionEnd
%specpart_vf3_vf3_vf3_ = OpFunction %float None %9
          %L = OpFunctionParameter %_ptr_Function_v3float
          %N = OpFunctionParameter %_ptr_Function_v3float
          %H = OpFunctionParameter %_ptr_Function_v3float
         %14 = OpLabel
         %15 = OpLoad %v3float %N
         %16 = OpLoad %v3float %L
         %17 = OpDot %float %15 %16
         %20 = OpFOrdGreaterThan %bool %17 %float_0
               OpSelectionMerge %22 None
               OpBranchConditional %20 %21 %22
         %21 = OpLabel
         %23 = OpLoad %v3float %H
         %24 = OpLoad %v3float %N
         %25 = OpDot %float %23 %24
         %27 = OpExtInst %float %1 FClamp %25 %float_0 %float_1
         %29 = OpExtInst %float %1 Pow %27 %float_64
               OpReturnValue %29
         %22 = OpLabel
               OpReturnValue %float_0
               OpFunctionEnd
