; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 97
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
               OpName %colorMap "colorMap"
               OpName %inUV "inUV"
               OpDecorate %inColor Location 2
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 4
               OpDecorate %inViewVec Location 3
               OpDecorate %outFragColor Location 0
               OpDecorate %colorMap DescriptorSet 0
               OpDecorate %colorMap Binding 1
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %float_0 = OpConstant %float 0
         %11 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %bool = OpTypeBool
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
%float_0_899999976 = OpConstant %float 0.899999976
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
 %float_0_25 = OpConstant %float 0.25
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %float_8 = OpConstant %float 8
 %float_0_75 = OpConstant %float 0.75
         %75 = OpConstantComposite %v3float %float_0_75 %float_0_75 %float_0_75
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
         %90 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %91 = OpTypeSampledImage %90
%_ptr_UniformConstant_91 = OpTypePointer UniformConstant %91
   %colorMap = OpVariable %_ptr_UniformConstant_91 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
    %ambient = OpVariable %_ptr_Function_v3float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
               OpStore %ambient %11
         %18 = OpAccessChain %_ptr_Input_float %inColor %uint_0
         %19 = OpLoad %float %18
         %21 = OpFOrdGreaterThanEqual %bool %19 %float_0_899999976
         %22 = OpLogicalNot %bool %21
               OpSelectionMerge %24 None
               OpBranchConditional %22 %23 %24
         %23 = OpLabel
         %26 = OpAccessChain %_ptr_Input_float %inColor %uint_1
         %27 = OpLoad %float %26
         %28 = OpFOrdGreaterThanEqual %bool %27 %float_0_899999976
               OpBranch %24
         %24 = OpLabel
         %29 = OpPhi %bool %21 %5 %28 %23
         %30 = OpLogicalNot %bool %29
               OpSelectionMerge %32 None
               OpBranchConditional %30 %31 %32
         %31 = OpLabel
         %34 = OpAccessChain %_ptr_Input_float %inColor %uint_2
         %35 = OpLoad %float %34
         %36 = OpFOrdGreaterThanEqual %bool %35 %float_0_899999976
               OpBranch %32
         %32 = OpLabel
         %37 = OpPhi %bool %29 %24 %36 %31
               OpSelectionMerge %39 None
               OpBranchConditional %37 %38 %39
         %38 = OpLabel
         %40 = OpLoad %v3float %inColor
         %42 = OpVectorTimesScalar %v3float %40 %float_0_25
               OpStore %ambient %42
               OpBranch %39
         %39 = OpLabel
         %45 = OpLoad %v3float %inNormal
         %46 = OpExtInst %v3float %1 Normalize %45
               OpStore %N %46
         %49 = OpLoad %v3float %inLightVec
         %50 = OpExtInst %v3float %1 Normalize %49
               OpStore %L %50
         %53 = OpLoad %v3float %inViewVec
         %54 = OpExtInst %v3float %1 Normalize %53
               OpStore %V %54
         %56 = OpLoad %v3float %L
         %57 = OpFNegate %v3float %56
         %58 = OpLoad %v3float %N
         %59 = OpExtInst %v3float %1 Reflect %57 %58
               OpStore %R %59
         %61 = OpLoad %v3float %N
         %62 = OpLoad %v3float %L
         %63 = OpDot %float %61 %62
         %64 = OpExtInst %float %1 FMax %63 %float_0
         %65 = OpLoad %v3float %inColor
         %66 = OpVectorTimesScalar %v3float %65 %64
               OpStore %diffuse %66
         %68 = OpLoad %v3float %R
         %69 = OpLoad %v3float %V
         %70 = OpDot %float %68 %69
         %71 = OpExtInst %float %1 FMax %70 %float_0
         %73 = OpExtInst %float %1 Pow %71 %float_8
         %76 = OpVectorTimesScalar %v3float %75 %73
               OpStore %specular %76
         %80 = OpLoad %v3float %ambient
         %81 = OpLoad %v3float %diffuse
         %82 = OpFAdd %v3float %80 %81
         %83 = OpLoad %v3float %specular
         %84 = OpFAdd %v3float %82 %83
         %86 = OpCompositeExtract %float %84 0
         %87 = OpCompositeExtract %float %84 1
         %88 = OpCompositeExtract %float %84 2
         %89 = OpCompositeConstruct %v4float %86 %87 %88 %float_1
               OpStore %outFragColor %89
               OpReturn
               OpFunctionEnd
