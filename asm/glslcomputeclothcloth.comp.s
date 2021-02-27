; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 644
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID
               OpExecutionMode %main LocalSize 10 10 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %springForce_vf3_vf3_f1_ "springForce(vf3;vf3;f1;"
               OpName %p0 "p0"
               OpName %p1 "p1"
               OpName %restDist "restDist"
               OpName %dist "dist"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "deltaT"
               OpMemberName %UBO 1 "particleMass"
               OpMemberName %UBO 2 "springStiffness"
               OpMemberName %UBO 3 "damping"
               OpMemberName %UBO 4 "restDistH"
               OpMemberName %UBO 5 "restDistV"
               OpMemberName %UBO 6 "restDistD"
               OpMemberName %UBO 7 "sphereRadius"
               OpMemberName %UBO 8 "spherePos"
               OpMemberName %UBO 9 "gravity"
               OpMemberName %UBO 10 "particleCount"
               OpName %params "params"
               OpName %id "id"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %index "index"
               OpName %Particle "Particle"
               OpMemberName %Particle 0 "pos"
               OpMemberName %Particle 1 "vel"
               OpMemberName %Particle 2 "uv"
               OpMemberName %Particle 3 "normal"
               OpMemberName %Particle 4 "pinned"
               OpName %ParticleIn "ParticleIn"
               OpMemberName %ParticleIn 0 "particleIn"
               OpName %_ ""
               OpName %ParticleOut "ParticleOut"
               OpMemberName %ParticleOut 0 "particleOut"
               OpName %__0 ""
               OpName %force "force"
               OpName %pos "pos"
               OpName %vel "vel"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpName %param_8 "param"
               OpName %param_9 "param"
               OpName %param_10 "param"
               OpName %param_11 "param"
               OpName %param_12 "param"
               OpName %param_13 "param"
               OpName %param_14 "param"
               OpName %param_15 "param"
               OpName %param_16 "param"
               OpName %param_17 "param"
               OpName %param_18 "param"
               OpName %param_19 "param"
               OpName %param_20 "param"
               OpName %param_21 "param"
               OpName %param_22 "param"
               OpName %f "f"
               OpName %sphereDist "sphereDist"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "calculateNormals"
               OpName %pushConsts "pushConsts"
               OpName %normal "normal"
               OpName %a "a"
               OpName %b "b"
               OpName %c "c"
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpMemberDecorate %UBO 2 Offset 8
               OpMemberDecorate %UBO 3 Offset 12
               OpMemberDecorate %UBO 4 Offset 16
               OpMemberDecorate %UBO 5 Offset 20
               OpMemberDecorate %UBO 6 Offset 24
               OpMemberDecorate %UBO 7 Offset 28
               OpMemberDecorate %UBO 8 Offset 32
               OpMemberDecorate %UBO 9 Offset 48
               OpMemberDecorate %UBO 10 Offset 64
               OpDecorate %UBO Block
               OpDecorate %params DescriptorSet 0
               OpDecorate %params Binding 2
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpMemberDecorate %Particle 0 Offset 0
               OpMemberDecorate %Particle 1 Offset 16
               OpMemberDecorate %Particle 2 Offset 32
               OpMemberDecorate %Particle 3 Offset 48
               OpMemberDecorate %Particle 4 Offset 64
               OpDecorate %_runtimearr_Particle ArrayStride 80
               OpMemberDecorate %ParticleIn 0 Offset 0
               OpDecorate %ParticleIn BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 0
               OpDecorate %_runtimearr_Particle_0 ArrayStride 80
               OpMemberDecorate %ParticleOut 0 Offset 0
               OpDecorate %ParticleOut BufferBlock
               OpDecorate %__0 DescriptorSet 0
               OpDecorate %__0 Binding 1
               OpMemberDecorate %PushConsts 0 Offset 0
               OpDecorate %PushConsts Block
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Function_float = OpTypePointer Function %float
         %10 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_float
    %v4float = OpTypeVector %float 4
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
        %UBO = OpTypeStruct %float %float %float %float %float %float %float %float %v4float %v4float %v2int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
     %params = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
       %uint = OpTypeInt 32 0
     %v3uint = OpTypeVector %uint 3
%_ptr_Function_v3uint = OpTypePointer Function %v3uint
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
%_ptr_Function_uint = OpTypePointer Function %uint
     %uint_1 = OpConstant %uint 1
     %int_10 = OpConstant %int 10
     %uint_0 = OpConstant %uint 0
%_ptr_Uniform_int = OpTypePointer Uniform %int
       %bool = OpTypeBool
   %Particle = OpTypeStruct %v4float %v4float %v4float %v4float %float
%_runtimearr_Particle = OpTypeRuntimeArray %Particle
 %ParticleIn = OpTypeStruct %_runtimearr_Particle
%_ptr_Uniform_ParticleIn = OpTypePointer Uniform %ParticleIn
          %_ = OpVariable %_ptr_Uniform_ParticleIn Uniform
      %int_0 = OpConstant %int 0
      %int_4 = OpConstant %int 4
    %float_1 = OpConstant %float 1
%_runtimearr_Particle_0 = OpTypeRuntimeArray %Particle
%ParticleOut = OpTypeStruct %_runtimearr_Particle_0
%_ptr_Uniform_ParticleOut = OpTypePointer Uniform %ParticleOut
        %__0 = OpVariable %_ptr_Uniform_ParticleOut Uniform
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
      %int_1 = OpConstant %int 1
    %float_0 = OpConstant %float 0
        %101 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
      %int_9 = OpConstant %int 9
      %int_5 = OpConstant %int 5
      %int_6 = OpConstant %int 6
      %int_3 = OpConstant %int 3
  %float_0_5 = OpConstant %float 0.5
      %int_8 = OpConstant %int 8
      %int_7 = OpConstant %int 7
%float_0_00999999978 = OpConstant %float 0.00999999978
 %PushConsts = OpTypeStruct %uint
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_uint = OpTypePointer PushConstant %uint
        %440 = OpConstantComposite %v3float %float_0 %float_0 %float_0
    %uint_10 = OpConstant %uint 10
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_10 %uint_10 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
         %id = OpVariable %_ptr_Function_v3uint Function
      %index = OpVariable %_ptr_Function_uint Function
      %force = OpVariable %_ptr_Function_v3float Function
        %pos = OpVariable %_ptr_Function_v3float Function
        %vel = OpVariable %_ptr_Function_v3float Function
      %param = OpVariable %_ptr_Function_v3float Function
    %param_0 = OpVariable %_ptr_Function_v3float Function
    %param_1 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_v3float Function
    %param_3 = OpVariable %_ptr_Function_v3float Function
    %param_4 = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_v3float Function
    %param_6 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_float Function
    %param_8 = OpVariable %_ptr_Function_v3float Function
    %param_9 = OpVariable %_ptr_Function_v3float Function
   %param_10 = OpVariable %_ptr_Function_float Function
   %param_11 = OpVariable %_ptr_Function_v3float Function
   %param_12 = OpVariable %_ptr_Function_v3float Function
   %param_13 = OpVariable %_ptr_Function_float Function
   %param_14 = OpVariable %_ptr_Function_v3float Function
   %param_15 = OpVariable %_ptr_Function_v3float Function
   %param_16 = OpVariable %_ptr_Function_float Function
   %param_17 = OpVariable %_ptr_Function_v3float Function
   %param_18 = OpVariable %_ptr_Function_v3float Function
   %param_19 = OpVariable %_ptr_Function_float Function
   %param_20 = OpVariable %_ptr_Function_v3float Function
   %param_21 = OpVariable %_ptr_Function_v3float Function
   %param_22 = OpVariable %_ptr_Function_float Function
          %f = OpVariable %_ptr_Function_v3float Function
 %sphereDist = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
          %a = OpVariable %_ptr_Function_v3float Function
          %b = OpVariable %_ptr_Function_v3float Function
          %c = OpVariable %_ptr_Function_v3float Function
         %46 = OpLoad %v3uint %gl_GlobalInvocationID
               OpStore %id %46
         %50 = OpAccessChain %_ptr_Function_uint %id %uint_1
         %51 = OpLoad %uint %50
         %55 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
         %56 = OpLoad %int %55
         %57 = OpBitcast %uint %56
         %58 = OpIMul %uint %51 %57
         %59 = OpAccessChain %_ptr_Function_uint %id %uint_0
         %60 = OpLoad %uint %59
         %61 = OpIAdd %uint %58 %60
               OpStore %index %61
         %62 = OpLoad %uint %index
         %63 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
         %64 = OpLoad %int %63
         %65 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_1
         %66 = OpLoad %int %65
         %67 = OpIMul %int %64 %66
         %68 = OpBitcast %uint %67
         %70 = OpUGreaterThan %bool %62 %68
               OpSelectionMerge %72 None
               OpBranchConditional %70 %71 %72
         %71 = OpLabel
               OpReturn
         %72 = OpLabel
         %80 = OpLoad %uint %index
         %82 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %80 %int_4
         %83 = OpLoad %float %82
         %85 = OpFOrdEqual %bool %83 %float_1
               OpSelectionMerge %87 None
               OpBranchConditional %85 %86 %87
         %86 = OpLabel
         %92 = OpLoad %uint %index
         %93 = OpLoad %uint %index
         %95 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %93 %int_0
         %96 = OpLoad %v4float %95
         %97 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %92 %int_0
               OpStore %97 %96
         %98 = OpLoad %uint %index
        %102 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %98 %int_1
               OpStore %102 %101
               OpReturn
         %87 = OpLabel
        %106 = OpAccessChain %_ptr_Uniform_v4float %params %int_9
        %107 = OpLoad %v4float %106
        %108 = OpVectorShuffle %v3float %107 %107 0 1 2
        %109 = OpAccessChain %_ptr_Uniform_float %params %int_1
        %110 = OpLoad %float %109
        %111 = OpVectorTimesScalar %v3float %108 %110
               OpStore %force %111
        %113 = OpLoad %uint %index
        %114 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %113 %int_0
        %115 = OpLoad %v4float %114
        %116 = OpVectorShuffle %v3float %115 %115 0 1 2
               OpStore %pos %116
        %118 = OpLoad %uint %index
        %119 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %118 %int_1
        %120 = OpLoad %v4float %119
        %121 = OpVectorShuffle %v3float %120 %120 0 1 2
               OpStore %vel %121
        %122 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %123 = OpLoad %uint %122
        %124 = OpUGreaterThan %bool %123 %uint_0
               OpSelectionMerge %126 None
               OpBranchConditional %124 %125 %126
        %125 = OpLabel
        %127 = OpLoad %uint %index
        %128 = OpISub %uint %127 %uint_1
        %130 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %128 %int_0
        %131 = OpLoad %v4float %130
        %132 = OpVectorShuffle %v3float %131 %131 0 1 2
               OpStore %param %132
        %134 = OpLoad %v3float %pos
               OpStore %param_0 %134
        %136 = OpAccessChain %_ptr_Uniform_float %params %int_4
        %137 = OpLoad %float %136
               OpStore %param_1 %137
        %138 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param %param_0 %param_1
        %139 = OpLoad %v3float %force
        %140 = OpFAdd %v3float %139 %138
               OpStore %force %140
               OpBranch %126
        %126 = OpLabel
        %141 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %142 = OpLoad %uint %141
        %143 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %144 = OpLoad %int %143
        %145 = OpISub %int %144 %int_1
        %146 = OpBitcast %uint %145
        %147 = OpULessThan %bool %142 %146
               OpSelectionMerge %149 None
               OpBranchConditional %147 %148 %149
        %148 = OpLabel
        %150 = OpLoad %uint %index
        %151 = OpIAdd %uint %150 %uint_1
        %153 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %151 %int_0
        %154 = OpLoad %v4float %153
        %155 = OpVectorShuffle %v3float %154 %154 0 1 2
               OpStore %param_2 %155
        %157 = OpLoad %v3float %pos
               OpStore %param_3 %157
        %159 = OpAccessChain %_ptr_Uniform_float %params %int_4
        %160 = OpLoad %float %159
               OpStore %param_4 %160
        %161 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_2 %param_3 %param_4
        %162 = OpLoad %v3float %force
        %163 = OpFAdd %v3float %162 %161
               OpStore %force %163
               OpBranch %149
        %149 = OpLabel
        %164 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %165 = OpLoad %uint %164
        %166 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_1
        %167 = OpLoad %int %166
        %168 = OpISub %int %167 %int_1
        %169 = OpBitcast %uint %168
        %170 = OpULessThan %bool %165 %169
               OpSelectionMerge %172 None
               OpBranchConditional %170 %171 %172
        %171 = OpLabel
        %173 = OpLoad %uint %index
        %174 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %175 = OpLoad %int %174
        %176 = OpBitcast %uint %175
        %177 = OpIAdd %uint %173 %176
        %180 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %177 %int_0
        %181 = OpLoad %v4float %180
        %182 = OpVectorShuffle %v3float %181 %181 0 1 2
               OpStore %param_5 %182
        %184 = OpLoad %v3float %pos
               OpStore %param_6 %184
        %186 = OpAccessChain %_ptr_Uniform_float %params %int_5
        %187 = OpLoad %float %186
               OpStore %param_7 %187
        %188 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_5 %param_6 %param_7
        %189 = OpLoad %v3float %force
        %190 = OpFAdd %v3float %189 %188
               OpStore %force %190
               OpBranch %172
        %172 = OpLabel
        %191 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %192 = OpLoad %uint %191
        %193 = OpUGreaterThan %bool %192 %uint_0
               OpSelectionMerge %195 None
               OpBranchConditional %193 %194 %195
        %194 = OpLabel
        %196 = OpLoad %uint %index
        %197 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %198 = OpLoad %int %197
        %199 = OpBitcast %uint %198
        %200 = OpISub %uint %196 %199
        %202 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %200 %int_0
        %203 = OpLoad %v4float %202
        %204 = OpVectorShuffle %v3float %203 %203 0 1 2
               OpStore %param_8 %204
        %206 = OpLoad %v3float %pos
               OpStore %param_9 %206
        %208 = OpAccessChain %_ptr_Uniform_float %params %int_5
        %209 = OpLoad %float %208
               OpStore %param_10 %209
        %210 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_8 %param_9 %param_10
        %211 = OpLoad %v3float %force
        %212 = OpFAdd %v3float %211 %210
               OpStore %force %212
               OpBranch %195
        %195 = OpLabel
        %213 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %214 = OpLoad %uint %213
        %215 = OpUGreaterThan %bool %214 %uint_0
               OpSelectionMerge %217 None
               OpBranchConditional %215 %216 %217
        %216 = OpLabel
        %218 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %219 = OpLoad %uint %218
        %220 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_1
        %221 = OpLoad %int %220
        %222 = OpISub %int %221 %int_1
        %223 = OpBitcast %uint %222
        %224 = OpULessThan %bool %219 %223
               OpBranch %217
        %217 = OpLabel
        %225 = OpPhi %bool %215 %195 %224 %216
               OpSelectionMerge %227 None
               OpBranchConditional %225 %226 %227
        %226 = OpLabel
        %228 = OpLoad %uint %index
        %229 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %230 = OpLoad %int %229
        %231 = OpBitcast %uint %230
        %232 = OpIAdd %uint %228 %231
        %233 = OpISub %uint %232 %uint_1
        %236 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %233 %int_0
        %237 = OpLoad %v4float %236
        %238 = OpVectorShuffle %v3float %237 %237 0 1 2
               OpStore %param_11 %238
        %240 = OpLoad %v3float %pos
               OpStore %param_12 %240
        %242 = OpAccessChain %_ptr_Uniform_float %params %int_6
        %243 = OpLoad %float %242
               OpStore %param_13 %243
        %244 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_11 %param_12 %param_13
        %245 = OpLoad %v3float %force
        %246 = OpFAdd %v3float %245 %244
               OpStore %force %246
               OpBranch %227
        %227 = OpLabel
        %247 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %248 = OpLoad %uint %247
        %249 = OpUGreaterThan %bool %248 %uint_0
               OpSelectionMerge %251 None
               OpBranchConditional %249 %250 %251
        %250 = OpLabel
        %252 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %253 = OpLoad %uint %252
        %254 = OpUGreaterThan %bool %253 %uint_0
               OpBranch %251
        %251 = OpLabel
        %255 = OpPhi %bool %249 %227 %254 %250
               OpSelectionMerge %257 None
               OpBranchConditional %255 %256 %257
        %256 = OpLabel
        %258 = OpLoad %uint %index
        %259 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %260 = OpLoad %int %259
        %261 = OpBitcast %uint %260
        %262 = OpISub %uint %258 %261
        %263 = OpISub %uint %262 %uint_1
        %265 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %263 %int_0
        %266 = OpLoad %v4float %265
        %267 = OpVectorShuffle %v3float %266 %266 0 1 2
               OpStore %param_14 %267
        %269 = OpLoad %v3float %pos
               OpStore %param_15 %269
        %271 = OpAccessChain %_ptr_Uniform_float %params %int_6
        %272 = OpLoad %float %271
               OpStore %param_16 %272
        %273 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_14 %param_15 %param_16
        %274 = OpLoad %v3float %force
        %275 = OpFAdd %v3float %274 %273
               OpStore %force %275
               OpBranch %257
        %257 = OpLabel
        %276 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %277 = OpLoad %uint %276
        %278 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %279 = OpLoad %int %278
        %280 = OpISub %int %279 %int_1
        %281 = OpBitcast %uint %280
        %282 = OpULessThan %bool %277 %281
               OpSelectionMerge %284 None
               OpBranchConditional %282 %283 %284
        %283 = OpLabel
        %285 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %286 = OpLoad %uint %285
        %287 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_1
        %288 = OpLoad %int %287
        %289 = OpISub %int %288 %int_1
        %290 = OpBitcast %uint %289
        %291 = OpULessThan %bool %286 %290
               OpBranch %284
        %284 = OpLabel
        %292 = OpPhi %bool %282 %257 %291 %283
               OpSelectionMerge %294 None
               OpBranchConditional %292 %293 %294
        %293 = OpLabel
        %295 = OpLoad %uint %index
        %296 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %297 = OpLoad %int %296
        %298 = OpBitcast %uint %297
        %299 = OpIAdd %uint %295 %298
        %300 = OpIAdd %uint %299 %uint_1
        %302 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %300 %int_0
        %303 = OpLoad %v4float %302
        %304 = OpVectorShuffle %v3float %303 %303 0 1 2
               OpStore %param_17 %304
        %306 = OpLoad %v3float %pos
               OpStore %param_18 %306
        %308 = OpAccessChain %_ptr_Uniform_float %params %int_6
        %309 = OpLoad %float %308
               OpStore %param_19 %309
        %310 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_17 %param_18 %param_19
        %311 = OpLoad %v3float %force
        %312 = OpFAdd %v3float %311 %310
               OpStore %force %312
               OpBranch %294
        %294 = OpLabel
        %313 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %314 = OpLoad %uint %313
        %315 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %316 = OpLoad %int %315
        %317 = OpISub %int %316 %int_1
        %318 = OpBitcast %uint %317
        %319 = OpULessThan %bool %314 %318
               OpSelectionMerge %321 None
               OpBranchConditional %319 %320 %321
        %320 = OpLabel
        %322 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %323 = OpLoad %uint %322
        %324 = OpUGreaterThan %bool %323 %uint_0
               OpBranch %321
        %321 = OpLabel
        %325 = OpPhi %bool %319 %294 %324 %320
               OpSelectionMerge %327 None
               OpBranchConditional %325 %326 %327
        %326 = OpLabel
        %328 = OpLoad %uint %index
        %329 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %330 = OpLoad %int %329
        %331 = OpBitcast %uint %330
        %332 = OpISub %uint %328 %331
        %333 = OpIAdd %uint %332 %uint_1
        %335 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %333 %int_0
        %336 = OpLoad %v4float %335
        %337 = OpVectorShuffle %v3float %336 %336 0 1 2
               OpStore %param_20 %337
        %339 = OpLoad %v3float %pos
               OpStore %param_21 %339
        %341 = OpAccessChain %_ptr_Uniform_float %params %int_6
        %342 = OpLoad %float %341
               OpStore %param_22 %342
        %343 = OpFunctionCall %v3float %springForce_vf3_vf3_f1_ %param_20 %param_21 %param_22
        %344 = OpLoad %v3float %force
        %345 = OpFAdd %v3float %344 %343
               OpStore %force %345
               OpBranch %327
        %327 = OpLabel
        %347 = OpAccessChain %_ptr_Uniform_float %params %int_3
        %348 = OpLoad %float %347
        %349 = OpFNegate %float %348
        %350 = OpLoad %v3float %vel
        %351 = OpVectorTimesScalar %v3float %350 %349
        %352 = OpLoad %v3float %force
        %353 = OpFAdd %v3float %352 %351
               OpStore %force %353
        %355 = OpLoad %v3float %force
        %356 = OpAccessChain %_ptr_Uniform_float %params %int_1
        %357 = OpLoad %float %356
        %358 = OpFDiv %float %float_1 %357
        %359 = OpVectorTimesScalar %v3float %355 %358
               OpStore %f %359
        %360 = OpLoad %uint %index
        %361 = OpLoad %v3float %pos
        %362 = OpLoad %v3float %vel
        %363 = OpAccessChain %_ptr_Uniform_float %params %int_0
        %364 = OpLoad %float %363
        %365 = OpVectorTimesScalar %v3float %362 %364
        %366 = OpFAdd %v3float %361 %365
        %368 = OpLoad %v3float %f
        %369 = OpVectorTimesScalar %v3float %368 %float_0_5
        %370 = OpAccessChain %_ptr_Uniform_float %params %int_0
        %371 = OpLoad %float %370
        %372 = OpVectorTimesScalar %v3float %369 %371
        %373 = OpAccessChain %_ptr_Uniform_float %params %int_0
        %374 = OpLoad %float %373
        %375 = OpVectorTimesScalar %v3float %372 %374
        %376 = OpFAdd %v3float %366 %375
        %377 = OpCompositeExtract %float %376 0
        %378 = OpCompositeExtract %float %376 1
        %379 = OpCompositeExtract %float %376 2
        %380 = OpCompositeConstruct %v4float %377 %378 %379 %float_1
        %381 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %360 %int_0
               OpStore %381 %380
        %382 = OpLoad %uint %index
        %383 = OpLoad %v3float %vel
        %384 = OpLoad %v3float %f
        %385 = OpAccessChain %_ptr_Uniform_float %params %int_0
        %386 = OpLoad %float %385
        %387 = OpVectorTimesScalar %v3float %384 %386
        %388 = OpFAdd %v3float %383 %387
        %389 = OpCompositeExtract %float %388 0
        %390 = OpCompositeExtract %float %388 1
        %391 = OpCompositeExtract %float %388 2
        %392 = OpCompositeConstruct %v4float %389 %390 %391 %float_0
        %393 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %382 %int_1
               OpStore %393 %392
        %395 = OpLoad %uint %index
        %396 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %395 %int_0
        %397 = OpLoad %v4float %396
        %398 = OpVectorShuffle %v3float %397 %397 0 1 2
        %400 = OpAccessChain %_ptr_Uniform_v4float %params %int_8
        %401 = OpLoad %v4float %400
        %402 = OpVectorShuffle %v3float %401 %401 0 1 2
        %403 = OpFSub %v3float %398 %402
               OpStore %sphereDist %403
        %404 = OpLoad %v3float %sphereDist
        %405 = OpExtInst %float %1 Length %404
        %407 = OpAccessChain %_ptr_Uniform_float %params %int_7
        %408 = OpLoad %float %407
        %410 = OpFAdd %float %408 %float_0_00999999978
        %411 = OpFOrdLessThan %bool %405 %410
               OpSelectionMerge %413 None
               OpBranchConditional %411 %412 %413
        %412 = OpLabel
        %414 = OpLoad %uint %index
        %415 = OpAccessChain %_ptr_Uniform_v4float %params %int_8
        %416 = OpLoad %v4float %415
        %417 = OpVectorShuffle %v3float %416 %416 0 1 2
        %418 = OpLoad %v3float %sphereDist
        %419 = OpExtInst %v3float %1 Normalize %418
        %420 = OpAccessChain %_ptr_Uniform_float %params %int_7
        %421 = OpLoad %float %420
        %422 = OpFAdd %float %421 %float_0_00999999978
        %423 = OpVectorTimesScalar %v3float %419 %422
        %424 = OpFAdd %v3float %417 %423
        %425 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %414 %int_0
        %426 = OpLoad %v4float %425
        %427 = OpVectorShuffle %v4float %426 %424 4 5 6 3
               OpStore %425 %427
        %428 = OpLoad %uint %index
        %429 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %428 %int_1
               OpStore %429 %101
               OpBranch %413
        %413 = OpLabel
        %434 = OpAccessChain %_ptr_PushConstant_uint %pushConsts %int_0
        %435 = OpLoad %uint %434
        %436 = OpIEqual %bool %435 %uint_1
               OpSelectionMerge %438 None
               OpBranchConditional %436 %437 %438
        %437 = OpLabel
               OpStore %normal %440
        %441 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %442 = OpLoad %uint %441
        %443 = OpUGreaterThan %bool %442 %uint_0
               OpSelectionMerge %445 None
               OpBranchConditional %443 %444 %445
        %444 = OpLabel
        %446 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %447 = OpLoad %uint %446
        %448 = OpUGreaterThan %bool %447 %uint_0
               OpSelectionMerge %450 None
               OpBranchConditional %448 %449 %450
        %449 = OpLabel
        %452 = OpLoad %uint %index
        %453 = OpISub %uint %452 %uint_1
        %454 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %453 %int_0
        %455 = OpLoad %v4float %454
        %456 = OpVectorShuffle %v3float %455 %455 0 1 2
        %457 = OpLoad %v3float %pos
        %458 = OpFSub %v3float %456 %457
               OpStore %a %458
        %460 = OpLoad %uint %index
        %461 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %462 = OpLoad %int %461
        %463 = OpBitcast %uint %462
        %464 = OpISub %uint %460 %463
        %465 = OpISub %uint %464 %uint_1
        %466 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %465 %int_0
        %467 = OpLoad %v4float %466
        %468 = OpVectorShuffle %v3float %467 %467 0 1 2
        %469 = OpLoad %v3float %pos
        %470 = OpFSub %v3float %468 %469
               OpStore %b %470
        %472 = OpLoad %uint %index
        %473 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %474 = OpLoad %int %473
        %475 = OpBitcast %uint %474
        %476 = OpISub %uint %472 %475
        %477 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %476 %int_0
        %478 = OpLoad %v4float %477
        %479 = OpVectorShuffle %v3float %478 %478 0 1 2
        %480 = OpLoad %v3float %pos
        %481 = OpFSub %v3float %479 %480
               OpStore %c %481
        %482 = OpLoad %v3float %a
        %483 = OpLoad %v3float %b
        %484 = OpExtInst %v3float %1 Cross %482 %483
        %485 = OpLoad %v3float %b
        %486 = OpLoad %v3float %c
        %487 = OpExtInst %v3float %1 Cross %485 %486
        %488 = OpFAdd %v3float %484 %487
        %489 = OpLoad %v3float %normal
        %490 = OpFAdd %v3float %489 %488
               OpStore %normal %490
               OpBranch %450
        %450 = OpLabel
        %491 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %492 = OpLoad %uint %491
        %493 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %494 = OpLoad %int %493
        %495 = OpISub %int %494 %int_1
        %496 = OpBitcast %uint %495
        %497 = OpULessThan %bool %492 %496
               OpSelectionMerge %499 None
               OpBranchConditional %497 %498 %499
        %498 = OpLabel
        %500 = OpLoad %uint %index
        %501 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %502 = OpLoad %int %501
        %503 = OpBitcast %uint %502
        %504 = OpISub %uint %500 %503
        %505 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %504 %int_0
        %506 = OpLoad %v4float %505
        %507 = OpVectorShuffle %v3float %506 %506 0 1 2
        %508 = OpLoad %v3float %pos
        %509 = OpFSub %v3float %507 %508
               OpStore %a %509
        %510 = OpLoad %uint %index
        %511 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %512 = OpLoad %int %511
        %513 = OpBitcast %uint %512
        %514 = OpISub %uint %510 %513
        %515 = OpIAdd %uint %514 %uint_1
        %516 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %515 %int_0
        %517 = OpLoad %v4float %516
        %518 = OpVectorShuffle %v3float %517 %517 0 1 2
        %519 = OpLoad %v3float %pos
        %520 = OpFSub %v3float %518 %519
               OpStore %b %520
        %521 = OpLoad %uint %index
        %522 = OpIAdd %uint %521 %uint_1
        %523 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %522 %int_0
        %524 = OpLoad %v4float %523
        %525 = OpVectorShuffle %v3float %524 %524 0 1 2
        %526 = OpLoad %v3float %pos
        %527 = OpFSub %v3float %525 %526
               OpStore %c %527
        %528 = OpLoad %v3float %a
        %529 = OpLoad %v3float %b
        %530 = OpExtInst %v3float %1 Cross %528 %529
        %531 = OpLoad %v3float %b
        %532 = OpLoad %v3float %c
        %533 = OpExtInst %v3float %1 Cross %531 %532
        %534 = OpFAdd %v3float %530 %533
        %535 = OpLoad %v3float %normal
        %536 = OpFAdd %v3float %535 %534
               OpStore %normal %536
               OpBranch %499
        %499 = OpLabel
               OpBranch %445
        %445 = OpLabel
        %537 = OpAccessChain %_ptr_Function_uint %id %uint_1
        %538 = OpLoad %uint %537
        %539 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_1
        %540 = OpLoad %int %539
        %541 = OpISub %int %540 %int_1
        %542 = OpBitcast %uint %541
        %543 = OpULessThan %bool %538 %542
               OpSelectionMerge %545 None
               OpBranchConditional %543 %544 %545
        %544 = OpLabel
        %546 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %547 = OpLoad %uint %546
        %548 = OpUGreaterThan %bool %547 %uint_0
               OpSelectionMerge %550 None
               OpBranchConditional %548 %549 %550
        %549 = OpLabel
        %551 = OpLoad %uint %index
        %552 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %553 = OpLoad %int %552
        %554 = OpBitcast %uint %553
        %555 = OpIAdd %uint %551 %554
        %556 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %555 %int_0
        %557 = OpLoad %v4float %556
        %558 = OpVectorShuffle %v3float %557 %557 0 1 2
        %559 = OpLoad %v3float %pos
        %560 = OpFSub %v3float %558 %559
               OpStore %a %560
        %561 = OpLoad %uint %index
        %562 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %563 = OpLoad %int %562
        %564 = OpBitcast %uint %563
        %565 = OpIAdd %uint %561 %564
        %566 = OpISub %uint %565 %uint_1
        %567 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %566 %int_0
        %568 = OpLoad %v4float %567
        %569 = OpVectorShuffle %v3float %568 %568 0 1 2
        %570 = OpLoad %v3float %pos
        %571 = OpFSub %v3float %569 %570
               OpStore %b %571
        %572 = OpLoad %uint %index
        %573 = OpISub %uint %572 %uint_1
        %574 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %573 %int_0
        %575 = OpLoad %v4float %574
        %576 = OpVectorShuffle %v3float %575 %575 0 1 2
        %577 = OpLoad %v3float %pos
        %578 = OpFSub %v3float %576 %577
               OpStore %c %578
        %579 = OpLoad %v3float %a
        %580 = OpLoad %v3float %b
        %581 = OpExtInst %v3float %1 Cross %579 %580
        %582 = OpLoad %v3float %b
        %583 = OpLoad %v3float %c
        %584 = OpExtInst %v3float %1 Cross %582 %583
        %585 = OpFAdd %v3float %581 %584
        %586 = OpLoad %v3float %normal
        %587 = OpFAdd %v3float %586 %585
               OpStore %normal %587
               OpBranch %550
        %550 = OpLabel
        %588 = OpAccessChain %_ptr_Function_uint %id %uint_0
        %589 = OpLoad %uint %588
        %590 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %591 = OpLoad %int %590
        %592 = OpISub %int %591 %int_1
        %593 = OpBitcast %uint %592
        %594 = OpULessThan %bool %589 %593
               OpSelectionMerge %596 None
               OpBranchConditional %594 %595 %596
        %595 = OpLabel
        %597 = OpLoad %uint %index
        %598 = OpIAdd %uint %597 %uint_1
        %599 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %598 %int_0
        %600 = OpLoad %v4float %599
        %601 = OpVectorShuffle %v3float %600 %600 0 1 2
        %602 = OpLoad %v3float %pos
        %603 = OpFSub %v3float %601 %602
               OpStore %a %603
        %604 = OpLoad %uint %index
        %605 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %606 = OpLoad %int %605
        %607 = OpBitcast %uint %606
        %608 = OpIAdd %uint %604 %607
        %609 = OpIAdd %uint %608 %uint_1
        %610 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %609 %int_0
        %611 = OpLoad %v4float %610
        %612 = OpVectorShuffle %v3float %611 %611 0 1 2
        %613 = OpLoad %v3float %pos
        %614 = OpFSub %v3float %612 %613
               OpStore %b %614
        %615 = OpLoad %uint %index
        %616 = OpAccessChain %_ptr_Uniform_int %params %int_10 %uint_0
        %617 = OpLoad %int %616
        %618 = OpBitcast %uint %617
        %619 = OpIAdd %uint %615 %618
        %620 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %619 %int_0
        %621 = OpLoad %v4float %620
        %622 = OpVectorShuffle %v3float %621 %621 0 1 2
        %623 = OpLoad %v3float %pos
        %624 = OpFSub %v3float %622 %623
               OpStore %c %624
        %625 = OpLoad %v3float %a
        %626 = OpLoad %v3float %b
        %627 = OpExtInst %v3float %1 Cross %625 %626
        %628 = OpLoad %v3float %b
        %629 = OpLoad %v3float %c
        %630 = OpExtInst %v3float %1 Cross %628 %629
        %631 = OpFAdd %v3float %627 %630
        %632 = OpLoad %v3float %normal
        %633 = OpFAdd %v3float %632 %631
               OpStore %normal %633
               OpBranch %596
        %596 = OpLabel
               OpBranch %545
        %545 = OpLabel
        %634 = OpLoad %uint %index
        %635 = OpLoad %v3float %normal
        %636 = OpExtInst %v3float %1 Normalize %635
        %637 = OpCompositeExtract %float %636 0
        %638 = OpCompositeExtract %float %636 1
        %639 = OpCompositeExtract %float %636 2
        %640 = OpCompositeConstruct %v4float %637 %638 %639 %float_0
        %641 = OpAccessChain %_ptr_Uniform_v4float %__0 %int_0 %634 %int_3
               OpStore %641 %640
               OpBranch %438
        %438 = OpLabel
               OpReturn
               OpFunctionEnd
%springForce_vf3_vf3_f1_ = OpFunction %v3float None %10
         %p0 = OpFunctionParameter %_ptr_Function_v3float
         %p1 = OpFunctionParameter %_ptr_Function_v3float
   %restDist = OpFunctionParameter %_ptr_Function_float
         %15 = OpLabel
       %dist = OpVariable %_ptr_Function_v3float Function
         %17 = OpLoad %v3float %p0
         %18 = OpLoad %v3float %p1
         %19 = OpFSub %v3float %17 %18
               OpStore %dist %19
         %20 = OpLoad %v3float %dist
         %21 = OpExtInst %v3float %1 Normalize %20
         %30 = OpAccessChain %_ptr_Uniform_float %params %int_2
         %31 = OpLoad %float %30
         %32 = OpVectorTimesScalar %v3float %21 %31
         %33 = OpLoad %v3float %dist
         %34 = OpExtInst %float %1 Length %33
         %35 = OpLoad %float %restDist
         %36 = OpFSub %float %34 %35
         %37 = OpVectorTimesScalar %v3float %32 %36
               OpReturnValue %37
               OpFunctionEnd
