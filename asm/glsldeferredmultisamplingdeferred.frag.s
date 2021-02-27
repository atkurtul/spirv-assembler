; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 292
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragcolor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %resolve_s2M1_vi2_ "resolve(s2M1;vi2;"
               OpName %tex "tex"
               OpName %uv "uv"
               OpName %calculateLighting_vf3_vf3_vf4_ "calculateLighting(vf3;vf3;vf4;"
               OpName %pos "pos"
               OpName %normal "normal"
               OpName %albedo "albedo"
               OpName %result "result"
               OpName %i "i"
               OpName %NUM_SAMPLES "NUM_SAMPLES"
               OpName %val "val"
               OpName %result_0 "result"
               OpName %i_0 "i"
               OpName %L "L"
               OpName %Light "Light"
               OpMemberName %Light 0 "position"
               OpMemberName %Light 1 "color"
               OpMemberName %Light 2 "radius"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "lights"
               OpMemberName %UBO 1 "viewPos"
               OpMemberName %UBO 2 "debugDisplayTarget"
               OpName %ubo "ubo"
               OpName %dist "dist"
               OpName %V "V"
               OpName %atten "atten"
               OpName %N "N"
               OpName %NdotL "NdotL"
               OpName %diff "diff"
               OpName %R "R"
               OpName %NdotR "NdotR"
               OpName %spec "spec"
               OpName %attDim "attDim"
               OpName %samplerPosition "samplerPosition"
               OpName %UV "UV"
               OpName %inUV "inUV"
               OpName %outFragcolor "outFragcolor"
               OpName %samplerNormal "samplerNormal"
               OpName %samplerAlbedo "samplerAlbedo"
               OpName %alb "alb"
               OpName %param "param"
               OpName %fragColor "fragColor"
               OpName %i_1 "i"
               OpName %pos_0 "pos"
               OpName %normal_0 "normal"
               OpName %albedo_0 "albedo"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpDecorate %NUM_SAMPLES SpecId 0
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
               OpDecorate %samplerPosition DescriptorSet 0
               OpDecorate %samplerPosition Binding 1
               OpDecorate %inUV Location 0
               OpDecorate %outFragcolor Location 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 2
               OpDecorate %samplerAlbedo DescriptorSet 0
               OpDecorate %samplerAlbedo Binding 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
          %7 = OpTypeImage %float 2D 0 0 1 1 Unknown
          %8 = OpTypeSampledImage %7
%_ptr_UniformConstant_8 = OpTypePointer UniformConstant %8
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
    %v4float = OpTypeVector %float 4
         %14 = OpTypeFunction %v4float %_ptr_UniformConstant_8 %_ptr_Function_v2int
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %22 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_v4float
    %float_0 = OpConstant %float 0
         %30 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
%NUM_SAMPLES = OpSpecConstant %int 8
       %bool = OpTypeBool
      %int_1 = OpConstant %int 1
         %62 = OpConstantComposite %v3float %float_0 %float_0 %float_0
      %int_6 = OpConstant %int 6
      %Light = OpTypeStruct %v4float %v3float %float
       %uint = OpTypeInt 32 0
     %uint_6 = OpConstant %uint 6
%_arr_Light_uint_6 = OpTypeArray %Light %uint_6
        %UBO = OpTypeStruct %_arr_Light_uint_6 %v4float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Function_float = OpTypePointer Function %float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
     %uint_3 = OpConstant %uint 3
    %float_8 = OpConstant %float 8
%samplerPosition = OpVariable %_ptr_UniformConstant_8 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Uniform_int = OpTypePointer Uniform %int
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragcolor = OpVariable %_ptr_Output_v4float Output
%samplerNormal = OpVariable %_ptr_UniformConstant_8 UniformConstant
%samplerAlbedo = OpVariable %_ptr_UniformConstant_8 UniformConstant
%_ptr_Output_float = OpTypePointer Output %float
%float_0_150000006 = OpConstant %float 0.150000006
       %main = OpFunction %void None %3
          %5 = OpLabel
     %attDim = OpVariable %_ptr_Function_v2int Function
         %UV = OpVariable %_ptr_Function_v2int Function
        %alb = OpVariable %_ptr_Function_v4float Function
      %param = OpVariable %_ptr_Function_v2int Function
  %fragColor = OpVariable %_ptr_Function_v3float Function
        %i_1 = OpVariable %_ptr_Function_int Function
      %pos_0 = OpVariable %_ptr_Function_v3float Function
   %normal_0 = OpVariable %_ptr_Function_v3float Function
   %albedo_0 = OpVariable %_ptr_Function_v4float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
    %param_1 = OpVariable %_ptr_Function_v3float Function
    %param_2 = OpVariable %_ptr_Function_v4float Function
        %169 = OpLoad %8 %samplerPosition
        %170 = OpImage %7 %169
        %171 = OpImageQuerySize %v2int %170
               OpStore %attDim %171
        %176 = OpLoad %v2float %inUV
        %177 = OpLoad %v2int %attDim
        %178 = OpConvertSToF %v2float %177
        %179 = OpFMul %v2float %176 %178
        %180 = OpConvertFToS %v2int %179
               OpStore %UV %180
        %182 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
        %183 = OpLoad %int %182
        %184 = OpSGreaterThan %bool %183 %int_0
               OpSelectionMerge %186 None
               OpBranchConditional %184 %185 %186
        %185 = OpLabel
        %187 = OpAccessChain %_ptr_Uniform_int %ubo %int_2
        %188 = OpLoad %int %187
               OpSelectionMerge %193 None
               OpSwitch %188 %193 1 %189 2 %190 3 %191 4 %192
        %189 = OpLabel
        %196 = OpLoad %8 %samplerPosition
        %197 = OpLoad %v2int %UV
        %198 = OpImage %7 %196
        %199 = OpImageFetch %v4float %198 %197 Sample %int_0
        %200 = OpVectorShuffle %v3float %199 %199 0 1 2
        %201 = OpLoad %v4float %outFragcolor
        %202 = OpVectorShuffle %v4float %201 %200 4 5 6 3
               OpStore %outFragcolor %202
               OpBranch %193
        %190 = OpLabel
        %205 = OpLoad %8 %samplerNormal
        %206 = OpLoad %v2int %UV
        %207 = OpImage %7 %205
        %208 = OpImageFetch %v4float %207 %206 Sample %int_0
        %209 = OpVectorShuffle %v3float %208 %208 0 1 2
        %210 = OpLoad %v4float %outFragcolor
        %211 = OpVectorShuffle %v4float %210 %209 4 5 6 3
               OpStore %outFragcolor %211
               OpBranch %193
        %191 = OpLabel
        %214 = OpLoad %8 %samplerAlbedo
        %215 = OpLoad %v2int %UV
        %216 = OpImage %7 %214
        %217 = OpImageFetch %v4float %216 %215 Sample %int_0
        %218 = OpVectorShuffle %v3float %217 %217 0 1 2
        %219 = OpLoad %v4float %outFragcolor
        %220 = OpVectorShuffle %v4float %219 %218 4 5 6 3
               OpStore %outFragcolor %220
               OpBranch %193
        %192 = OpLabel
        %222 = OpLoad %8 %samplerAlbedo
        %223 = OpLoad %v2int %UV
        %224 = OpImage %7 %222
        %225 = OpImageFetch %v4float %224 %223 Sample %int_0
        %226 = OpVectorShuffle %v3float %225 %225 3 3 3
        %227 = OpLoad %v4float %outFragcolor
        %228 = OpVectorShuffle %v4float %227 %226 4 5 6 3
               OpStore %outFragcolor %228
               OpBranch %193
        %193 = OpLabel
        %232 = OpAccessChain %_ptr_Output_float %outFragcolor %uint_3
               OpStore %232 %float_1
               OpReturn
        %186 = OpLabel
        %236 = OpLoad %v2int %UV
               OpStore %param %236
        %237 = OpFunctionCall %v4float %resolve_s2M1_vi2_ %samplerAlbedo %param
               OpStore %alb %237
               OpStore %fragColor %62
               OpStore %i_1 %int_0
               OpBranch %240
        %240 = OpLabel
               OpLoopMerge %242 %243 None
               OpBranch %244
        %244 = OpLabel
        %245 = OpLoad %int %i_1
        %246 = OpSLessThan %bool %245 %NUM_SAMPLES
               OpBranchConditional %246 %241 %242
        %241 = OpLabel
        %248 = OpLoad %8 %samplerPosition
        %249 = OpLoad %v2int %UV
        %250 = OpLoad %int %i_1
        %251 = OpImage %7 %248
        %252 = OpImageFetch %v4float %251 %249 Sample %250
        %253 = OpVectorShuffle %v3float %252 %252 0 1 2
               OpStore %pos_0 %253
        %255 = OpLoad %8 %samplerNormal
        %256 = OpLoad %v2int %UV
        %257 = OpLoad %int %i_1
        %258 = OpImage %7 %255
        %259 = OpImageFetch %v4float %258 %256 Sample %257
        %260 = OpVectorShuffle %v3float %259 %259 0 1 2
               OpStore %normal_0 %260
        %262 = OpLoad %8 %samplerAlbedo
        %263 = OpLoad %v2int %UV
        %264 = OpLoad %int %i_1
        %265 = OpImage %7 %262
        %266 = OpImageFetch %v4float %265 %263 Sample %264
               OpStore %albedo_0 %266
        %268 = OpLoad %v3float %pos_0
               OpStore %param_0 %268
        %270 = OpLoad %v3float %normal_0
               OpStore %param_1 %270
        %272 = OpLoad %v4float %albedo_0
               OpStore %param_2 %272
        %273 = OpFunctionCall %v3float %calculateLighting_vf3_vf3_vf4_ %param_0 %param_1 %param_2
        %274 = OpLoad %v3float %fragColor
        %275 = OpFAdd %v3float %274 %273
               OpStore %fragColor %275
               OpBranch %243
        %243 = OpLabel
        %276 = OpLoad %int %i_1
        %277 = OpIAdd %int %276 %int_1
               OpStore %i_1 %277
               OpBranch %240
        %242 = OpLabel
        %278 = OpLoad %v4float %alb
        %279 = OpVectorShuffle %v3float %278 %278 0 1 2
        %281 = OpVectorTimesScalar %v3float %279 %float_0_150000006
        %282 = OpLoad %v3float %fragColor
        %283 = OpConvertSToF %float %NUM_SAMPLES
        %284 = OpCompositeConstruct %v3float %283 %283 %283
        %285 = OpFDiv %v3float %282 %284
        %286 = OpFAdd %v3float %281 %285
               OpStore %fragColor %286
        %287 = OpLoad %v3float %fragColor
        %288 = OpCompositeExtract %float %287 0
        %289 = OpCompositeExtract %float %287 1
        %290 = OpCompositeExtract %float %287 2
        %291 = OpCompositeConstruct %v4float %288 %289 %290 %float_1
               OpStore %outFragcolor %291
               OpReturn
               OpFunctionEnd
%resolve_s2M1_vi2_ = OpFunction %v4float None %14
        %tex = OpFunctionParameter %_ptr_UniformConstant_8
         %uv = OpFunctionParameter %_ptr_Function_v2int
         %18 = OpLabel
     %result = OpVariable %_ptr_Function_v4float Function
          %i = OpVariable %_ptr_Function_int Function
        %val = OpVariable %_ptr_Function_v4float Function
               OpStore %result %30
               OpStore %i %int_0
               OpBranch %34
         %34 = OpLabel
               OpLoopMerge %36 %37 None
               OpBranch %38
         %38 = OpLabel
         %39 = OpLoad %int %i
         %42 = OpSLessThan %bool %39 %NUM_SAMPLES
               OpBranchConditional %42 %35 %36
         %35 = OpLabel
         %44 = OpLoad %8 %tex
         %45 = OpLoad %v2int %uv
         %46 = OpLoad %int %i
         %47 = OpImage %7 %44
         %48 = OpImageFetch %v4float %47 %45 Sample %46
               OpStore %val %48
         %49 = OpLoad %v4float %val
         %50 = OpLoad %v4float %result
         %51 = OpFAdd %v4float %50 %49
               OpStore %result %51
               OpBranch %37
         %37 = OpLabel
         %52 = OpLoad %int %i
         %54 = OpIAdd %int %52 %int_1
               OpStore %i %54
               OpBranch %34
         %36 = OpLabel
         %55 = OpLoad %v4float %result
         %56 = OpConvertSToF %float %NUM_SAMPLES
         %57 = OpCompositeConstruct %v4float %56 %56 %56 %56
         %58 = OpFDiv %v4float %55 %57
               OpReturnValue %58
               OpFunctionEnd
%calculateLighting_vf3_vf3_vf4_ = OpFunction %v3float None %22
        %pos = OpFunctionParameter %_ptr_Function_v3float
     %normal = OpFunctionParameter %_ptr_Function_v3float
     %albedo = OpFunctionParameter %_ptr_Function_v4float
         %27 = OpLabel
   %result_0 = OpVariable %_ptr_Function_v3float Function
        %i_0 = OpVariable %_ptr_Function_int Function
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
               OpStore %result_0 %62
               OpStore %i_0 %int_0
               OpBranch %64
         %64 = OpLabel
               OpLoopMerge %66 %67 None
               OpBranch %68
         %68 = OpLabel
         %69 = OpLoad %int %i_0
         %71 = OpSLessThan %bool %69 %int_6
               OpBranchConditional %71 %65 %66
         %65 = OpLabel
         %80 = OpLoad %int %i_0
         %82 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_0 %80 %int_0
         %83 = OpLoad %v4float %82
         %84 = OpVectorShuffle %v3float %83 %83 0 1 2
         %85 = OpLoad %v3float %pos
         %86 = OpFSub %v3float %84 %85
               OpStore %L %86
         %89 = OpLoad %v3float %L
         %90 = OpExtInst %float %1 Length %89
               OpStore %dist %90
         %92 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_1
         %93 = OpLoad %v4float %92
         %94 = OpVectorShuffle %v3float %93 %93 0 1 2
         %95 = OpLoad %v3float %pos
         %96 = OpFSub %v3float %94 %95
               OpStore %V %96
         %97 = OpLoad %v3float %V
         %98 = OpExtInst %v3float %1 Normalize %97
               OpStore %V %98
         %99 = OpLoad %v3float %L
        %100 = OpExtInst %v3float %1 Normalize %99
               OpStore %L %100
        %102 = OpLoad %int %i_0
        %105 = OpAccessChain %_ptr_Uniform_float %ubo %int_0 %102 %int_2
        %106 = OpLoad %float %105
        %107 = OpLoad %float %dist
        %109 = OpExtInst %float %1 Pow %107 %float_2
        %111 = OpFAdd %float %109 %float_1
        %112 = OpFDiv %float %106 %111
               OpStore %atten %112
        %114 = OpLoad %v3float %normal
        %115 = OpExtInst %v3float %1 Normalize %114
               OpStore %N %115
        %117 = OpLoad %v3float %N
        %118 = OpLoad %v3float %L
        %119 = OpDot %float %117 %118
        %120 = OpExtInst %float %1 FMax %float_0 %119
               OpStore %NdotL %120
        %122 = OpLoad %int %i_0
        %124 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0 %122 %int_1
        %125 = OpLoad %v3float %124
        %126 = OpLoad %v4float %albedo
        %127 = OpVectorShuffle %v3float %126 %126 0 1 2
        %128 = OpFMul %v3float %125 %127
        %129 = OpLoad %float %NdotL
        %130 = OpVectorTimesScalar %v3float %128 %129
        %131 = OpLoad %float %atten
        %132 = OpVectorTimesScalar %v3float %130 %131
               OpStore %diff %132
        %134 = OpLoad %v3float %L
        %135 = OpFNegate %v3float %134
        %136 = OpLoad %v3float %N
        %137 = OpExtInst %v3float %1 Reflect %135 %136
               OpStore %R %137
        %139 = OpLoad %v3float %R
        %140 = OpLoad %v3float %V
        %141 = OpDot %float %139 %140
        %142 = OpExtInst %float %1 FMax %float_0 %141
               OpStore %NdotR %142
        %144 = OpLoad %int %i_0
        %145 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_0 %144 %int_1
        %146 = OpLoad %v3float %145
        %148 = OpAccessChain %_ptr_Function_float %albedo %uint_3
        %149 = OpLoad %float %148
        %150 = OpVectorTimesScalar %v3float %146 %149
        %151 = OpLoad %float %NdotR
        %153 = OpExtInst %float %1 Pow %151 %float_8
        %154 = OpVectorTimesScalar %v3float %150 %153
        %155 = OpLoad %float %atten
        %156 = OpVectorTimesScalar %v3float %154 %155
               OpStore %spec %156
        %157 = OpLoad %v3float %diff
        %158 = OpLoad %v3float %spec
        %159 = OpFAdd %v3float %157 %158
        %160 = OpLoad %v3float %result_0
        %161 = OpFAdd %v3float %160 %159
               OpStore %result_0 %161
               OpBranch %67
         %67 = OpLabel
        %162 = OpLoad %int %i_0
        %163 = OpIAdd %int %162 %int_1
               OpStore %i_0 %163
               OpBranch %64
         %66 = OpLabel
        %164 = OpLoad %v3float %result_0
               OpReturnValue %164
               OpFunctionEnd
