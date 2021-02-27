; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 133
; Schema: 0
               OpCapability Shader
               OpCapability InputAttachment
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %fragPos "fragPos"
               OpName %samplerposition "samplerposition"
               OpName %normal "normal"
               OpName %samplerNormal "samplerNormal"
               OpName %albedo "albedo"
               OpName %samplerAlbedo "samplerAlbedo"
               OpName %fragcolor "fragcolor"
               OpName %i "i"
               OpName %NUM_LIGHTS "NUM_LIGHTS"
               OpName %L "L"
               OpName %Light "Light"
               OpMemberName %Light 0 "position"
               OpMemberName %Light 1 "color"
               OpMemberName %Light 2 "radius"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "viewPos"
               OpMemberName %UBO 1 "lights"
               OpName %ubo "ubo"
               OpName %dist "dist"
               OpName %V "V"
               OpName %atten "atten"
               OpName %N "N"
               OpName %NdotL "NdotL"
               OpName %diff "diff"
               OpName %R "R"
               OpName %NdotR "NdotR"
               OpName %outColor "outColor"
               OpName %inUV "inUV"
               OpDecorate %samplerposition DescriptorSet 0
               OpDecorate %samplerposition Binding 0
               OpDecorate %samplerposition InputAttachmentIndex 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 1
               OpDecorate %samplerNormal InputAttachmentIndex 1
               OpDecorate %samplerAlbedo DescriptorSet 0
               OpDecorate %samplerAlbedo Binding 2
               OpDecorate %samplerAlbedo InputAttachmentIndex 2
               OpDecorate %NUM_LIGHTS SpecId 0
               OpMemberDecorate %Light 0 Offset 0
               OpMemberDecorate %Light 1 Offset 16
               OpMemberDecorate %Light 2 Offset 28
               OpDecorate %_arr_Light_NUM_LIGHTS ArrayStride 32
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 3
               OpDecorate %outColor Location 0
               OpDecorate %inUV Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %10 = OpTypeImage %float SubpassData 0 0 0 2 Unknown
%_ptr_UniformConstant_10 = OpTypePointer UniformConstant %10
%samplerposition = OpVariable %_ptr_UniformConstant_10 UniformConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
      %v2int = OpTypeVector %int 2
         %17 = OpConstantComposite %v2int %int_0 %int_0
    %v4float = OpTypeVector %float 4
%samplerNormal = OpVariable %_ptr_UniformConstant_10 UniformConstant
%_ptr_Function_v4float = OpTypePointer Function %v4float
%samplerAlbedo = OpVariable %_ptr_UniformConstant_10 UniformConstant
%float_0_150000006 = OpConstant %float 0.150000006
%_ptr_Function_int = OpTypePointer Function %int
 %NUM_LIGHTS = OpSpecConstant %int 64
       %bool = OpTypeBool
      %Light = OpTypeStruct %v4float %v3float %float
%_arr_Light_NUM_LIGHTS = OpTypeArray %Light %NUM_LIGHTS
        %UBO = OpTypeStruct %v4float %_arr_Light_NUM_LIGHTS
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Function_float = OpTypePointer Function %float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
    %fragPos = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
     %albedo = OpVariable %_ptr_Function_v4float Function
  %fragcolor = OpVariable %_ptr_Function_v3float Function
          %i = OpVariable %_ptr_Function_int Function
          %L = OpVariable %_ptr_Function_v3float Function
       %dist = OpVariable %_ptr_Function_float Function
          %V = OpVariable %_ptr_Function_v3float Function
      %atten = OpVariable %_ptr_Function_float Function
          %N = OpVariable %_ptr_Function_v3float Function
      %NdotL = OpVariable %_ptr_Function_float Function
       %diff = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
      %NdotR = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %10 %samplerposition
         %19 = OpImageRead %v4float %13 %17
         %20 = OpVectorShuffle %v3float %19 %19 0 1 2
               OpStore %fragPos %20
         %23 = OpLoad %10 %samplerNormal
         %24 = OpImageRead %v4float %23 %17
         %25 = OpVectorShuffle %v3float %24 %24 0 1 2
               OpStore %normal %25
         %29 = OpLoad %10 %samplerAlbedo
         %30 = OpImageRead %v4float %29 %17
               OpStore %albedo %30
         %32 = OpLoad %v4float %albedo
         %33 = OpVectorShuffle %v3float %32 %32 0 1 2
         %35 = OpVectorTimesScalar %v3float %33 %float_0_150000006
               OpStore %fragcolor %35
               OpStore %i %int_0
               OpBranch %38
         %38 = OpLabel
               OpLoopMerge %40 %41 None
               OpBranch %42
         %42 = OpLabel
         %43 = OpLoad %int %i
         %46 = OpSLessThan %bool %43 %NUM_LIGHTS
               OpBranchConditional %46 %39 %40
         %39 = OpLabel
         %54 = OpLoad %int %i
         %56 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1 %54 %int_0
         %57 = OpLoad %v4float %56
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpLoad %v3float %fragPos
         %60 = OpFSub %v3float %58 %59
               OpStore %L %60
         %63 = OpLoad %v3float %L
         %64 = OpExtInst %float %1 Length %63
               OpStore %dist %64
         %66 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_0
         %67 = OpLoad %v4float %66
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
         %69 = OpLoad %v3float %fragPos
         %70 = OpFSub %v3float %68 %69
               OpStore %V %70
         %71 = OpLoad %v3float %V
         %72 = OpExtInst %v3float %1 Normalize %71
               OpStore %V %72
         %73 = OpLoad %v3float %L
         %74 = OpExtInst %v3float %1 Normalize %73
               OpStore %L %74
         %76 = OpLoad %int %i
         %79 = OpAccessChain %_ptr_Uniform_float %ubo %int_1 %76 %int_2
         %80 = OpLoad %float %79
         %81 = OpLoad %float %dist
         %83 = OpExtInst %float %1 Pow %81 %float_2
         %85 = OpFAdd %float %83 %float_1
         %86 = OpFDiv %float %80 %85
               OpStore %atten %86
         %88 = OpLoad %v3float %normal
         %89 = OpExtInst %v3float %1 Normalize %88
               OpStore %N %89
         %92 = OpLoad %v3float %N
         %93 = OpLoad %v3float %L
         %94 = OpDot %float %92 %93
         %95 = OpExtInst %float %1 FMax %float_0 %94
               OpStore %NdotL %95
         %97 = OpLoad %int %i
         %99 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_1 %97 %int_1
        %100 = OpLoad %v3float %99
        %101 = OpLoad %v4float %albedo
        %102 = OpVectorShuffle %v3float %101 %101 0 1 2
        %103 = OpFMul %v3float %100 %102
        %104 = OpLoad %float %NdotL
        %105 = OpVectorTimesScalar %v3float %103 %104
        %106 = OpLoad %float %atten
        %107 = OpVectorTimesScalar %v3float %105 %106
               OpStore %diff %107
        %109 = OpLoad %v3float %L
        %110 = OpFNegate %v3float %109
        %111 = OpLoad %v3float %N
        %112 = OpExtInst %v3float %1 Reflect %110 %111
               OpStore %R %112
        %114 = OpLoad %v3float %R
        %115 = OpLoad %v3float %V
        %116 = OpDot %float %114 %115
        %117 = OpExtInst %float %1 FMax %float_0 %116
               OpStore %NdotR %117
        %118 = OpLoad %v3float %diff
        %119 = OpLoad %v3float %fragcolor
        %120 = OpFAdd %v3float %119 %118
               OpStore %fragcolor %120
               OpBranch %41
         %41 = OpLabel
        %121 = OpLoad %int %i
        %122 = OpIAdd %int %121 %int_1
               OpStore %i %122
               OpBranch %38
         %40 = OpLabel
        %125 = OpLoad %v3float %fragcolor
        %126 = OpCompositeExtract %float %125 0
        %127 = OpCompositeExtract %float %125 1
        %128 = OpCompositeExtract %float %125 2
        %129 = OpCompositeConstruct %v4float %126 %127 %128 %float_1
               OpStore %outColor %129
               OpReturn
               OpFunctionEnd
