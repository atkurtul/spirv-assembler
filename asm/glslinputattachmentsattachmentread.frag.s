; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 96
; Schema: 0
               OpCapability Shader
               OpCapability InputAttachment
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %brightnessContrast_vf3_f1_f1_ "brightnessContrast(vf3;f1;f1;"
               OpName %color "color"
               OpName %brightness "brightness"
               OpName %contrast "contrast"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "brightnessContrast"
               OpMemberName %UBO 1 "range"
               OpMemberName %UBO 2 "attachmentIndex"
               OpName %ubo "ubo"
               OpName %color_0 "color"
               OpName %inputColor "inputColor"
               OpName %outColor "outColor"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %depth "depth"
               OpName %inputDepth "inputDepth"
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 8
               OpMemberDecorate %UBO 2 Offset 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 2
               OpDecorate %inputColor DescriptorSet 0
               OpDecorate %inputColor Binding 0
               OpDecorate %inputColor InputAttachmentIndex 0
               OpDecorate %outColor Location 0
               OpDecorate %inputDepth DescriptorSet 0
               OpDecorate %inputDepth Binding 1
               OpDecorate %inputDepth InputAttachmentIndex 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Function_float = OpTypePointer Function %float
         %10 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_float %_ptr_Function_float
  %float_0_5 = OpConstant %float 0.5
    %v2float = OpTypeVector %float 2
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %v2float %v2float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_0 = OpConstant %int 0
       %bool = OpTypeBool
         %44 = OpTypeImage %float SubpassData 0 0 0 2 Unknown
%_ptr_UniformConstant_44 = OpTypePointer UniformConstant %44
 %inputColor = OpVariable %_ptr_UniformConstant_44 UniformConstant
      %v2int = OpTypeVector %int 2
         %49 = OpConstantComposite %v2int %int_0 %int_0
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
     %uint_1 = OpConstant %uint 1
      %int_1 = OpConstant %int 1
 %inputDepth = OpVariable %_ptr_UniformConstant_44 UniformConstant
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
    %color_0 = OpVariable %_ptr_Function_v3float Function
      %param = OpVariable %_ptr_Function_v3float Function
    %param_0 = OpVariable %_ptr_Function_float Function
    %param_1 = OpVariable %_ptr_Function_float Function
      %depth = OpVariable %_ptr_Function_float Function
         %36 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
         %37 = OpLoad %int %36
         %40 = OpIEqual %bool %37 %int_0
               OpSelectionMerge %42 None
               OpBranchConditional %40 %41 %42
         %41 = OpLabel
         %47 = OpLoad %44 %inputColor
         %51 = OpImageRead %v4float %47 %49
         %52 = OpVectorShuffle %v3float %51 %51 0 1 2
               OpStore %color_0 %52
         %56 = OpLoad %v3float %color_0
               OpStore %param %56
         %61 = OpAccessChain %_ptr_Uniform_float %ubo %int_0 %uint_0
         %62 = OpLoad %float %61
               OpStore %param_0 %62
         %65 = OpAccessChain %_ptr_Uniform_float %ubo %int_0 %uint_1
         %66 = OpLoad %float %65
               OpStore %param_1 %66
         %67 = OpFunctionCall %v3float %brightnessContrast_vf3_f1_f1_ %param %param_0 %param_1
         %68 = OpLoad %v4float %outColor
         %69 = OpVectorShuffle %v4float %68 %67 4 5 6 3
               OpStore %outColor %69
               OpBranch %42
         %42 = OpLabel
         %70 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
         %71 = OpLoad %int %70
         %73 = OpIEqual %bool %71 %int_1
               OpSelectionMerge %75 None
               OpBranchConditional %73 %74 %75
         %74 = OpLabel
         %78 = OpLoad %44 %inputDepth
         %79 = OpImageRead %v4float %78 %49
         %80 = OpCompositeExtract %float %79 0
               OpStore %depth %80
         %81 = OpLoad %float %depth
         %82 = OpAccessChain %_ptr_Uniform_float %ubo %int_1 %uint_0
         %83 = OpLoad %float %82
         %84 = OpFSub %float %81 %83
         %86 = OpFMul %float %84 %float_1
         %87 = OpAccessChain %_ptr_Uniform_float %ubo %int_1 %uint_1
         %88 = OpLoad %float %87
         %89 = OpAccessChain %_ptr_Uniform_float %ubo %int_1 %uint_0
         %90 = OpLoad %float %89
         %91 = OpFSub %float %88 %90
         %92 = OpFDiv %float %86 %91
         %93 = OpCompositeConstruct %v3float %92 %92 %92
         %94 = OpLoad %v4float %outColor
         %95 = OpVectorShuffle %v4float %94 %93 4 5 6 3
               OpStore %outColor %95
               OpBranch %75
         %75 = OpLabel
               OpReturn
               OpFunctionEnd
%brightnessContrast_vf3_f1_f1_ = OpFunction %v3float None %10
      %color = OpFunctionParameter %_ptr_Function_v3float
 %brightness = OpFunctionParameter %_ptr_Function_float
   %contrast = OpFunctionParameter %_ptr_Function_float
         %15 = OpLabel
         %16 = OpLoad %v3float %color
         %18 = OpCompositeConstruct %v3float %float_0_5 %float_0_5 %float_0_5
         %19 = OpFSub %v3float %16 %18
         %20 = OpLoad %float %contrast
         %21 = OpVectorTimesScalar %v3float %19 %20
         %22 = OpCompositeConstruct %v3float %float_0_5 %float_0_5 %float_0_5
         %23 = OpFAdd %v3float %21 %22
         %24 = OpLoad %float %brightness
         %25 = OpCompositeConstruct %v3float %24 %24 %24
         %26 = OpFAdd %v3float %23 %25
               OpReturnValue %26
               OpFunctionEnd
