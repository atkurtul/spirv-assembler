; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 43
; Schema: 0
               OpCapability Shader
               OpCapability SparseResidency
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inLodBias %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_ARB_sparse_texture2"
               OpSourceExtension "GL_ARB_sparse_texture_clamp"
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpName %residencyCode "residencyCode"
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
               OpName %inLodBias "inLodBias"
               OpName %ResType "ResType"
               OpName %texelResident "texelResident"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %inLodBias Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_0 = OpConstant %float 0
         %11 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
         %15 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %16 = OpTypeSampledImage %15
%_ptr_UniformConstant_16 = OpTypePointer UniformConstant %16
%samplerColor = OpVariable %_ptr_UniformConstant_16 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Input_float = OpTypePointer Input %float
  %inLodBias = OpVariable %_ptr_Input_float Input
    %ResType = OpTypeStruct %int %v4float
       %bool = OpTypeBool
%_ptr_Function_bool = OpTypePointer Function %bool
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
%residencyCode = OpVariable %_ptr_Function_int Function
%texelResident = OpVariable %_ptr_Function_bool Function
               OpStore %color %11
         %19 = OpLoad %16 %samplerColor
         %23 = OpLoad %v2float %inUV
         %26 = OpLoad %float %inLodBias
         %28 = OpImageSparseSampleImplicitLod %ResType %19 %23 Bias %26
         %29 = OpCompositeExtract %v4float %28 1
               OpStore %color %29
         %30 = OpCompositeExtract %int %28 0
               OpStore %residencyCode %30
         %34 = OpLoad %int %residencyCode
         %35 = OpImageSparseTexelsResident %bool %34
               OpStore %texelResident %35
         %36 = OpLoad %bool %texelResident
         %37 = OpLogicalNot %bool %36
               OpSelectionMerge %39 None
               OpBranchConditional %37 %38 %39
         %38 = OpLabel
               OpStore %color %11
               OpBranch %39
         %39 = OpLabel
         %42 = OpLoad %v4float %color
               OpStore %outFragColor %42
               OpReturn
               OpFunctionEnd
