; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 82
; Schema: 0
               OpCapability Shader
               OpCapability InputAttachment
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %gl_FragCoord %outColor %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %linearDepth_f1_ "linearDepth(f1;"
               OpName %depth "depth"
               OpName %z "z"
               OpName %NEAR_PLANE "NEAR_PLANE"
               OpName %FAR_PLANE "FAR_PLANE"
               OpName %depth_0 "depth"
               OpName %samplerPositionDepth "samplerPositionDepth"
               OpName %sampledColor "sampledColor"
               OpName %samplerTexture "samplerTexture"
               OpName %inUV "inUV"
               OpName %gl_FragCoord "gl_FragCoord"
               OpName %param "param"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpDecorate %NEAR_PLANE SpecId 0
               OpDecorate %FAR_PLANE SpecId 1
               OpDecorate %samplerPositionDepth DescriptorSet 0
               OpDecorate %samplerPositionDepth Binding 1
               OpDecorate %samplerPositionDepth InputAttachmentIndex 0
               OpDecorate %samplerTexture DescriptorSet 0
               OpDecorate %samplerTexture Binding 2
               OpDecorate %inUV Location 1
               OpDecorate %gl_FragCoord BuiltIn FragCoord
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %8 = OpTypeFunction %float %_ptr_Function_float
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
 %NEAR_PLANE = OpSpecConstant %float 0.100000001
  %FAR_PLANE = OpSpecConstant %float 256
         %31 = OpTypeImage %float SubpassData 0 0 0 2 Unknown
%_ptr_UniformConstant_31 = OpTypePointer UniformConstant %31
%samplerPositionDepth = OpVariable %_ptr_UniformConstant_31 UniformConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
      %v2int = OpTypeVector %int 2
         %38 = OpConstantComposite %v2int %int_0 %int_0
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %46 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %47 = OpTypeSampledImage %46
%_ptr_UniformConstant_47 = OpTypePointer UniformConstant %47
%samplerTexture = OpVariable %_ptr_UniformConstant_47 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %bool = OpTypeBool
    %float_0 = OpConstant %float 0
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_FragCoord = OpVariable %_ptr_Input_v4float Input
     %uint_2 = OpConstant %uint 2
%_ptr_Input_float = OpTypePointer Input %float
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
    %depth_0 = OpVariable %_ptr_Function_float Function
%sampledColor = OpVariable %_ptr_Function_v4float Function
      %param = OpVariable %_ptr_Function_float Function
         %34 = OpLoad %31 %samplerPositionDepth
         %40 = OpImageRead %v4float %34 %38
         %43 = OpCompositeExtract %float %40 3
               OpStore %depth_0 %43
         %50 = OpLoad %47 %samplerTexture
         %54 = OpLoad %v2float %inUV
         %55 = OpImageSampleImplicitLod %v4float %50 %54
               OpStore %sampledColor %55
         %57 = OpLoad %float %depth_0
         %59 = OpFUnordNotEqual %bool %57 %float_0
               OpSelectionMerge %61 None
               OpBranchConditional %59 %60 %61
         %60 = OpLabel
         %67 = OpAccessChain %_ptr_Input_float %gl_FragCoord %uint_2
         %68 = OpLoad %float %67
               OpStore %param %68
         %69 = OpFunctionCall %float %linearDepth_f1_ %param
         %70 = OpLoad %float %depth_0
         %71 = OpFOrdGreaterThan %bool %69 %70
               OpBranch %61
         %61 = OpLabel
         %72 = OpPhi %bool %59 %5 %71 %60
               OpSelectionMerge %74 None
               OpBranchConditional %72 %73 %74
         %73 = OpLabel
               OpKill
         %74 = OpLabel
         %78 = OpLoad %v4float %sampledColor
               OpStore %outColor %78
               OpReturn
               OpFunctionEnd
%linearDepth_f1_ = OpFunction %float None %8
      %depth = OpFunctionParameter %_ptr_Function_float
         %11 = OpLabel
          %z = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %float %depth
         %15 = OpFMul %float %13 %float_2
         %17 = OpFSub %float %15 %float_1
               OpStore %z %17
         %19 = OpFMul %float %float_2 %NEAR_PLANE
         %21 = OpFMul %float %19 %FAR_PLANE
         %22 = OpFAdd %float %FAR_PLANE %NEAR_PLANE
         %23 = OpLoad %float %z
         %24 = OpFSub %float %FAR_PLANE %NEAR_PLANE
         %25 = OpFMul %float %23 %24
         %26 = OpFSub %float %22 %25
         %27 = OpFDiv %float %21 %26
               OpReturnValue %27
               OpFunctionEnd
