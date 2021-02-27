; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 56
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inColor %outFragColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %inColor "inColor"
               OpName %outFragColor "outFragColor"
               OpName %samplerGradientRamp "samplerGradientRamp"
               OpName %inUV "inUV"
               OpDecorate %inColor Location 0
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerGradientRamp DescriptorSet 0
               OpDecorate %samplerGradientRamp Binding 1
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
       %bool = OpTypeBool
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
%float_0_899999976 = OpConstant %float 0.899999976
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %39 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %40 = OpTypeSampledImage %39
%_ptr_UniformConstant_40 = OpTypePointer UniformConstant %40
%samplerGradientRamp = OpVariable %_ptr_UniformConstant_40 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
         %14 = OpAccessChain %_ptr_Input_float %inColor %uint_0
         %15 = OpLoad %float %14
         %17 = OpFOrdGreaterThanEqual %bool %15 %float_0_899999976
         %18 = OpLogicalNot %bool %17
               OpSelectionMerge %20 None
               OpBranchConditional %18 %19 %20
         %19 = OpLabel
         %22 = OpAccessChain %_ptr_Input_float %inColor %uint_1
         %23 = OpLoad %float %22
         %24 = OpFOrdGreaterThanEqual %bool %23 %float_0_899999976
               OpBranch %20
         %20 = OpLabel
         %25 = OpPhi %bool %17 %5 %24 %19
         %26 = OpLogicalNot %bool %25
               OpSelectionMerge %28 None
               OpBranchConditional %26 %27 %28
         %27 = OpLabel
         %30 = OpAccessChain %_ptr_Input_float %inColor %uint_2
         %31 = OpLoad %float %30
         %32 = OpFOrdGreaterThanEqual %bool %31 %float_0_899999976
               OpBranch %28
         %28 = OpLabel
         %33 = OpPhi %bool %25 %20 %32 %27
               OpSelectionMerge %35 None
               OpBranchConditional %33 %34 %52
         %34 = OpLabel
         %43 = OpLoad %40 %samplerGradientRamp
         %47 = OpLoad %v2float %inUV
         %48 = OpImageSampleImplicitLod %v4float %43 %47
         %49 = OpVectorShuffle %v3float %48 %48 0 1 2
         %50 = OpLoad %v4float %outFragColor
         %51 = OpVectorShuffle %v4float %50 %49 4 5 6 3
               OpStore %outFragColor %51
               OpBranch %35
         %52 = OpLabel
         %53 = OpLoad %v3float %inColor
         %54 = OpLoad %v4float %outFragColor
         %55 = OpVectorShuffle %v4float %54 %53 4 5 6 3
               OpStore %outFragColor %55
               OpBranch %35
         %35 = OpLabel
               OpReturn
               OpFunctionEnd
