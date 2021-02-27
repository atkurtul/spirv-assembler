; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 96
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %alpha "alpha"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "distortionAlpha"
               OpName %ubo "ubo"
               OpName %p1 "p1"
               OpName %inUV "inUV"
               OpName %p2 "p2"
               OpName %inside "inside"
               OpName %outColor "outColor"
               OpName %samplerView "samplerView"
               OpName %VIEW_LAYER "VIEW_LAYER"
               OpMemberDecorate %UBO 0 Offset 272
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %outColor Location 0
               OpDecorate %samplerView DescriptorSet 0
               OpDecorate %samplerView Binding 1
               OpDecorate %VIEW_LAYER SpecId 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
        %UBO = OpTypeStruct %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %float_2 = OpConstant %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %float_1 = OpConstant %float 1
  %float_0_5 = OpConstant %float 0.5
       %bool = OpTypeBool
%_ptr_Function_bool = OpTypePointer Function %bool
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
    %float_0 = OpConstant %float 0
     %uint_1 = OpConstant %uint 1
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %81 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %82 = OpTypeSampledImage %81
%_ptr_UniformConstant_82 = OpTypePointer UniformConstant %82
%samplerView = OpVariable %_ptr_UniformConstant_82 UniformConstant
 %VIEW_LAYER = OpSpecConstant %float 0
    %v3float = OpTypeVector %float 3
         %94 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
       %main = OpFunction %void None %3
          %5 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
         %p1 = OpVariable %_ptr_Function_v2float Function
         %p2 = OpVariable %_ptr_Function_v2float Function
     %inside = OpVariable %_ptr_Function_bool Function
         %78 = OpVariable %_ptr_Function_v4float Function
         %15 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %16 = OpLoad %float %15
               OpStore %alpha %16
         %23 = OpLoad %v2float %inUV
         %24 = OpVectorTimesScalar %v2float %23 %float_2
         %26 = OpCompositeConstruct %v2float %float_1 %float_1
         %27 = OpFSub %v2float %24 %26
         %28 = OpCompositeExtract %float %27 0
         %29 = OpCompositeExtract %float %27 1
         %30 = OpCompositeConstruct %v2float %28 %29
               OpStore %p1 %30
         %32 = OpLoad %v2float %p1
         %33 = OpLoad %float %alpha
         %34 = OpLoad %v2float %p1
         %35 = OpExtInst %float %1 Length %34
         %36 = OpFMul %float %33 %35
         %37 = OpFSub %float %float_1 %36
         %38 = OpCompositeConstruct %v2float %37 %37
         %39 = OpFDiv %v2float %32 %38
               OpStore %p2 %39
         %40 = OpLoad %v2float %p2
         %41 = OpCompositeConstruct %v2float %float_1 %float_1
         %42 = OpFAdd %v2float %40 %41
         %44 = OpVectorTimesScalar %v2float %42 %float_0_5
               OpStore %p2 %44
         %50 = OpAccessChain %_ptr_Function_float %p2 %uint_0
         %51 = OpLoad %float %50
         %53 = OpFOrdGreaterThanEqual %bool %51 %float_0
               OpSelectionMerge %55 None
               OpBranchConditional %53 %54 %55
         %54 = OpLabel
         %56 = OpAccessChain %_ptr_Function_float %p2 %uint_0
         %57 = OpLoad %float %56
         %58 = OpFOrdLessThanEqual %bool %57 %float_1
               OpBranch %55
         %55 = OpLabel
         %59 = OpPhi %bool %53 %5 %58 %54
               OpSelectionMerge %61 None
               OpBranchConditional %59 %60 %61
         %60 = OpLabel
         %63 = OpAccessChain %_ptr_Function_float %p2 %uint_1
         %64 = OpLoad %float %63
         %65 = OpFOrdGreaterThanEqual %bool %64 %float_0
               OpBranch %61
         %61 = OpLabel
         %66 = OpPhi %bool %59 %55 %65 %60
               OpSelectionMerge %68 None
               OpBranchConditional %66 %67 %68
         %67 = OpLabel
         %69 = OpAccessChain %_ptr_Function_float %p2 %uint_1
         %70 = OpLoad %float %69
         %71 = OpFOrdLessThanEqual %bool %70 %float_1
               OpBranch %68
         %68 = OpLabel
         %72 = OpPhi %bool %66 %61 %71 %67
               OpStore %inside %72
         %76 = OpLoad %bool %inside
               OpSelectionMerge %80 None
               OpBranchConditional %76 %79 %93
         %79 = OpLabel
         %85 = OpLoad %82 %samplerView
         %86 = OpLoad %v2float %p2
         %89 = OpCompositeExtract %float %86 0
         %90 = OpCompositeExtract %float %86 1
         %91 = OpCompositeConstruct %v3float %89 %90 %VIEW_LAYER
         %92 = OpImageSampleImplicitLod %v4float %85 %91
               OpStore %78 %92
               OpBranch %80
         %93 = OpLabel
               OpStore %78 %94
               OpBranch %80
         %80 = OpLabel
         %95 = OpLoad %v4float %78
               OpStore %outColor %95
               OpReturn
               OpFunctionEnd
