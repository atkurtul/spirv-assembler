; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 400
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inPos %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %random_vf2_ "random(vf2;"
               OpName %co "co"
               OpName %hammersley2d_u1_u1_ "hammersley2d(u1;u1;"
               OpName %i "i"
               OpName %N "N"
               OpName %importanceSample_GGX_vf2_f1_vf3_ "importanceSample_GGX(vf2;f1;vf3;"
               OpName %Xi "Xi"
               OpName %roughness "roughness"
               OpName %normal "normal"
               OpName %D_GGX_f1_f1_ "D_GGX(f1;f1;"
               OpName %dotNH "dotNH"
               OpName %roughness_0 "roughness"
               OpName %prefilterEnvMap_vf3_f1_ "prefilterEnvMap(vf3;f1;"
               OpName %R "R"
               OpName %roughness_1 "roughness"
               OpName %a "a"
               OpName %b "b"
               OpName %c "c"
               OpName %dt "dt"
               OpName %sn "sn"
               OpName %bits "bits"
               OpName %rdi "rdi"
               OpName %alpha "alpha"
               OpName %phi "phi"
               OpName %param "param"
               OpName %cosTheta "cosTheta"
               OpName %sinTheta "sinTheta"
               OpName %H "H"
               OpName %up "up"
               OpName %tangentX "tangentX"
               OpName %tangentY "tangentY"
               OpName %alpha_0 "alpha"
               OpName %alpha2 "alpha2"
               OpName %denom "denom"
               OpName %N_0 "N"
               OpName %V "V"
               OpName %color "color"
               OpName %totalWeight "totalWeight"
               OpName %envMapDim "envMapDim"
               OpName %samplerEnv "samplerEnv"
               OpName %i_0 "i"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "roughness"
               OpMemberName %PushConsts 1 "numSamples"
               OpName %consts "consts"
               OpName %Xi_0 "Xi"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %H_0 "H"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %L "L"
               OpName %dotNL "dotNL"
               OpName %dotNH_0 "dotNH"
               OpName %dotVH "dotVH"
               OpName %pdf "pdf"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %omegaS "omegaS"
               OpName %omegaP "omegaP"
               OpName %mipLevel "mipLevel"
               OpName %N_1 "N"
               OpName %inPos "inPos"
               OpName %outColor "outColor"
               OpName %param_7 "param"
               OpName %param_8 "param"
               OpDecorate %samplerEnv DescriptorSet 0
               OpDecorate %samplerEnv Binding 0
               OpMemberDecorate %PushConsts 0 Offset 64
               OpMemberDecorate %PushConsts 1 Offset 68
               OpDecorate %PushConsts Block
               OpDecorate %inPos Location 0
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
          %9 = OpTypeFunction %float %_ptr_Function_v2float
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
         %15 = OpTypeFunction %v2float %_ptr_Function_uint %_ptr_Function_uint
%_ptr_Function_float = OpTypePointer Function %float
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %23 = OpTypeFunction %v3float %_ptr_Function_v2float %_ptr_Function_float %_ptr_Function_v3float
         %29 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float
         %34 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_float
%float_12_9898005 = OpConstant %float 12.9898005
%float_78_2330017 = OpConstant %float 78.2330017
%float_43758_5469 = OpConstant %float 43758.5469
%float_3_1400001 = OpConstant %float 3.1400001
    %uint_16 = OpConstant %uint 16
%uint_1431655765 = OpConstant %uint 1431655765
     %uint_1 = OpConstant %uint 1
%uint_2863311530 = OpConstant %uint 2863311530
%uint_858993459 = OpConstant %uint 858993459
     %uint_2 = OpConstant %uint 2
%uint_3435973836 = OpConstant %uint 3435973836
%uint_252645135 = OpConstant %uint 252645135
     %uint_4 = OpConstant %uint 4
%uint_4042322160 = OpConstant %uint 4042322160
%uint_16711935 = OpConstant %uint 16711935
     %uint_8 = OpConstant %uint 8
%uint_4278255360 = OpConstant %uint 4278255360
%float_2_32830644en10 = OpConstant %float 2.32830644e-10
%float_6_28318548 = OpConstant %float 6.28318548
     %uint_0 = OpConstant %uint 0
%float_0_100000001 = OpConstant %float 0.100000001
    %float_1 = OpConstant %float 1
%float_0_999000013 = OpConstant %float 0.999000013
       %bool = OpTypeBool
    %float_0 = OpConstant %float 0
        %180 = OpConstantComposite %v3float %float_0 %float_0 %float_1
        %181 = OpConstantComposite %v3float %float_1 %float_0 %float_0
     %v3bool = OpTypeVector %bool 3
%float_3_14159274 = OpConstant %float 3.14159274
        %242 = OpConstantComposite %v3float %float_0 %float_0 %float_0
        %245 = OpTypeImage %float Cube 0 0 0 1 Unknown
        %246 = OpTypeSampledImage %245
%_ptr_UniformConstant_246 = OpTypePointer UniformConstant %246
 %samplerEnv = OpVariable %_ptr_UniformConstant_246 UniformConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
      %v2int = OpTypeVector %int 2
 %PushConsts = OpTypeStruct %float %uint
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
     %consts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
      %int_1 = OpConstant %int 1
%_ptr_PushConstant_uint = OpTypePointer PushConstant %uint
    %float_2 = OpConstant %float 2
    %float_4 = OpConstant %float 4
%float_9_99999975en05 = OpConstant %float 9.99999975e-05
%float_12_566371 = OpConstant %float 12.566371
    %float_6 = OpConstant %float 6
  %float_0_5 = OpConstant %float 0.5
    %v4float = OpTypeVector %float 4
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_PushConstant_float = OpTypePointer PushConstant %float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %N_1 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_v3float Function
    %param_8 = OpVariable %_ptr_Function_float Function
        %385 = OpLoad %v3float %inPos
        %386 = OpExtInst %v3float %1 Normalize %385
               OpStore %N_1 %386
        %390 = OpLoad %v3float %N_1
               OpStore %param_7 %390
        %393 = OpAccessChain %_ptr_PushConstant_float %consts %int_0
        %394 = OpLoad %float %393
               OpStore %param_8 %394
        %395 = OpFunctionCall %v3float %prefilterEnvMap_vf3_f1_ %param_7 %param_8
        %396 = OpCompositeExtract %float %395 0
        %397 = OpCompositeExtract %float %395 1
        %398 = OpCompositeExtract %float %395 2
        %399 = OpCompositeConstruct %v4float %396 %397 %398 %float_1
               OpStore %outColor %399
               OpReturn
               OpFunctionEnd
%random_vf2_ = OpFunction %float None %9
         %co = OpFunctionParameter %_ptr_Function_v2float
         %12 = OpLabel
          %a = OpVariable %_ptr_Function_float Function
          %b = OpVariable %_ptr_Function_float Function
          %c = OpVariable %_ptr_Function_float Function
         %dt = OpVariable %_ptr_Function_float Function
         %sn = OpVariable %_ptr_Function_float Function
               OpStore %a %float_12_9898005
               OpStore %b %float_78_2330017
               OpStore %c %float_43758_5469
         %46 = OpLoad %v2float %co
         %47 = OpLoad %float %a
         %48 = OpLoad %float %b
         %49 = OpCompositeConstruct %v2float %47 %48
         %50 = OpDot %float %46 %49
               OpStore %dt %50
         %52 = OpLoad %float %dt
         %54 = OpFMod %float %52 %float_3_1400001
               OpStore %sn %54
         %55 = OpLoad %float %sn
         %56 = OpExtInst %float %1 Sin %55
         %57 = OpLoad %float %c
         %58 = OpFMul %float %56 %57
         %59 = OpExtInst %float %1 Fract %58
               OpReturnValue %59
               OpFunctionEnd
%hammersley2d_u1_u1_ = OpFunction %v2float None %15
          %i = OpFunctionParameter %_ptr_Function_uint
          %N = OpFunctionParameter %_ptr_Function_uint
         %19 = OpLabel
       %bits = OpVariable %_ptr_Function_uint Function
        %rdi = OpVariable %_ptr_Function_float Function
         %63 = OpLoad %uint %i
         %65 = OpShiftLeftLogical %uint %63 %uint_16
         %66 = OpLoad %uint %i
         %67 = OpShiftRightLogical %uint %66 %uint_16
         %68 = OpBitwiseOr %uint %65 %67
               OpStore %bits %68
         %69 = OpLoad %uint %bits
         %71 = OpBitwiseAnd %uint %69 %uint_1431655765
         %73 = OpShiftLeftLogical %uint %71 %uint_1
         %74 = OpLoad %uint %bits
         %76 = OpBitwiseAnd %uint %74 %uint_2863311530
         %77 = OpShiftRightLogical %uint %76 %uint_1
         %78 = OpBitwiseOr %uint %73 %77
               OpStore %bits %78
         %79 = OpLoad %uint %bits
         %81 = OpBitwiseAnd %uint %79 %uint_858993459
         %83 = OpShiftLeftLogical %uint %81 %uint_2
         %84 = OpLoad %uint %bits
         %86 = OpBitwiseAnd %uint %84 %uint_3435973836
         %87 = OpShiftRightLogical %uint %86 %uint_2
         %88 = OpBitwiseOr %uint %83 %87
               OpStore %bits %88
         %89 = OpLoad %uint %bits
         %91 = OpBitwiseAnd %uint %89 %uint_252645135
         %93 = OpShiftLeftLogical %uint %91 %uint_4
         %94 = OpLoad %uint %bits
         %96 = OpBitwiseAnd %uint %94 %uint_4042322160
         %97 = OpShiftRightLogical %uint %96 %uint_4
         %98 = OpBitwiseOr %uint %93 %97
               OpStore %bits %98
         %99 = OpLoad %uint %bits
        %101 = OpBitwiseAnd %uint %99 %uint_16711935
        %103 = OpShiftLeftLogical %uint %101 %uint_8
        %104 = OpLoad %uint %bits
        %106 = OpBitwiseAnd %uint %104 %uint_4278255360
        %107 = OpShiftRightLogical %uint %106 %uint_8
        %108 = OpBitwiseOr %uint %103 %107
               OpStore %bits %108
        %110 = OpLoad %uint %bits
        %111 = OpConvertUToF %float %110
        %113 = OpFMul %float %111 %float_2_32830644en10
               OpStore %rdi %113
        %114 = OpLoad %uint %i
        %115 = OpConvertUToF %float %114
        %116 = OpLoad %uint %N
        %117 = OpConvertUToF %float %116
        %118 = OpFDiv %float %115 %117
        %119 = OpLoad %float %rdi
        %120 = OpCompositeConstruct %v2float %118 %119
               OpReturnValue %120
               OpFunctionEnd
%importanceSample_GGX_vf2_f1_vf3_ = OpFunction %v3float None %23
         %Xi = OpFunctionParameter %_ptr_Function_v2float
  %roughness = OpFunctionParameter %_ptr_Function_float
     %normal = OpFunctionParameter %_ptr_Function_v3float
         %28 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
        %phi = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_v2float Function
   %cosTheta = OpVariable %_ptr_Function_float Function
   %sinTheta = OpVariable %_ptr_Function_float Function
          %H = OpVariable %_ptr_Function_v3float Function
         %up = OpVariable %_ptr_Function_v3float Function
   %tangentX = OpVariable %_ptr_Function_v3float Function
   %tangentY = OpVariable %_ptr_Function_v3float Function
        %124 = OpLoad %float %roughness
        %125 = OpLoad %float %roughness
        %126 = OpFMul %float %124 %125
               OpStore %alpha %126
        %130 = OpAccessChain %_ptr_Function_float %Xi %uint_0
        %131 = OpLoad %float %130
        %132 = OpFMul %float %float_6_28318548 %131
        %134 = OpLoad %v3float %normal
        %135 = OpVectorShuffle %v2float %134 %134 0 2
               OpStore %param %135
        %136 = OpFunctionCall %float %random_vf2_ %param
        %138 = OpFMul %float %136 %float_0_100000001
        %139 = OpFAdd %float %132 %138
               OpStore %phi %139
        %142 = OpAccessChain %_ptr_Function_float %Xi %uint_1
        %143 = OpLoad %float %142
        %144 = OpFSub %float %float_1 %143
        %145 = OpLoad %float %alpha
        %146 = OpLoad %float %alpha
        %147 = OpFMul %float %145 %146
        %148 = OpFSub %float %147 %float_1
        %149 = OpAccessChain %_ptr_Function_float %Xi %uint_1
        %150 = OpLoad %float %149
        %151 = OpFMul %float %148 %150
        %152 = OpFAdd %float %float_1 %151
        %153 = OpFDiv %float %144 %152
        %154 = OpExtInst %float %1 Sqrt %153
               OpStore %cosTheta %154
        %156 = OpLoad %float %cosTheta
        %157 = OpLoad %float %cosTheta
        %158 = OpFMul %float %156 %157
        %159 = OpFSub %float %float_1 %158
        %160 = OpExtInst %float %1 Sqrt %159
               OpStore %sinTheta %160
        %162 = OpLoad %float %sinTheta
        %163 = OpLoad %float %phi
        %164 = OpExtInst %float %1 Cos %163
        %165 = OpFMul %float %162 %164
        %166 = OpLoad %float %sinTheta
        %167 = OpLoad %float %phi
        %168 = OpExtInst %float %1 Sin %167
        %169 = OpFMul %float %166 %168
        %170 = OpLoad %float %cosTheta
        %171 = OpCompositeConstruct %v3float %165 %169 %170
               OpStore %H %171
        %173 = OpAccessChain %_ptr_Function_float %normal %uint_2
        %174 = OpLoad %float %173
        %175 = OpExtInst %float %1 FAbs %174
        %178 = OpFOrdLessThan %bool %175 %float_0_999000013
        %183 = OpCompositeConstruct %v3bool %178 %178 %178
        %184 = OpSelect %v3float %183 %180 %181
               OpStore %up %184
        %186 = OpLoad %v3float %up
        %187 = OpLoad %v3float %normal
        %188 = OpExtInst %v3float %1 Cross %186 %187
        %189 = OpExtInst %v3float %1 Normalize %188
               OpStore %tangentX %189
        %191 = OpLoad %v3float %normal
        %192 = OpLoad %v3float %tangentX
        %193 = OpExtInst %v3float %1 Cross %191 %192
        %194 = OpExtInst %v3float %1 Normalize %193
               OpStore %tangentY %194
        %195 = OpLoad %v3float %tangentX
        %196 = OpAccessChain %_ptr_Function_float %H %uint_0
        %197 = OpLoad %float %196
        %198 = OpVectorTimesScalar %v3float %195 %197
        %199 = OpLoad %v3float %tangentY
        %200 = OpAccessChain %_ptr_Function_float %H %uint_1
        %201 = OpLoad %float %200
        %202 = OpVectorTimesScalar %v3float %199 %201
        %203 = OpFAdd %v3float %198 %202
        %204 = OpLoad %v3float %normal
        %205 = OpAccessChain %_ptr_Function_float %H %uint_2
        %206 = OpLoad %float %205
        %207 = OpVectorTimesScalar %v3float %204 %206
        %208 = OpFAdd %v3float %203 %207
        %209 = OpExtInst %v3float %1 Normalize %208
               OpReturnValue %209
               OpFunctionEnd
%D_GGX_f1_f1_ = OpFunction %float None %29
      %dotNH = OpFunctionParameter %_ptr_Function_float
%roughness_0 = OpFunctionParameter %_ptr_Function_float
         %33 = OpLabel
    %alpha_0 = OpVariable %_ptr_Function_float Function
     %alpha2 = OpVariable %_ptr_Function_float Function
      %denom = OpVariable %_ptr_Function_float Function
        %213 = OpLoad %float %roughness_0
        %214 = OpLoad %float %roughness_0
        %215 = OpFMul %float %213 %214
               OpStore %alpha_0 %215
        %217 = OpLoad %float %alpha_0
        %218 = OpLoad %float %alpha_0
        %219 = OpFMul %float %217 %218
               OpStore %alpha2 %219
        %221 = OpLoad %float %dotNH
        %222 = OpLoad %float %dotNH
        %223 = OpFMul %float %221 %222
        %224 = OpLoad %float %alpha2
        %225 = OpFSub %float %224 %float_1
        %226 = OpFMul %float %223 %225
        %227 = OpFAdd %float %226 %float_1
               OpStore %denom %227
        %228 = OpLoad %float %alpha2
        %230 = OpLoad %float %denom
        %231 = OpFMul %float %float_3_14159274 %230
        %232 = OpLoad %float %denom
        %233 = OpFMul %float %231 %232
        %234 = OpFDiv %float %228 %233
               OpReturnValue %234
               OpFunctionEnd
%prefilterEnvMap_vf3_f1_ = OpFunction %v3float None %34
          %R = OpFunctionParameter %_ptr_Function_v3float
%roughness_1 = OpFunctionParameter %_ptr_Function_float
         %38 = OpLabel
        %N_0 = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v3float Function
%totalWeight = OpVariable %_ptr_Function_float Function
  %envMapDim = OpVariable %_ptr_Function_float Function
        %i_0 = OpVariable %_ptr_Function_uint Function
       %Xi_0 = OpVariable %_ptr_Function_v2float Function
    %param_0 = OpVariable %_ptr_Function_uint Function
    %param_1 = OpVariable %_ptr_Function_uint Function
        %H_0 = OpVariable %_ptr_Function_v3float Function
    %param_2 = OpVariable %_ptr_Function_v2float Function
    %param_3 = OpVariable %_ptr_Function_float Function
    %param_4 = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
      %dotNL = OpVariable %_ptr_Function_float Function
    %dotNH_0 = OpVariable %_ptr_Function_float Function
      %dotVH = OpVariable %_ptr_Function_float Function
        %pdf = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_float Function
    %param_6 = OpVariable %_ptr_Function_float Function
     %omegaS = OpVariable %_ptr_Function_float Function
     %omegaP = OpVariable %_ptr_Function_float Function
   %mipLevel = OpVariable %_ptr_Function_float Function
        %348 = OpVariable %_ptr_Function_float Function
        %238 = OpLoad %v3float %R
               OpStore %N_0 %238
        %240 = OpLoad %v3float %R
               OpStore %V %240
               OpStore %color %242
               OpStore %totalWeight %float_0
        %249 = OpLoad %246 %samplerEnv
        %252 = OpImage %245 %249
        %254 = OpImageQuerySizeLod %v2int %252 %int_0
        %255 = OpCompositeExtract %int %254 0
        %256 = OpConvertSToF %float %255
               OpStore %envMapDim %256
               OpStore %i_0 %uint_0
               OpBranch %258
        %258 = OpLabel
               OpLoopMerge %260 %261 None
               OpBranch %262
        %262 = OpLabel
        %263 = OpLoad %uint %i_0
        %269 = OpAccessChain %_ptr_PushConstant_uint %consts %int_1
        %270 = OpLoad %uint %269
        %271 = OpULessThan %bool %263 %270
               OpBranchConditional %271 %259 %260
        %259 = OpLabel
        %274 = OpLoad %uint %i_0
               OpStore %param_0 %274
        %276 = OpAccessChain %_ptr_PushConstant_uint %consts %int_1
        %277 = OpLoad %uint %276
               OpStore %param_1 %277
        %278 = OpFunctionCall %v2float %hammersley2d_u1_u1_ %param_0 %param_1
               OpStore %Xi_0 %278
        %281 = OpLoad %v2float %Xi_0
               OpStore %param_2 %281
        %283 = OpLoad %float %roughness_1
               OpStore %param_3 %283
        %285 = OpLoad %v3float %N_0
               OpStore %param_4 %285
        %286 = OpFunctionCall %v3float %importanceSample_GGX_vf2_f1_vf3_ %param_2 %param_3 %param_4
               OpStore %H_0 %286
        %289 = OpLoad %v3float %V
        %290 = OpLoad %v3float %H_0
        %291 = OpDot %float %289 %290
        %292 = OpFMul %float %float_2 %291
        %293 = OpLoad %v3float %H_0
        %294 = OpVectorTimesScalar %v3float %293 %292
        %295 = OpLoad %v3float %V
        %296 = OpFSub %v3float %294 %295
               OpStore %L %296
        %298 = OpLoad %v3float %N_0
        %299 = OpLoad %v3float %L
        %300 = OpDot %float %298 %299
        %301 = OpExtInst %float %1 FClamp %300 %float_0 %float_1
               OpStore %dotNL %301
        %302 = OpLoad %float %dotNL
        %303 = OpFOrdGreaterThan %bool %302 %float_0
               OpSelectionMerge %305 None
               OpBranchConditional %303 %304 %305
        %304 = OpLabel
        %307 = OpLoad %v3float %N_0
        %308 = OpLoad %v3float %H_0
        %309 = OpDot %float %307 %308
        %310 = OpExtInst %float %1 FClamp %309 %float_0 %float_1
               OpStore %dotNH_0 %310
        %312 = OpLoad %v3float %V
        %313 = OpLoad %v3float %H_0
        %314 = OpDot %float %312 %313
        %315 = OpExtInst %float %1 FClamp %314 %float_0 %float_1
               OpStore %dotVH %315
        %318 = OpLoad %float %dotNH_0
               OpStore %param_5 %318
        %320 = OpLoad %float %roughness_1
               OpStore %param_6 %320
        %321 = OpFunctionCall %float %D_GGX_f1_f1_ %param_5 %param_6
        %322 = OpLoad %float %dotNH_0
        %323 = OpFMul %float %321 %322
        %325 = OpLoad %float %dotVH
        %326 = OpFMul %float %float_4 %325
        %327 = OpFDiv %float %323 %326
        %329 = OpFAdd %float %327 %float_9_99999975en05
               OpStore %pdf %329
        %331 = OpAccessChain %_ptr_PushConstant_uint %consts %int_1
        %332 = OpLoad %uint %331
        %333 = OpConvertUToF %float %332
        %334 = OpLoad %float %pdf
        %335 = OpFMul %float %333 %334
        %336 = OpFDiv %float %float_1 %335
               OpStore %omegaS %336
        %340 = OpLoad %float %envMapDim
        %341 = OpFMul %float %float_6 %340
        %342 = OpLoad %float %envMapDim
        %343 = OpFMul %float %341 %342
        %344 = OpFDiv %float %float_12_566371 %343
               OpStore %omegaP %344
        %346 = OpLoad %float %roughness_1
        %347 = OpFOrdEqual %bool %346 %float_0
               OpSelectionMerge %350 None
               OpBranchConditional %347 %349 %351
        %349 = OpLabel
               OpStore %348 %float_0
               OpBranch %350
        %351 = OpLabel
        %353 = OpLoad %float %omegaS
        %354 = OpLoad %float %omegaP
        %355 = OpFDiv %float %353 %354
        %356 = OpExtInst %float %1 Log2 %355
        %357 = OpFMul %float %float_0_5 %356
        %358 = OpFAdd %float %357 %float_1
        %359 = OpExtInst %float %1 FMax %358 %float_0
               OpStore %348 %359
               OpBranch %350
        %350 = OpLabel
        %360 = OpLoad %float %348
               OpStore %mipLevel %360
        %361 = OpLoad %246 %samplerEnv
        %362 = OpLoad %v3float %L
        %363 = OpLoad %float %mipLevel
        %365 = OpImageSampleExplicitLod %v4float %361 %362 Lod %363
        %366 = OpVectorShuffle %v3float %365 %365 0 1 2
        %367 = OpLoad %float %dotNL
        %368 = OpVectorTimesScalar %v3float %366 %367
        %369 = OpLoad %v3float %color
        %370 = OpFAdd %v3float %369 %368
               OpStore %color %370
        %371 = OpLoad %float %dotNL
        %372 = OpLoad %float %totalWeight
        %373 = OpFAdd %float %372 %371
               OpStore %totalWeight %373
               OpBranch %305
        %305 = OpLabel
               OpBranch %261
        %261 = OpLabel
        %374 = OpLoad %uint %i_0
        %375 = OpIAdd %uint %374 %int_1
               OpStore %i_0 %375
               OpBranch %258
        %260 = OpLabel
        %376 = OpLoad %v3float %color
        %377 = OpLoad %float %totalWeight
        %378 = OpCompositeConstruct %v3float %377 %377 %377
        %379 = OpFDiv %v3float %376 %378
               OpReturnValue %379
               OpFunctionEnd
