; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 172
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %weight "weight"
               OpName %tex_offset "tex_offset"
               OpName %samplerColor "samplerColor"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "blurScale"
               OpMemberName %UBO 1 "blurStrength"
               OpName %ubo "ubo"
               OpName %result "result"
               OpName %inUV "inUV"
               OpName %i "i"
               OpName %blurdirection "blurdirection"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %blurdirection SpecId 0
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
       %uint = OpTypeInt 32 0
     %uint_5 = OpConstant %uint 5
%_arr_float_uint_5 = OpTypeArray %float %uint_5
%_ptr_Function__arr_float_uint_5 = OpTypePointer Function %_arr_float_uint_5
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%float_0_227026999 = OpConstant %float 0.227026999
%_ptr_Function_float = OpTypePointer Function %float
      %int_1 = OpConstant %int 1
%float_0_194594607 = OpConstant %float 0.194594607
      %int_2 = OpConstant %int 2
%float_0_121621601 = OpConstant %float 0.121621601
      %int_3 = OpConstant %int 3
%float_0_0540539995 = OpConstant %float 0.0540539995
      %int_4 = OpConstant %int 4
%float_0_0162160005 = OpConstant %float 0.0162160005
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %float_1 = OpConstant %float 1
         %33 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %34 = OpTypeSampledImage %33
%_ptr_UniformConstant_34 = OpTypePointer UniformConstant %34
%samplerColor = OpVariable %_ptr_UniformConstant_34 UniformConstant
      %v2int = OpTypeVector %int 2
        %UBO = OpTypeStruct %float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_int = OpTypePointer Function %int
      %int_5 = OpConstant %int 5
       %bool = OpTypeBool
%blurdirection = OpSpecConstant %int 0
         %76 = OpSpecConstantOp %bool IEqual %blurdirection %int_1
     %uint_0 = OpConstant %uint 0
    %float_0 = OpConstant %float 0
     %uint_1 = OpConstant %uint 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
     %weight = OpVariable %_ptr_Function__arr_float_uint_5 Function
 %tex_offset = OpVariable %_ptr_Function_v2float Function
     %result = OpVariable %_ptr_Function_v3float Function
          %i = OpVariable %_ptr_Function_int Function
         %16 = OpAccessChain %_ptr_Function_float %weight %int_0
               OpStore %16 %float_0_227026999
         %19 = OpAccessChain %_ptr_Function_float %weight %int_1
               OpStore %19 %float_0_194594607
         %22 = OpAccessChain %_ptr_Function_float %weight %int_2
               OpStore %22 %float_0_121621601
         %25 = OpAccessChain %_ptr_Function_float %weight %int_3
               OpStore %25 %float_0_0540539995
         %28 = OpAccessChain %_ptr_Function_float %weight %int_4
               OpStore %28 %float_0_0162160005
         %37 = OpLoad %34 %samplerColor
         %38 = OpImage %33 %37
         %40 = OpImageQuerySizeLod %v2int %38 %int_0
         %41 = OpConvertSToF %v2float %40
         %42 = OpCompositeConstruct %v2float %float_1 %float_1
         %43 = OpFDiv %v2float %42 %41
         %48 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
         %49 = OpLoad %float %48
         %50 = OpVectorTimesScalar %v2float %43 %49
               OpStore %tex_offset %50
         %54 = OpLoad %34 %samplerColor
         %57 = OpLoad %v2float %inUV
         %59 = OpImageSampleImplicitLod %v4float %54 %57
         %60 = OpVectorShuffle %v3float %59 %59 0 1 2
         %61 = OpAccessChain %_ptr_Function_float %weight %int_0
         %62 = OpLoad %float %61
         %63 = OpVectorTimesScalar %v3float %60 %62
               OpStore %result %63
               OpStore %i %int_1
               OpBranch %66
         %66 = OpLabel
               OpLoopMerge %68 %69 None
               OpBranch %70
         %70 = OpLabel
         %71 = OpLoad %int %i
         %74 = OpSLessThan %bool %71 %int_5
               OpBranchConditional %74 %67 %68
         %67 = OpLabel
               OpSelectionMerge %78 None
               OpBranchConditional %76 %77 %121
         %77 = OpLabel
         %79 = OpLoad %34 %samplerColor
         %80 = OpLoad %v2float %inUV
         %82 = OpAccessChain %_ptr_Function_float %tex_offset %uint_0
         %83 = OpLoad %float %82
         %84 = OpLoad %int %i
         %85 = OpConvertSToF %float %84
         %86 = OpFMul %float %83 %85
         %88 = OpCompositeConstruct %v2float %86 %float_0
         %89 = OpFAdd %v2float %80 %88
         %90 = OpImageSampleImplicitLod %v4float %79 %89
         %91 = OpVectorShuffle %v3float %90 %90 0 1 2
         %92 = OpLoad %int %i
         %93 = OpAccessChain %_ptr_Function_float %weight %92
         %94 = OpLoad %float %93
         %95 = OpVectorTimesScalar %v3float %91 %94
         %96 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
         %97 = OpLoad %float %96
         %98 = OpVectorTimesScalar %v3float %95 %97
         %99 = OpLoad %v3float %result
        %100 = OpFAdd %v3float %99 %98
               OpStore %result %100
        %101 = OpLoad %34 %samplerColor
        %102 = OpLoad %v2float %inUV
        %103 = OpAccessChain %_ptr_Function_float %tex_offset %uint_0
        %104 = OpLoad %float %103
        %105 = OpLoad %int %i
        %106 = OpConvertSToF %float %105
        %107 = OpFMul %float %104 %106
        %108 = OpCompositeConstruct %v2float %107 %float_0
        %109 = OpFSub %v2float %102 %108
        %110 = OpImageSampleImplicitLod %v4float %101 %109
        %111 = OpVectorShuffle %v3float %110 %110 0 1 2
        %112 = OpLoad %int %i
        %113 = OpAccessChain %_ptr_Function_float %weight %112
        %114 = OpLoad %float %113
        %115 = OpVectorTimesScalar %v3float %111 %114
        %116 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
        %117 = OpLoad %float %116
        %118 = OpVectorTimesScalar %v3float %115 %117
        %119 = OpLoad %v3float %result
        %120 = OpFAdd %v3float %119 %118
               OpStore %result %120
               OpBranch %78
        %121 = OpLabel
        %122 = OpLoad %34 %samplerColor
        %123 = OpLoad %v2float %inUV
        %125 = OpAccessChain %_ptr_Function_float %tex_offset %uint_1
        %126 = OpLoad %float %125
        %127 = OpLoad %int %i
        %128 = OpConvertSToF %float %127
        %129 = OpFMul %float %126 %128
        %130 = OpCompositeConstruct %v2float %float_0 %129
        %131 = OpFAdd %v2float %123 %130
        %132 = OpImageSampleImplicitLod %v4float %122 %131
        %133 = OpVectorShuffle %v3float %132 %132 0 1 2
        %134 = OpLoad %int %i
        %135 = OpAccessChain %_ptr_Function_float %weight %134
        %136 = OpLoad %float %135
        %137 = OpVectorTimesScalar %v3float %133 %136
        %138 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
        %139 = OpLoad %float %138
        %140 = OpVectorTimesScalar %v3float %137 %139
        %141 = OpLoad %v3float %result
        %142 = OpFAdd %v3float %141 %140
               OpStore %result %142
        %143 = OpLoad %34 %samplerColor
        %144 = OpLoad %v2float %inUV
        %145 = OpAccessChain %_ptr_Function_float %tex_offset %uint_1
        %146 = OpLoad %float %145
        %147 = OpLoad %int %i
        %148 = OpConvertSToF %float %147
        %149 = OpFMul %float %146 %148
        %150 = OpCompositeConstruct %v2float %float_0 %149
        %151 = OpFSub %v2float %144 %150
        %152 = OpImageSampleImplicitLod %v4float %143 %151
        %153 = OpVectorShuffle %v3float %152 %152 0 1 2
        %154 = OpLoad %int %i
        %155 = OpAccessChain %_ptr_Function_float %weight %154
        %156 = OpLoad %float %155
        %157 = OpVectorTimesScalar %v3float %153 %156
        %158 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
        %159 = OpLoad %float %158
        %160 = OpVectorTimesScalar %v3float %157 %159
        %161 = OpLoad %v3float %result
        %162 = OpFAdd %v3float %161 %160
               OpStore %result %162
               OpBranch %78
         %78 = OpLabel
               OpBranch %69
         %69 = OpLabel
        %163 = OpLoad %int %i
        %164 = OpIAdd %int %163 %int_1
               OpStore %i %164
               OpBranch %66
         %68 = OpLabel
        %167 = OpLoad %v3float %result
        %168 = OpCompositeExtract %float %167 0
        %169 = OpCompositeExtract %float %167 1
        %170 = OpCompositeExtract %float %167 2
        %171 = OpCompositeConstruct %v4float %168 %169 %170 %float_1
               OpStore %outFragColor %171
               OpReturn
               OpFunctionEnd
