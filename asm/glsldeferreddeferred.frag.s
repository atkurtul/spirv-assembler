; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 187
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragcolor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %fragPos "fragPos"
               OpName %samplerposition "samplerposition"
               OpName %inUV "inUV"
               OpName %normal "normal"
               OpName %samplerNormal "samplerNormal"
               OpName %albedo "albedo"
               OpName %samplerAlbedo "samplerAlbedo"
               OpName %Light "Light"
               OpMemberName %Light 0 "position"
               OpMemberName %Light 1 "color"
               OpMemberName %Light 2 "radius"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "lights"
               OpMemberName %UBO 1 "viewPos"
               OpMemberName %UBO 2 "displayDebugTarget"
               OpName %ubo "ubo"
               OpName %outFragcolor "outFragcolor"
               OpName %fragcolor "fragcolor"
               OpName %i "i"
               OpName %L "L"
               OpName %dist "dist"
               OpName %V "V"
               OpName %atten "atten"
               OpName %N "N"
               OpName %NdotL "NdotL"
               OpName %diff "diff"
               OpName %R "R"
               OpName %NdotR "NdotR"
               OpName %spec "spec"
               OpDecorate %samplerposition DescriptorSet 0
               OpDecorate %samplerposition Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 2
               OpDecorate %samplerAlbedo DescriptorSet 0
               OpDecorate %samplerAlbedo Binding 3
               OpMemberDecorate %Light 0 Offset 0
               OpMemberDecorate %Light 1 Offset 16
               OpMemberDecorate %Light 2 Offset 28
               OpDecorate %_arr_Light_uint_6 ArrayStride 32
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 192
               OpMemberDecorate %UBO 2 Offset 208
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 4
               OpDecorate %outFragcolor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerposition = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%samplerNormal = OpVariable %_ptr_UniformConstant_11 UniformConstant
%_ptr_Function_v4float = OpTypePointer Function %v4float
%samplerAlbedo = OpVariable %_ptr_UniformConstant_11 UniformConstant
      %Light = OpTypeStruct %v4float %v3float %float
       %uint = OpTypeInt 32 0
     %uint_6 = OpConstant %uint 6
%_arr_Light_uint_6 = OpTypeArray %Light %uint_6
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %_arr_Light_uint_6 %v4float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_0 = OpConstant %int 0
       %bool = OpTypeBool
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragcolor = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
     %uint_3 = OpConstant %uint 3
%_ptr_Output_float = OpTypePointer Output %float
    %float_0 = OpConstant %float 0
%_ptr_Function_int = OpTypePointer Function %int
      %int_6 = OpConstant %int 6
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Function_float = OpTypePointer Function %float
      %int_1 = OpConstant %int 1
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_2 = OpConstant %float 2
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
   %float_16 = OpConstant %float 16
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
       %spec = OpVariable %_ptr_Function_v3float Function
         %14 = OpLoad %11 %samplerposition
         %18 = OpLoad %v2float %inUV
         %20 = OpImageSampleImplicitLod %v4float %14 %18
         %21 = OpVectorShuffle %v3float %20 %20 0 1 2
               OpStore %fragPos %21
         %24 = OpLoad %11 %samplerNormal
         %25 = OpLoad %v2float %inUV
         %26 = OpImageSampleImplicitLod %v4float %24 %25
         %27 = OpVectorShuffle %v3float %26 %26 0 1 2
               OpStore %normal %27
         %31 = OpLoad %11 %samplerAlbedo
         %32 = OpLoad %v2float %inUV
         %33 = OpImageSampleImplicitLod %v4float %31 %32
               OpStore %albedo %33
         %44 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
         %45 = OpLoad %int %44
         %48 = OpSGreaterThan %bool %45 %int_0
               OpSelectionMerge %50 None
               OpBranchConditional %48 %49 %50
         %49 = OpLabel
         %51 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
         %52 = OpLoad %int %51
               OpSelectionMerge %57 None
               OpSwitch %52 %57 1 %53 2 %54 3 %55 4 %56
         %53 = OpLabel
         %60 = OpLoad %v3float %fragPos
         %61 = OpLoad %v4float %outFragcolor
         %62 = OpVectorShuffle %v4float %61 %60 4 5 6 3
               OpStore %outFragcolor %62
               OpBranch %57
         %54 = OpLabel
         %64 = OpLoad %v3float %normal
         %65 = OpLoad %v4float %outFragcolor
         %66 = OpVectorShuffle %v4float %65 %64 4 5 6 3
               OpStore %outFragcolor %66
               OpBranch %57
         %55 = OpLabel
         %68 = OpLoad %v4float %albedo
         %69 = OpVectorShuffle %v3float %68 %68 0 1 2
         %70 = OpLoad %v4float %outFragcolor
         %71 = OpVectorShuffle %v4float %70 %69 4 5 6 3
               OpStore %outFragcolor %71
               OpBranch %57
         %56 = OpLabel
         %73 = OpLoad %v4float %albedo
         %74 = OpVectorShuffle %v3float %73 %73 3 3 3
         %75 = OpLoad %v4float %outFragcolor
         %76 = OpVectorShuffle %v4float %75 %74 4 5 6 3
               OpStore %outFragcolor %76
               OpBranch %57
         %57 = OpLabel
         %82 = OpAccessChain %_ptr_Output_float %outFragcolor %uint_3
               OpStore %82 %float_1
               OpReturn
         %50 = OpLabel
         %85 = OpLoad %v4float %albedo
         %86 = OpVectorShuffle %v3float %85 %85 0 1 2
         %88 = OpVectorTimesScalar %v3float %86 %float_0
               OpStore %fragcolor %88
               OpStore %i %int_0
               OpBranch %91
         %91 = OpLabel
               OpLoopMerge %93 %94 None
               OpBranch %95
         %95 = OpLabel
         %96 = OpLoad %int %i
         %98 = OpSLessThan %bool %96 %int_6
               OpBranchConditional %98 %92 %93
         %92 = OpLabel
        %100 = OpLoad %int %i
        %102 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_0 %100 %int_0
        %103 = OpLoad %v4float %102
        %104 = OpVectorShuffle %v3float %103 %103 0 1 2
        %105 = OpLoad %v3float %fragPos
        %106 = OpFSub %v3float %104 %105
               OpStore %L %106
        %109 = OpLoad %v3float %L
        %110 = OpExtInst %float %1 Length %109
               OpStore %dist %110
        %113 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1
        %114 = OpLoad %v4float %113
        %115 = OpVectorShuffle %v3float %114 %114 0 1 2
        %116 = OpLoad %v3float %fragPos
        %117 = OpFSub %v3float %115 %116
               OpStore %V %117
        %118 = OpLoad %v3float %V
        %119 = OpExtInst %v3float %1 Normalize %118
               OpStore %V %119
        %120 = OpLoad %v3float %L
        %121 = OpExtInst %v3float %1 Normalize %120
               OpStore %L %121
        %123 = OpLoad %int %i
        %125 = OpAccessChain %_ptr_Uniform_float %ubo %int_0 %123 %int_2
        %126 = OpLoad %float %125
        %127 = OpLoad %float %dist
        %129 = OpExtInst %float %1 Pow %127 %float_2
        %130 = OpFAdd %float %129 %float_1
        %131 = OpFDiv %float %126 %130
               OpStore %atten %131
        %133 = OpLoad %v3float %normal
        %134 = OpExtInst %v3float %1 Normalize %133
               OpStore %N %134
        %136 = OpLoad %v3float %N
        %137 = OpLoad %v3float %L
        %138 = OpDot %float %136 %137
        %139 = OpExtInst %float %1 FMax %float_0 %138
               OpStore %NdotL %139
        %141 = OpLoad %int %i
        %143 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0 %141 %int_1
        %144 = OpLoad %v3float %143
        %145 = OpLoad %v4float %albedo
        %146 = OpVectorShuffle %v3float %145 %145 0 1 2
        %147 = OpFMul %v3float %144 %146
        %148 = OpLoad %float %NdotL
        %149 = OpVectorTimesScalar %v3float %147 %148
        %150 = OpLoad %float %atten
        %151 = OpVectorTimesScalar %v3float %149 %150
               OpStore %diff %151
        %153 = OpLoad %v3float %L
        %154 = OpFNegate %v3float %153
        %155 = OpLoad %v3float %N
        %156 = OpExtInst %v3float %1 Reflect %154 %155
               OpStore %R %156
        %158 = OpLoad %v3float %R
        %159 = OpLoad %v3float %V
        %160 = OpDot %float %158 %159
        %161 = OpExtInst %float %1 FMax %float_0 %160
               OpStore %NdotR %161
        %163 = OpLoad %int %i
        %164 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0 %163 %int_1
        %165 = OpLoad %v3float %164
        %166 = OpAccessChain %_ptr_Function_float %albedo %uint_3
        %167 = OpLoad %float %166
        %168 = OpVectorTimesScalar %v3float %165 %167
        %169 = OpLoad %float %NdotR
        %171 = OpExtInst %float %1 Pow %169 %float_16
        %172 = OpVectorTimesScalar %v3float %168 %171
        %173 = OpLoad %float %atten
        %174 = OpVectorTimesScalar %v3float %172 %173
               OpStore %spec %174
        %175 = OpLoad %v3float %diff
        %176 = OpLoad %v3float %spec
        %177 = OpFAdd %v3float %175 %176
        %178 = OpLoad %v3float %fragcolor
        %179 = OpFAdd %v3float %178 %177
               OpStore %fragcolor %179
               OpBranch %94
         %94 = OpLabel
        %180 = OpLoad %int %i
        %181 = OpIAdd %int %180 %int_1
               OpStore %i %181
               OpBranch %91
         %93 = OpLabel
        %182 = OpLoad %v3float %fragcolor
        %183 = OpCompositeExtract %float %182 0
        %184 = OpCompositeExtract %float %182 1
        %185 = OpCompositeExtract %float %182 2
        %186 = OpCompositeConstruct %v4float %183 %184 %185 %float_1
               OpStore %outFragcolor %186
               OpReturn
               OpFunctionEnd
