; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 347
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %inViewPos %inPos %inNormal %outFragColor %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %textureProj_vf4_vf2_u1_ "textureProj(vf4;vf2;u1;"
               OpName %shadowCoord "shadowCoord"
               OpName %offset "offset"
               OpName %cascadeIndex "cascadeIndex"
               OpName %filterPCF_vf4_u1_ "filterPCF(vf4;u1;"
               OpName %sc "sc"
               OpName %cascadeIndex_0 "cascadeIndex"
               OpName %shadow "shadow"
               OpName %bias "bias"
               OpName %dist "dist"
               OpName %shadowMap "shadowMap"
               OpName %texDim "texDim"
               OpName %scale "scale"
               OpName %dx "dx"
               OpName %dy "dy"
               OpName %shadowFactor "shadowFactor"
               OpName %count "count"
               OpName %range "range"
               OpName %x "x"
               OpName %y "y"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %color "color"
               OpName %colorMap "colorMap"
               OpName %inUV "inUV"
               OpName %cascadeIndex_1 "cascadeIndex"
               OpName %i "i"
               OpName %inViewPos "inViewPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "cascadeSplits"
               OpMemberName %UBO 1 "cascadeViewProjMat"
               OpMemberName %UBO 2 "inverseViewMat"
               OpMemberName %UBO 3 "lightDir"
               OpMemberName %UBO 4 "_pad"
               OpMemberName %UBO 5 "colorCascades"
               OpName %ubo "ubo"
               OpName %shadowCoord_0 "shadowCoord"
               OpName %inPos "inPos"
               OpName %shadow_0 "shadow"
               OpName %enablePCF "enablePCF"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %H "H"
               OpName %diffuse "diffuse"
               OpName %lightColor "lightColor"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpDecorate %shadowMap DescriptorSet 0
               OpDecorate %shadowMap Binding 1
               OpDecorate %colorMap DescriptorSet 1
               OpDecorate %colorMap Binding 0
               OpDecorate %inUV Location 4
               OpDecorate %inViewPos Location 2
               OpDecorate %_arr_mat4v4float_uint_4 ArrayStride 64
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 16
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 272
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 336
               OpMemberDecorate %UBO 4 Offset 348
               OpMemberDecorate %UBO 5 Offset 352
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 2
               OpDecorate %inPos Location 3
               OpDecorate %enablePCF SpecId 0
               OpDecorate %inNormal Location 0
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
         %13 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_v2float %_ptr_Function_uint
         %19 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_uint
%_ptr_Function_float = OpTypePointer Function %float
    %float_1 = OpConstant %float 1
%float_0_00499999989 = OpConstant %float 0.00499999989
       %bool = OpTypeBool
     %uint_2 = OpConstant %uint 2
   %float_n1 = OpConstant %float -1
         %44 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %45 = OpTypeSampledImage %44
%_ptr_UniformConstant_45 = OpTypePointer UniformConstant %45
  %shadowMap = OpVariable %_ptr_UniformConstant_45 UniformConstant
    %v3float = OpTypeVector %float 3
     %uint_0 = OpConstant %uint 0
     %uint_3 = OpConstant %uint 3
    %float_0 = OpConstant %float 0
%float_0_300000012 = OpConstant %float 0.300000012
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
      %int_0 = OpConstant %int 0
      %v3int = OpTypeVector %int 3
 %float_0_75 = OpConstant %float 0.75
%_ptr_Function_int = OpTypePointer Function %int
     %uint_1 = OpConstant %uint 1
      %int_1 = OpConstant %int 1
        %166 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %167 = OpTypeSampledImage %166
%_ptr_UniformConstant_167 = OpTypePointer UniformConstant %167
   %colorMap = OpVariable %_ptr_UniformConstant_167 UniformConstant
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
  %float_0_5 = OpConstant %float 0.5
%_ptr_Input_v3float = OpTypePointer Input %v3float
  %inViewPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_float = OpTypePointer Input %float
%mat4v4float = OpTypeMatrix %v4float 4
     %uint_4 = OpConstant %uint 4
%_arr_mat4v4float_uint_4 = OpTypeArray %mat4v4float %uint_4
        %UBO = OpTypeStruct %v4float %_arr_mat4v4float_uint_4 %mat4v4float %v3float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
        %214 = OpConstantComposite %v4float %float_0_5 %float_0 %float_0 %float_0
        %215 = OpConstantComposite %v4float %float_0 %float_0_5 %float_0 %float_0
        %216 = OpConstantComposite %v4float %float_0 %float_0 %float_1 %float_0
        %217 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0 %float_1
        %218 = OpConstantComposite %mat4v4float %214 %215 %216 %217
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
  %enablePCF = OpSpecConstant %int 0
        %233 = OpSpecConstantOp %bool IEqual %enablePCF %int_1
        %251 = OpConstantComposite %v2float %float_0 %float_0
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
        %280 = OpConstantComposite %v3float %float_1 %float_1 %float_1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
        %289 = OpConstantComposite %v3float %float_0 %float_0 %float_0
%_ptr_Output_float = OpTypePointer Output %float
      %int_5 = OpConstant %int 5
%_ptr_Uniform_int = OpTypePointer Uniform %int
 %float_0_25 = OpConstant %float 0.25
        %317 = OpConstantComposite %v3float %float_1 %float_0_25 %float_0_25
        %324 = OpConstantComposite %v3float %float_0_25 %float_1 %float_0_25
        %331 = OpConstantComposite %v3float %float_0_25 %float_0_25 %float_1
        %338 = OpConstantComposite %v3float %float_1 %float_1 %float_0_25
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %color = OpVariable %_ptr_Function_v4float Function
%cascadeIndex_1 = OpVariable %_ptr_Function_uint Function
          %i = OpVariable %_ptr_Function_uint Function
%shadowCoord_0 = OpVariable %_ptr_Function_v4float Function
   %shadow_0 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_v4float Function
    %param_3 = OpVariable %_ptr_Function_uint Function
    %param_4 = OpVariable %_ptr_Function_v4float Function
    %param_5 = OpVariable %_ptr_Function_v2float Function
    %param_6 = OpVariable %_ptr_Function_uint Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %H = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_float Function
 %lightColor = OpVariable %_ptr_Function_v3float Function
        %170 = OpLoad %167 %colorMap
        %173 = OpLoad %v2float %inUV
        %174 = OpImageSampleImplicitLod %v4float %170 %173
               OpStore %color %174
        %175 = OpAccessChain %_ptr_Function_float %color %uint_3
        %176 = OpLoad %float %175
        %178 = OpFOrdLessThan %bool %176 %float_0_5
               OpSelectionMerge %180 None
               OpBranchConditional %178 %179 %180
        %179 = OpLabel
               OpKill
        %180 = OpLabel
               OpStore %cascadeIndex_1 %uint_0
               OpStore %i %uint_0
               OpBranch %184
        %184 = OpLabel
               OpLoopMerge %186 %187 None
               OpBranch %188
        %188 = OpLabel
        %189 = OpLoad %uint %i
        %190 = OpULessThan %bool %189 %uint_3
               OpBranchConditional %190 %185 %186
        %185 = OpLabel
        %194 = OpAccessChain %_ptr_Input_float %inViewPos %uint_2
        %195 = OpLoad %float %194
        %202 = OpLoad %uint %i
        %204 = OpAccessChain %_ptr_Uniform_float %ubo %int_0 %202
        %205 = OpLoad %float %204
        %206 = OpFOrdLessThan %bool %195 %205
               OpSelectionMerge %208 None
               OpBranchConditional %206 %207 %208
        %207 = OpLabel
        %209 = OpLoad %uint %i
        %210 = OpIAdd %uint %209 %uint_1
               OpStore %cascadeIndex_1 %210
               OpBranch %208
        %208 = OpLabel
               OpBranch %187
        %187 = OpLabel
        %211 = OpLoad %uint %i
        %212 = OpIAdd %uint %211 %int_1
               OpStore %i %212
               OpBranch %184
        %186 = OpLabel
        %219 = OpLoad %uint %cascadeIndex_1
        %221 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %219
        %222 = OpLoad %mat4v4float %221
        %223 = OpMatrixTimesMatrix %mat4v4float %218 %222
        %225 = OpLoad %v3float %inPos
        %226 = OpCompositeExtract %float %225 0
        %227 = OpCompositeExtract %float %225 1
        %228 = OpCompositeExtract %float %225 2
        %229 = OpCompositeConstruct %v4float %226 %227 %228 %float_1
        %230 = OpMatrixTimesVector %v4float %223 %229
               OpStore %shadowCoord_0 %230
               OpStore %shadow_0 %float_0
               OpSelectionMerge %235 None
               OpBranchConditional %233 %234 %245
        %234 = OpLabel
        %236 = OpLoad %v4float %shadowCoord_0
        %237 = OpAccessChain %_ptr_Function_float %shadowCoord_0 %uint_3
        %238 = OpLoad %float %237
        %239 = OpCompositeConstruct %v4float %238 %238 %238 %238
        %240 = OpFDiv %v4float %236 %239
               OpStore %param_2 %240
        %243 = OpLoad %uint %cascadeIndex_1
               OpStore %param_3 %243
        %244 = OpFunctionCall %float %filterPCF_vf4_u1_ %param_2 %param_3
               OpStore %shadow_0 %244
               OpBranch %235
        %245 = OpLabel
        %246 = OpLoad %v4float %shadowCoord_0
        %247 = OpAccessChain %_ptr_Function_float %shadowCoord_0 %uint_3
        %248 = OpLoad %float %247
        %249 = OpCompositeConstruct %v4float %248 %248 %248 %248
        %250 = OpFDiv %v4float %246 %249
               OpStore %param_4 %250
               OpStore %param_5 %251
        %255 = OpLoad %uint %cascadeIndex_1
               OpStore %param_6 %255
        %256 = OpFunctionCall %float %textureProj_vf4_vf2_u1_ %param_4 %param_5 %param_6
               OpStore %shadow_0 %256
               OpBranch %235
        %235 = OpLabel
        %260 = OpLoad %v3float %inNormal
        %261 = OpExtInst %v3float %1 Normalize %260
               OpStore %N %261
        %265 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3
        %266 = OpLoad %v3float %265
        %267 = OpFNegate %v3float %266
        %268 = OpExtInst %v3float %1 Normalize %267
               OpStore %L %268
        %270 = OpLoad %v3float %L
        %271 = OpLoad %v3float %inViewPos
        %272 = OpFAdd %v3float %270 %271
        %273 = OpExtInst %v3float %1 Normalize %272
               OpStore %H %273
        %275 = OpLoad %v3float %N
        %276 = OpLoad %v3float %L
        %277 = OpDot %float %275 %276
        %278 = OpExtInst %float %1 FMax %277 %float_0_300000012
               OpStore %diffuse %278
               OpStore %lightColor %280
        %283 = OpLoad %v3float %lightColor
        %284 = OpLoad %float %diffuse
        %285 = OpLoad %v4float %color
        %286 = OpVectorShuffle %v3float %285 %285 0 1 2
        %287 = OpVectorTimesScalar %v3float %286 %284
        %288 = OpFMul %v3float %283 %287
        %290 = OpExtInst %v3float %1 FMax %288 %289
        %291 = OpLoad %v4float %outFragColor
        %292 = OpVectorShuffle %v4float %291 %290 4 5 6 3
               OpStore %outFragColor %292
        %293 = OpLoad %float %shadow_0
        %294 = OpLoad %v4float %outFragColor
        %295 = OpVectorShuffle %v3float %294 %294 0 1 2
        %296 = OpVectorTimesScalar %v3float %295 %293
        %297 = OpLoad %v4float %outFragColor
        %298 = OpVectorShuffle %v4float %297 %296 4 5 6 3
               OpStore %outFragColor %298
        %299 = OpAccessChain %_ptr_Function_float %color %uint_3
        %300 = OpLoad %float %299
        %302 = OpAccessChain %_ptr_Output_float %outFragColor %uint_3
               OpStore %302 %300
        %305 = OpAccessChain %_ptr_Uniform_int %ubo %int_5
        %306 = OpLoad %int %305
        %307 = OpIEqual %bool %306 %int_1
               OpSelectionMerge %309 None
               OpBranchConditional %307 %308 %309
        %308 = OpLabel
        %310 = OpLoad %uint %cascadeIndex_1
               OpSelectionMerge %315 None
               OpSwitch %310 %315 0 %311 1 %312 2 %313 3 %314
        %311 = OpLabel
        %318 = OpLoad %v4float %outFragColor
        %319 = OpVectorShuffle %v3float %318 %318 0 1 2
        %320 = OpFMul %v3float %319 %317
        %321 = OpLoad %v4float %outFragColor
        %322 = OpVectorShuffle %v4float %321 %320 4 5 6 3
               OpStore %outFragColor %322
               OpBranch %315
        %312 = OpLabel
        %325 = OpLoad %v4float %outFragColor
        %326 = OpVectorShuffle %v3float %325 %325 0 1 2
        %327 = OpFMul %v3float %326 %324
        %328 = OpLoad %v4float %outFragColor
        %329 = OpVectorShuffle %v4float %328 %327 4 5 6 3
               OpStore %outFragColor %329
               OpBranch %315
        %313 = OpLabel
        %332 = OpLoad %v4float %outFragColor
        %333 = OpVectorShuffle %v3float %332 %332 0 1 2
        %334 = OpFMul %v3float %333 %331
        %335 = OpLoad %v4float %outFragColor
        %336 = OpVectorShuffle %v4float %335 %334 4 5 6 3
               OpStore %outFragColor %336
               OpBranch %315
        %314 = OpLabel
        %339 = OpLoad %v4float %outFragColor
        %340 = OpVectorShuffle %v3float %339 %339 0 1 2
        %341 = OpFMul %v3float %340 %338
        %342 = OpLoad %v4float %outFragColor
        %343 = OpVectorShuffle %v4float %342 %341 4 5 6 3
               OpStore %outFragColor %343
               OpBranch %315
        %315 = OpLabel
               OpBranch %309
        %309 = OpLabel
               OpReturn
               OpFunctionEnd
%textureProj_vf4_vf2_u1_ = OpFunction %float None %13
%shadowCoord = OpFunctionParameter %_ptr_Function_v4float
     %offset = OpFunctionParameter %_ptr_Function_v2float
%cascadeIndex = OpFunctionParameter %_ptr_Function_uint
         %18 = OpLabel
     %shadow = OpVariable %_ptr_Function_float Function
       %bias = OpVariable %_ptr_Function_float Function
       %dist = OpVariable %_ptr_Function_float Function
               OpStore %shadow %float_1
               OpStore %bias %float_0_00499999989
         %31 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %32 = OpLoad %float %31
         %34 = OpFOrdGreaterThan %bool %32 %float_n1
               OpSelectionMerge %36 None
               OpBranchConditional %34 %35 %36
         %35 = OpLabel
         %37 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %38 = OpLoad %float %37
         %39 = OpFOrdLessThan %bool %38 %float_1
               OpBranch %36
         %36 = OpLabel
         %40 = OpPhi %bool %34 %18 %39 %35
               OpSelectionMerge %42 None
               OpBranchConditional %40 %41 %42
         %41 = OpLabel
         %48 = OpLoad %45 %shadowMap
         %49 = OpLoad %v4float %shadowCoord
         %50 = OpVectorShuffle %v2float %49 %49 0 1
         %51 = OpLoad %v2float %offset
         %52 = OpFAdd %v2float %50 %51
         %53 = OpLoad %uint %cascadeIndex
         %54 = OpConvertUToF %float %53
         %56 = OpCompositeExtract %float %52 0
         %57 = OpCompositeExtract %float %52 1
         %58 = OpCompositeConstruct %v3float %56 %57 %54
         %59 = OpImageSampleImplicitLod %v4float %48 %58
         %61 = OpCompositeExtract %float %59 0
               OpStore %dist %61
         %63 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_3
         %64 = OpLoad %float %63
         %66 = OpFOrdGreaterThan %bool %64 %float_0
               OpSelectionMerge %68 None
               OpBranchConditional %66 %67 %68
         %67 = OpLabel
         %69 = OpLoad %float %dist
         %70 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %71 = OpLoad %float %70
         %72 = OpLoad %float %bias
         %73 = OpFSub %float %71 %72
         %74 = OpFOrdLessThan %bool %69 %73
               OpBranch %68
         %68 = OpLabel
         %75 = OpPhi %bool %66 %41 %74 %67
               OpSelectionMerge %77 None
               OpBranchConditional %75 %76 %77
         %76 = OpLabel
               OpStore %shadow %float_0_300000012
               OpBranch %77
         %77 = OpLabel
               OpBranch %42
         %42 = OpLabel
         %79 = OpLoad %float %shadow
               OpReturnValue %79
               OpFunctionEnd
%filterPCF_vf4_u1_ = OpFunction %float None %19
         %sc = OpFunctionParameter %_ptr_Function_v4float
%cascadeIndex_0 = OpFunctionParameter %_ptr_Function_uint
         %23 = OpLabel
     %texDim = OpVariable %_ptr_Function_v2int Function
      %scale = OpVariable %_ptr_Function_float Function
         %dx = OpVariable %_ptr_Function_float Function
         %dy = OpVariable %_ptr_Function_float Function
%shadowFactor = OpVariable %_ptr_Function_float Function
      %count = OpVariable %_ptr_Function_int Function
      %range = OpVariable %_ptr_Function_int Function
          %x = OpVariable %_ptr_Function_int Function
          %y = OpVariable %_ptr_Function_int Function
      %param = OpVariable %_ptr_Function_v4float Function
    %param_0 = OpVariable %_ptr_Function_v2float Function
    %param_1 = OpVariable %_ptr_Function_uint Function
         %86 = OpLoad %45 %shadowMap
         %88 = OpImage %44 %86
         %90 = OpImageQuerySizeLod %v3int %88 %int_0
         %91 = OpVectorShuffle %v2int %90 %90 0 1
               OpStore %texDim %91
               OpStore %scale %float_0_75
         %95 = OpLoad %float %scale
         %96 = OpFMul %float %95 %float_1
         %98 = OpAccessChain %_ptr_Function_int %texDim %uint_0
         %99 = OpLoad %int %98
        %100 = OpConvertSToF %float %99
        %101 = OpFDiv %float %96 %100
               OpStore %dx %101
        %103 = OpLoad %float %scale
        %104 = OpFMul %float %103 %float_1
        %106 = OpAccessChain %_ptr_Function_int %texDim %uint_1
        %107 = OpLoad %int %106
        %108 = OpConvertSToF %float %107
        %109 = OpFDiv %float %104 %108
               OpStore %dy %109
               OpStore %shadowFactor %float_0
               OpStore %count %int_0
               OpStore %range %int_1
        %115 = OpLoad %int %range
        %116 = OpSNegate %int %115
               OpStore %x %116
               OpBranch %117
        %117 = OpLabel
               OpLoopMerge %119 %120 None
               OpBranch %121
        %121 = OpLabel
        %122 = OpLoad %int %x
        %123 = OpLoad %int %range
        %124 = OpSLessThanEqual %bool %122 %123
               OpBranchConditional %124 %118 %119
        %118 = OpLabel
        %126 = OpLoad %int %range
        %127 = OpSNegate %int %126
               OpStore %y %127
               OpBranch %128
        %128 = OpLabel
               OpLoopMerge %130 %131 None
               OpBranch %132
        %132 = OpLabel
        %133 = OpLoad %int %y
        %134 = OpLoad %int %range
        %135 = OpSLessThanEqual %bool %133 %134
               OpBranchConditional %135 %129 %130
        %129 = OpLabel
        %136 = OpLoad %float %dx
        %137 = OpLoad %int %x
        %138 = OpConvertSToF %float %137
        %139 = OpFMul %float %136 %138
        %140 = OpLoad %float %dy
        %141 = OpLoad %int %y
        %142 = OpConvertSToF %float %141
        %143 = OpFMul %float %140 %142
        %144 = OpCompositeConstruct %v2float %139 %143
        %146 = OpLoad %v4float %sc
               OpStore %param %146
               OpStore %param_0 %144
        %149 = OpLoad %uint %cascadeIndex_0
               OpStore %param_1 %149
        %150 = OpFunctionCall %float %textureProj_vf4_vf2_u1_ %param %param_0 %param_1
        %151 = OpLoad %float %shadowFactor
        %152 = OpFAdd %float %151 %150
               OpStore %shadowFactor %152
        %153 = OpLoad %int %count
        %154 = OpIAdd %int %153 %int_1
               OpStore %count %154
               OpBranch %131
        %131 = OpLabel
        %155 = OpLoad %int %y
        %156 = OpIAdd %int %155 %int_1
               OpStore %y %156
               OpBranch %128
        %130 = OpLabel
               OpBranch %120
        %120 = OpLabel
        %157 = OpLoad %int %x
        %158 = OpIAdd %int %157 %int_1
               OpStore %x %158
               OpBranch %117
        %119 = OpLabel
        %159 = OpLoad %float %shadowFactor
        %160 = OpLoad %int %count
        %161 = OpConvertSToF %float %160
        %162 = OpFDiv %float %159 %161
               OpReturnValue %162
               OpFunctionEnd
