; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 362
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outColor %inUV
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
               OpName %G_SchlicksmithGGX_f1_f1_f1_ "G_SchlicksmithGGX(f1;f1;f1;"
               OpName %dotNL "dotNL"
               OpName %dotNV "dotNV"
               OpName %roughness_0 "roughness"
               OpName %BRDF_f1_f1_ "BRDF(f1;f1;"
               OpName %NoV "NoV"
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
               OpName %k "k"
               OpName %GL "GL"
               OpName %GV "GV"
               OpName %V "V"
               OpName %LUT "LUT"
               OpName %i_0 "i"
               OpName %NUM_SAMPLES "NUM_SAMPLES"
               OpName %Xi_0 "Xi"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %H_0 "H"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %L "L"
               OpName %dotNL_0 "dotNL"
               OpName %dotNV_0 "dotNV"
               OpName %dotVH "dotVH"
               OpName %dotNH "dotNH"
               OpName %G "G"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpName %G_Vis "G_Vis"
               OpName %Fc "Fc"
               OpName %outColor "outColor"
               OpName %inUV "inUV"
               OpName %param_8 "param"
               OpName %param_9 "param"
               OpDecorate %NUM_SAMPLES SpecId 0
               OpDecorate %outColor Location 0
               OpDecorate %inUV Location 0
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
         %29 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float %_ptr_Function_float
         %35 = OpTypeFunction %v2float %_ptr_Function_float %_ptr_Function_float
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
        %181 = OpConstantComposite %v3float %float_0 %float_0 %float_1
        %182 = OpConstantComposite %v3float %float_1 %float_0 %float_0
     %v3bool = OpTypeVector %bool 3
    %float_2 = OpConstant %float 2
        %251 = OpConstantComposite %v2float %float_0 %float_0
%NUM_SAMPLES = OpSpecConstant %uint 1024
    %float_5 = OpConstant %float 5
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Input_float = OpTypePointer Input %float
%float_3_14159274 = OpConstant %float 3.14159274
       %main = OpFunction %void None %3
          %5 = OpLabel
    %param_8 = OpVariable %_ptr_Function_float Function
    %param_9 = OpVariable %_ptr_Function_float Function
        %350 = OpAccessChain %_ptr_Input_float %inUV %uint_1
        %351 = OpLoad %float %350
        %352 = OpFSub %float %float_1 %351
        %354 = OpAccessChain %_ptr_Input_float %inUV %uint_0
        %355 = OpLoad %float %354
               OpStore %param_8 %355
               OpStore %param_9 %352
        %357 = OpFunctionCall %v2float %BRDF_f1_f1_ %param_8 %param_9
        %358 = OpCompositeExtract %float %357 0
        %359 = OpCompositeExtract %float %357 1
        %360 = OpCompositeConstruct %v4float %358 %359 %float_0 %float_1
               OpStore %outColor %360
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
         %47 = OpLoad %v2float %co
         %48 = OpLoad %float %a
         %49 = OpLoad %float %b
         %50 = OpCompositeConstruct %v2float %48 %49
         %51 = OpDot %float %47 %50
               OpStore %dt %51
         %53 = OpLoad %float %dt
         %55 = OpFMod %float %53 %float_3_1400001
               OpStore %sn %55
         %56 = OpLoad %float %sn
         %57 = OpExtInst %float %1 Sin %56
         %58 = OpLoad %float %c
         %59 = OpFMul %float %57 %58
         %60 = OpExtInst %float %1 Fract %59
               OpReturnValue %60
               OpFunctionEnd
%hammersley2d_u1_u1_ = OpFunction %v2float None %15
          %i = OpFunctionParameter %_ptr_Function_uint
          %N = OpFunctionParameter %_ptr_Function_uint
         %19 = OpLabel
       %bits = OpVariable %_ptr_Function_uint Function
        %rdi = OpVariable %_ptr_Function_float Function
         %64 = OpLoad %uint %i
         %66 = OpShiftLeftLogical %uint %64 %uint_16
         %67 = OpLoad %uint %i
         %68 = OpShiftRightLogical %uint %67 %uint_16
         %69 = OpBitwiseOr %uint %66 %68
               OpStore %bits %69
         %70 = OpLoad %uint %bits
         %72 = OpBitwiseAnd %uint %70 %uint_1431655765
         %74 = OpShiftLeftLogical %uint %72 %uint_1
         %75 = OpLoad %uint %bits
         %77 = OpBitwiseAnd %uint %75 %uint_2863311530
         %78 = OpShiftRightLogical %uint %77 %uint_1
         %79 = OpBitwiseOr %uint %74 %78
               OpStore %bits %79
         %80 = OpLoad %uint %bits
         %82 = OpBitwiseAnd %uint %80 %uint_858993459
         %84 = OpShiftLeftLogical %uint %82 %uint_2
         %85 = OpLoad %uint %bits
         %87 = OpBitwiseAnd %uint %85 %uint_3435973836
         %88 = OpShiftRightLogical %uint %87 %uint_2
         %89 = OpBitwiseOr %uint %84 %88
               OpStore %bits %89
         %90 = OpLoad %uint %bits
         %92 = OpBitwiseAnd %uint %90 %uint_252645135
         %94 = OpShiftLeftLogical %uint %92 %uint_4
         %95 = OpLoad %uint %bits
         %97 = OpBitwiseAnd %uint %95 %uint_4042322160
         %98 = OpShiftRightLogical %uint %97 %uint_4
         %99 = OpBitwiseOr %uint %94 %98
               OpStore %bits %99
        %100 = OpLoad %uint %bits
        %102 = OpBitwiseAnd %uint %100 %uint_16711935
        %104 = OpShiftLeftLogical %uint %102 %uint_8
        %105 = OpLoad %uint %bits
        %107 = OpBitwiseAnd %uint %105 %uint_4278255360
        %108 = OpShiftRightLogical %uint %107 %uint_8
        %109 = OpBitwiseOr %uint %104 %108
               OpStore %bits %109
        %111 = OpLoad %uint %bits
        %112 = OpConvertUToF %float %111
        %114 = OpFMul %float %112 %float_2_32830644en10
               OpStore %rdi %114
        %115 = OpLoad %uint %i
        %116 = OpConvertUToF %float %115
        %117 = OpLoad %uint %N
        %118 = OpConvertUToF %float %117
        %119 = OpFDiv %float %116 %118
        %120 = OpLoad %float %rdi
        %121 = OpCompositeConstruct %v2float %119 %120
               OpReturnValue %121
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
        %125 = OpLoad %float %roughness
        %126 = OpLoad %float %roughness
        %127 = OpFMul %float %125 %126
               OpStore %alpha %127
        %131 = OpAccessChain %_ptr_Function_float %Xi %uint_0
        %132 = OpLoad %float %131
        %133 = OpFMul %float %float_6_28318548 %132
        %135 = OpLoad %v3float %normal
        %136 = OpVectorShuffle %v2float %135 %135 0 2
               OpStore %param %136
        %137 = OpFunctionCall %float %random_vf2_ %param
        %139 = OpFMul %float %137 %float_0_100000001
        %140 = OpFAdd %float %133 %139
               OpStore %phi %140
        %143 = OpAccessChain %_ptr_Function_float %Xi %uint_1
        %144 = OpLoad %float %143
        %145 = OpFSub %float %float_1 %144
        %146 = OpLoad %float %alpha
        %147 = OpLoad %float %alpha
        %148 = OpFMul %float %146 %147
        %149 = OpFSub %float %148 %float_1
        %150 = OpAccessChain %_ptr_Function_float %Xi %uint_1
        %151 = OpLoad %float %150
        %152 = OpFMul %float %149 %151
        %153 = OpFAdd %float %float_1 %152
        %154 = OpFDiv %float %145 %153
        %155 = OpExtInst %float %1 Sqrt %154
               OpStore %cosTheta %155
        %157 = OpLoad %float %cosTheta
        %158 = OpLoad %float %cosTheta
        %159 = OpFMul %float %157 %158
        %160 = OpFSub %float %float_1 %159
        %161 = OpExtInst %float %1 Sqrt %160
               OpStore %sinTheta %161
        %163 = OpLoad %float %sinTheta
        %164 = OpLoad %float %phi
        %165 = OpExtInst %float %1 Cos %164
        %166 = OpFMul %float %163 %165
        %167 = OpLoad %float %sinTheta
        %168 = OpLoad %float %phi
        %169 = OpExtInst %float %1 Sin %168
        %170 = OpFMul %float %167 %169
        %171 = OpLoad %float %cosTheta
        %172 = OpCompositeConstruct %v3float %166 %170 %171
               OpStore %H %172
        %174 = OpAccessChain %_ptr_Function_float %normal %uint_2
        %175 = OpLoad %float %174
        %176 = OpExtInst %float %1 FAbs %175
        %179 = OpFOrdLessThan %bool %176 %float_0_999000013
        %184 = OpCompositeConstruct %v3bool %179 %179 %179
        %185 = OpSelect %v3float %184 %181 %182
               OpStore %up %185
        %187 = OpLoad %v3float %up
        %188 = OpLoad %v3float %normal
        %189 = OpExtInst %v3float %1 Cross %187 %188
        %190 = OpExtInst %v3float %1 Normalize %189
               OpStore %tangentX %190
        %192 = OpLoad %v3float %normal
        %193 = OpLoad %v3float %tangentX
        %194 = OpExtInst %v3float %1 Cross %192 %193
        %195 = OpExtInst %v3float %1 Normalize %194
               OpStore %tangentY %195
        %196 = OpLoad %v3float %tangentX
        %197 = OpAccessChain %_ptr_Function_float %H %uint_0
        %198 = OpLoad %float %197
        %199 = OpVectorTimesScalar %v3float %196 %198
        %200 = OpLoad %v3float %tangentY
        %201 = OpAccessChain %_ptr_Function_float %H %uint_1
        %202 = OpLoad %float %201
        %203 = OpVectorTimesScalar %v3float %200 %202
        %204 = OpFAdd %v3float %199 %203
        %205 = OpLoad %v3float %normal
        %206 = OpAccessChain %_ptr_Function_float %H %uint_2
        %207 = OpLoad %float %206
        %208 = OpVectorTimesScalar %v3float %205 %207
        %209 = OpFAdd %v3float %204 %208
        %210 = OpExtInst %v3float %1 Normalize %209
               OpReturnValue %210
               OpFunctionEnd
%G_SchlicksmithGGX_f1_f1_f1_ = OpFunction %float None %29
      %dotNL = OpFunctionParameter %_ptr_Function_float
      %dotNV = OpFunctionParameter %_ptr_Function_float
%roughness_0 = OpFunctionParameter %_ptr_Function_float
         %34 = OpLabel
          %k = OpVariable %_ptr_Function_float Function
         %GL = OpVariable %_ptr_Function_float Function
         %GV = OpVariable %_ptr_Function_float Function
        %214 = OpLoad %float %roughness_0
        %215 = OpLoad %float %roughness_0
        %216 = OpFMul %float %214 %215
        %218 = OpFDiv %float %216 %float_2
               OpStore %k %218
        %220 = OpLoad %float %dotNL
        %221 = OpLoad %float %dotNL
        %222 = OpLoad %float %k
        %223 = OpFSub %float %float_1 %222
        %224 = OpFMul %float %221 %223
        %225 = OpLoad %float %k
        %226 = OpFAdd %float %224 %225
        %227 = OpFDiv %float %220 %226
               OpStore %GL %227
        %229 = OpLoad %float %dotNV
        %230 = OpLoad %float %dotNV
        %231 = OpLoad %float %k
        %232 = OpFSub %float %float_1 %231
        %233 = OpFMul %float %230 %232
        %234 = OpLoad %float %k
        %235 = OpFAdd %float %233 %234
        %236 = OpFDiv %float %229 %235
               OpStore %GV %236
        %237 = OpLoad %float %GL
        %238 = OpLoad %float %GV
        %239 = OpFMul %float %237 %238
               OpReturnValue %239
               OpFunctionEnd
%BRDF_f1_f1_ = OpFunction %v2float None %35
        %NoV = OpFunctionParameter %_ptr_Function_float
%roughness_1 = OpFunctionParameter %_ptr_Function_float
         %39 = OpLabel
          %V = OpVariable %_ptr_Function_v3float Function
        %LUT = OpVariable %_ptr_Function_v2float Function
        %i_0 = OpVariable %_ptr_Function_uint Function
       %Xi_0 = OpVariable %_ptr_Function_v2float Function
    %param_0 = OpVariable %_ptr_Function_uint Function
    %param_1 = OpVariable %_ptr_Function_uint Function
        %H_0 = OpVariable %_ptr_Function_v3float Function
    %param_2 = OpVariable %_ptr_Function_v2float Function
    %param_3 = OpVariable %_ptr_Function_float Function
    %param_4 = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
    %dotNL_0 = OpVariable %_ptr_Function_float Function
    %dotNV_0 = OpVariable %_ptr_Function_float Function
      %dotVH = OpVariable %_ptr_Function_float Function
      %dotNH = OpVariable %_ptr_Function_float Function
          %G = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_float Function
    %param_6 = OpVariable %_ptr_Function_float Function
    %param_7 = OpVariable %_ptr_Function_float Function
      %G_Vis = OpVariable %_ptr_Function_float Function
         %Fc = OpVariable %_ptr_Function_float Function
        %243 = OpLoad %float %NoV
        %244 = OpLoad %float %NoV
        %245 = OpFMul %float %243 %244
        %246 = OpFSub %float %float_1 %245
        %247 = OpExtInst %float %1 Sqrt %246
        %248 = OpLoad %float %NoV
        %249 = OpCompositeConstruct %v3float %247 %float_0 %248
               OpStore %V %249
               OpStore %LUT %251
               OpStore %i_0 %uint_0
               OpBranch %253
        %253 = OpLabel
               OpLoopMerge %255 %256 None
               OpBranch %257
        %257 = OpLabel
        %258 = OpLoad %uint %i_0
        %260 = OpULessThan %bool %258 %NUM_SAMPLES
               OpBranchConditional %260 %254 %255
        %254 = OpLabel
        %263 = OpLoad %uint %i_0
               OpStore %param_0 %263
               OpStore %param_1 %NUM_SAMPLES
        %265 = OpFunctionCall %v2float %hammersley2d_u1_u1_ %param_0 %param_1
               OpStore %Xi_0 %265
        %268 = OpLoad %v2float %Xi_0
               OpStore %param_2 %268
        %270 = OpLoad %float %roughness_1
               OpStore %param_3 %270
               OpStore %param_4 %181
        %272 = OpFunctionCall %v3float %importanceSample_GGX_vf2_f1_vf3_ %param_2 %param_3 %param_4
               OpStore %H_0 %272
        %274 = OpLoad %v3float %V
        %275 = OpLoad %v3float %H_0
        %276 = OpDot %float %274 %275
        %277 = OpFMul %float %float_2 %276
        %278 = OpLoad %v3float %H_0
        %279 = OpVectorTimesScalar %v3float %278 %277
        %280 = OpLoad %v3float %V
        %281 = OpFSub %v3float %279 %280
               OpStore %L %281
        %283 = OpLoad %v3float %L
        %284 = OpDot %float %181 %283
        %285 = OpExtInst %float %1 FMax %284 %float_0
               OpStore %dotNL_0 %285
        %287 = OpLoad %v3float %V
        %288 = OpDot %float %181 %287
        %289 = OpExtInst %float %1 FMax %288 %float_0
               OpStore %dotNV_0 %289
        %291 = OpLoad %v3float %V
        %292 = OpLoad %v3float %H_0
        %293 = OpDot %float %291 %292
        %294 = OpExtInst %float %1 FMax %293 %float_0
               OpStore %dotVH %294
        %296 = OpLoad %v3float %H_0
        %297 = OpDot %float %296 %181
        %298 = OpExtInst %float %1 FMax %297 %float_0
               OpStore %dotNH %298
        %299 = OpLoad %float %dotNL_0
        %300 = OpFOrdGreaterThan %bool %299 %float_0
               OpSelectionMerge %302 None
               OpBranchConditional %300 %301 %302
        %301 = OpLabel
        %305 = OpLoad %float %dotNL_0
               OpStore %param_5 %305
        %307 = OpLoad %float %dotNV_0
               OpStore %param_6 %307
        %309 = OpLoad %float %roughness_1
               OpStore %param_7 %309
        %310 = OpFunctionCall %float %G_SchlicksmithGGX_f1_f1_f1_ %param_5 %param_6 %param_7
               OpStore %G %310
        %312 = OpLoad %float %G
        %313 = OpLoad %float %dotVH
        %314 = OpFMul %float %312 %313
        %315 = OpLoad %float %dotNH
        %316 = OpLoad %float %dotNV_0
        %317 = OpFMul %float %315 %316
        %318 = OpFDiv %float %314 %317
               OpStore %G_Vis %318
        %320 = OpLoad %float %dotVH
        %321 = OpFSub %float %float_1 %320
        %323 = OpExtInst %float %1 Pow %321 %float_5
               OpStore %Fc %323
        %324 = OpLoad %float %Fc
        %325 = OpFSub %float %float_1 %324
        %326 = OpLoad %float %G_Vis
        %327 = OpFMul %float %325 %326
        %328 = OpLoad %float %Fc
        %329 = OpLoad %float %G_Vis
        %330 = OpFMul %float %328 %329
        %331 = OpCompositeConstruct %v2float %327 %330
        %332 = OpLoad %v2float %LUT
        %333 = OpFAdd %v2float %332 %331
               OpStore %LUT %333
               OpBranch %302
        %302 = OpLabel
               OpBranch %256
        %256 = OpLabel
        %334 = OpLoad %uint %i_0
        %337 = OpIAdd %uint %334 %int_1
               OpStore %i_0 %337
               OpBranch %253
        %255 = OpLabel
        %338 = OpLoad %v2float %LUT
        %339 = OpConvertUToF %float %NUM_SAMPLES
        %340 = OpCompositeConstruct %v2float %339 %339
        %341 = OpFDiv %v2float %338 %340
               OpReturnValue %341
               OpFunctionEnd
