; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 86
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %distance "distance"
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
               OpName %smoothWidth "smoothWidth"
               OpName %alpha "alpha"
               OpName %rgb "rgb"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "outlineColor"
               OpMemberName %UBO 1 "outlineWidth"
               OpMemberName %UBO 2 "outline"
               OpName %ubo "ubo"
               OpName %w "w"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 16
               OpMemberDecorate %UBO 2 Offset 20
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 2
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %9 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %10 = OpTypeSampledImage %9
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
%samplerColor = OpVariable %_ptr_UniformConstant_10 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
  %float_0_5 = OpConstant %float 0.5
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
        %UBO = OpTypeStruct %v4float %float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_0 = OpConstant %float 0
       %bool = OpTypeBool
    %float_1 = OpConstant %float 1
      %int_1 = OpConstant %int 1
      %int_0 = OpConstant %int 0
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %distance = OpVariable %_ptr_Function_float Function
%smoothWidth = OpVariable %_ptr_Function_float Function
      %alpha = OpVariable %_ptr_Function_float Function
        %rgb = OpVariable %_ptr_Function_v3float Function
          %w = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %samplerColor
         %17 = OpLoad %v2float %inUV
         %19 = OpImageSampleImplicitLod %v4float %13 %17
         %22 = OpCompositeExtract %float %19 3
               OpStore %distance %22
         %24 = OpLoad %float %distance
         %25 = OpFwidth %float %24
               OpStore %smoothWidth %25
         %28 = OpLoad %float %smoothWidth
         %29 = OpFSub %float %float_0_5 %28
         %30 = OpLoad %float %smoothWidth
         %31 = OpFAdd %float %float_0_5 %30
         %32 = OpLoad %float %distance
         %33 = OpExtInst %float %1 SmoothStep %29 %31 %32
               OpStore %alpha %33
         %37 = OpLoad %float %alpha
         %38 = OpCompositeConstruct %v3float %37 %37 %37
               OpStore %rgb %38
         %45 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
         %46 = OpLoad %float %45
         %49 = OpFOrdGreaterThan %bool %46 %float_0
               OpSelectionMerge %51 None
               OpBranchConditional %49 %50 %51
         %50 = OpLabel
         %55 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
         %56 = OpLoad %float %55
         %57 = OpFSub %float %float_1 %56
               OpStore %w %57
         %58 = OpLoad %float %w
         %59 = OpLoad %float %smoothWidth
         %60 = OpFSub %float %58 %59
         %61 = OpLoad %float %w
         %62 = OpLoad %float %smoothWidth
         %63 = OpFAdd %float %61 %62
         %64 = OpLoad %float %distance
         %65 = OpExtInst %float %1 SmoothStep %60 %63 %64
               OpStore %alpha %65
         %66 = OpLoad %float %alpha
         %67 = OpCompositeConstruct %v3float %66 %66 %66
         %70 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_0
         %71 = OpLoad %v4float %70
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpLoad %float %alpha
         %74 = OpCompositeConstruct %v3float %73 %73 %73
         %75 = OpExtInst %v3float %1 FMix %67 %72 %74
         %76 = OpLoad %v3float %rgb
         %77 = OpFAdd %v3float %76 %75
               OpStore %rgb %77
               OpBranch %51
         %51 = OpLabel
         %80 = OpLoad %v3float %rgb
         %81 = OpLoad %float %alpha
         %82 = OpCompositeExtract %float %80 0
         %83 = OpCompositeExtract %float %80 1
         %84 = OpCompositeExtract %float %80 2
         %85 = OpCompositeConstruct %v4float %82 %83 %84 %81
               OpStore %outFragColor %85
               OpReturn
               OpFunctionEnd
