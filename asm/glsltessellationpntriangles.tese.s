; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 370
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationEvaluation %main "main" %gl_TessCoord %iPnPatch %oTexCoord %iTexCoord %iNormal %oNormal %gl_in %_
               OpExecutionMode %main Triangles
               OpExecutionMode %main SpacingFractionalOdd
               OpExecutionMode %main VertexOrderCw
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %uvwSquared "uvwSquared"
               OpName %gl_TessCoord "gl_TessCoord"
               OpName %uvwCubed "uvwCubed"
               OpName %b210 "b210"
               OpName %PnPatch "PnPatch"
               OpMemberName %PnPatch 0 "b210"
               OpMemberName %PnPatch 1 "b120"
               OpMemberName %PnPatch 2 "b021"
               OpMemberName %PnPatch 3 "b012"
               OpMemberName %PnPatch 4 "b102"
               OpMemberName %PnPatch 5 "b201"
               OpMemberName %PnPatch 6 "b111"
               OpMemberName %PnPatch 7 "n110"
               OpMemberName %PnPatch 8 "n011"
               OpMemberName %PnPatch 9 "n101"
               OpName %iPnPatch "iPnPatch"
               OpName %b120 "b120"
               OpName %b021 "b021"
               OpName %b012 "b012"
               OpName %b102 "b102"
               OpName %b201 "b201"
               OpName %b111 "b111"
               OpName %n110 "n110"
               OpName %n011 "n011"
               OpName %n101 "n101"
               OpName %oTexCoord "oTexCoord"
               OpName %iTexCoord "iTexCoord"
               OpName %barNormal "barNormal"
               OpName %iNormal "iNormal"
               OpName %pnNormal "pnNormal"
               OpName %oNormal "oNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "tessAlpha"
               OpName %ubo "ubo"
               OpName %barPos "barPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %pnPos "pnPos"
               OpName %finalPos "finalPos"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %_ ""
               OpDecorate %gl_TessCoord BuiltIn TessCoord
               OpDecorate %iPnPatch Location 6
               OpDecorate %oTexCoord Location 1
               OpDecorate %iTexCoord Location 3
               OpDecorate %iNormal Location 0
               OpDecorate %oNormal Location 0
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
%gl_TessCoord = OpVariable %_ptr_Input_v3float Input
    %PnPatch = OpTypeStruct %float %float %float %float %float %float %float %float %float %float
       %uint = OpTypeInt 32 0
    %uint_32 = OpConstant %uint 32
%_arr_PnPatch_uint_32 = OpTypeArray %PnPatch %uint_32
%_ptr_Input__arr_PnPatch_uint_32 = OpTypePointer Input %_arr_PnPatch_uint_32
   %iPnPatch = OpVariable %_ptr_Input__arr_PnPatch_uint_32 Input
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Input_float = OpTypePointer Input %float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %int_3 = OpConstant %int 3
      %int_4 = OpConstant %int 4
      %int_5 = OpConstant %int 5
      %int_6 = OpConstant %int 6
      %int_7 = OpConstant %int 7
      %int_8 = OpConstant %int 8
      %int_9 = OpConstant %int 9
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
  %oTexCoord = OpVariable %_ptr_Output_v2float Output
     %uint_2 = OpConstant %uint 2
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
  %iTexCoord = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
     %uint_0 = OpConstant %uint 0
     %uint_1 = OpConstant %uint 1
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
    %iNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%_ptr_Function_float = OpTypePointer Function %float
%_ptr_Output_v3float = OpTypePointer Output %v3float
    %oNormal = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
    %float_1 = OpConstant %float 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_arr_gl_PerVertex_uint_32 = OpTypeArray %gl_PerVertex %uint_32
%_ptr_Input__arr_gl_PerVertex_uint_32 = OpTypePointer Input %_arr_gl_PerVertex_uint_32
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_32 Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
    %float_3 = OpConstant %float 3
    %float_6 = OpConstant %float 6
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex_0 = OpTypePointer Output %gl_PerVertex_0
          %_ = OpVariable %_ptr_Output_gl_PerVertex_0 Output
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
 %uvwSquared = OpVariable %_ptr_Function_v3float Function
   %uvwCubed = OpVariable %_ptr_Function_v3float Function
       %b210 = OpVariable %_ptr_Function_v3float Function
       %b120 = OpVariable %_ptr_Function_v3float Function
       %b021 = OpVariable %_ptr_Function_v3float Function
       %b012 = OpVariable %_ptr_Function_v3float Function
       %b102 = OpVariable %_ptr_Function_v3float Function
       %b201 = OpVariable %_ptr_Function_v3float Function
       %b111 = OpVariable %_ptr_Function_v3float Function
       %n110 = OpVariable %_ptr_Function_v3float Function
       %n011 = OpVariable %_ptr_Function_v3float Function
       %n101 = OpVariable %_ptr_Function_v3float Function
  %barNormal = OpVariable %_ptr_Function_v3float Function
   %pnNormal = OpVariable %_ptr_Function_v3float Function
     %barPos = OpVariable %_ptr_Function_v3float Function
      %pnPos = OpVariable %_ptr_Function_v3float Function
   %finalPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %gl_TessCoord
         %13 = OpLoad %v3float %gl_TessCoord
         %14 = OpFMul %v3float %12 %13
               OpStore %uvwSquared %14
         %16 = OpLoad %v3float %uvwSquared
         %17 = OpLoad %v3float %gl_TessCoord
         %18 = OpFMul %v3float %16 %17
               OpStore %uvwCubed %18
         %29 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_0
         %30 = OpLoad %float %29
         %32 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_0
         %33 = OpLoad %float %32
         %35 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_0
         %36 = OpLoad %float %35
         %37 = OpCompositeConstruct %v3float %30 %33 %36
               OpStore %b210 %37
         %39 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_1
         %40 = OpLoad %float %39
         %41 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_1
         %42 = OpLoad %float %41
         %43 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_1
         %44 = OpLoad %float %43
         %45 = OpCompositeConstruct %v3float %40 %42 %44
               OpStore %b120 %45
         %47 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_2
         %48 = OpLoad %float %47
         %49 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_2
         %50 = OpLoad %float %49
         %51 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_2
         %52 = OpLoad %float %51
         %53 = OpCompositeConstruct %v3float %48 %50 %52
               OpStore %b021 %53
         %56 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_3
         %57 = OpLoad %float %56
         %58 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_3
         %59 = OpLoad %float %58
         %60 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_3
         %61 = OpLoad %float %60
         %62 = OpCompositeConstruct %v3float %57 %59 %61
               OpStore %b012 %62
         %65 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_4
         %66 = OpLoad %float %65
         %67 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_4
         %68 = OpLoad %float %67
         %69 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_4
         %70 = OpLoad %float %69
         %71 = OpCompositeConstruct %v3float %66 %68 %70
               OpStore %b102 %71
         %74 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_5
         %75 = OpLoad %float %74
         %76 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_5
         %77 = OpLoad %float %76
         %78 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_5
         %79 = OpLoad %float %78
         %80 = OpCompositeConstruct %v3float %75 %77 %79
               OpStore %b201 %80
         %83 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_6
         %84 = OpLoad %float %83
         %85 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_6
         %86 = OpLoad %float %85
         %87 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_6
         %88 = OpLoad %float %87
         %89 = OpCompositeConstruct %v3float %84 %86 %88
               OpStore %b111 %89
         %92 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_7
         %93 = OpLoad %float %92
         %94 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_7
         %95 = OpLoad %float %94
         %96 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_7
         %97 = OpLoad %float %96
         %98 = OpCompositeConstruct %v3float %93 %95 %97
         %99 = OpExtInst %v3float %1 Normalize %98
               OpStore %n110 %99
        %102 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_8
        %103 = OpLoad %float %102
        %104 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_8
        %105 = OpLoad %float %104
        %106 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_8
        %107 = OpLoad %float %106
        %108 = OpCompositeConstruct %v3float %103 %105 %107
        %109 = OpExtInst %v3float %1 Normalize %108
               OpStore %n011 %109
        %112 = OpAccessChain %_ptr_Input_float %iPnPatch %int_0 %int_9
        %113 = OpLoad %float %112
        %114 = OpAccessChain %_ptr_Input_float %iPnPatch %int_1 %int_9
        %115 = OpLoad %float %114
        %116 = OpAccessChain %_ptr_Input_float %iPnPatch %int_2 %int_9
        %117 = OpLoad %float %116
        %118 = OpCompositeConstruct %v3float %113 %115 %117
        %119 = OpExtInst %v3float %1 Normalize %118
               OpStore %n101 %119
        %124 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %125 = OpLoad %float %124
        %130 = OpAccessChain %_ptr_Input_v2float %iTexCoord %int_0
        %131 = OpLoad %v2float %130
        %132 = OpVectorTimesScalar %v2float %131 %125
        %134 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %135 = OpLoad %float %134
        %136 = OpAccessChain %_ptr_Input_v2float %iTexCoord %int_1
        %137 = OpLoad %v2float %136
        %138 = OpVectorTimesScalar %v2float %137 %135
        %139 = OpFAdd %v2float %132 %138
        %141 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %142 = OpLoad %float %141
        %143 = OpAccessChain %_ptr_Input_v2float %iTexCoord %int_2
        %144 = OpLoad %v2float %143
        %145 = OpVectorTimesScalar %v2float %144 %142
        %146 = OpFAdd %v2float %139 %145
               OpStore %oTexCoord %146
        %148 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %149 = OpLoad %float %148
        %153 = OpAccessChain %_ptr_Input_v3float %iNormal %int_0
        %154 = OpLoad %v3float %153
        %155 = OpVectorTimesScalar %v3float %154 %149
        %156 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %157 = OpLoad %float %156
        %158 = OpAccessChain %_ptr_Input_v3float %iNormal %int_1
        %159 = OpLoad %v3float %158
        %160 = OpVectorTimesScalar %v3float %159 %157
        %161 = OpFAdd %v3float %155 %160
        %162 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %163 = OpLoad %float %162
        %164 = OpAccessChain %_ptr_Input_v3float %iNormal %int_2
        %165 = OpLoad %v3float %164
        %166 = OpVectorTimesScalar %v3float %165 %163
        %167 = OpFAdd %v3float %161 %166
               OpStore %barNormal %167
        %169 = OpAccessChain %_ptr_Input_v3float %iNormal %int_0
        %170 = OpLoad %v3float %169
        %172 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_2
        %173 = OpLoad %float %172
        %174 = OpVectorTimesScalar %v3float %170 %173
        %175 = OpAccessChain %_ptr_Input_v3float %iNormal %int_1
        %176 = OpLoad %v3float %175
        %177 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_0
        %178 = OpLoad %float %177
        %179 = OpVectorTimesScalar %v3float %176 %178
        %180 = OpFAdd %v3float %174 %179
        %181 = OpAccessChain %_ptr_Input_v3float %iNormal %int_2
        %182 = OpLoad %v3float %181
        %183 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_1
        %184 = OpLoad %float %183
        %185 = OpVectorTimesScalar %v3float %182 %184
        %186 = OpFAdd %v3float %180 %185
        %187 = OpLoad %v3float %n110
        %188 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %189 = OpLoad %float %188
        %190 = OpVectorTimesScalar %v3float %187 %189
        %191 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %192 = OpLoad %float %191
        %193 = OpVectorTimesScalar %v3float %190 %192
        %194 = OpFAdd %v3float %186 %193
        %195 = OpLoad %v3float %n011
        %196 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %197 = OpLoad %float %196
        %198 = OpVectorTimesScalar %v3float %195 %197
        %199 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %200 = OpLoad %float %199
        %201 = OpVectorTimesScalar %v3float %198 %200
        %202 = OpFAdd %v3float %194 %201
        %203 = OpLoad %v3float %n101
        %204 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %205 = OpLoad %float %204
        %206 = OpVectorTimesScalar %v3float %203 %205
        %207 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %208 = OpLoad %float %207
        %209 = OpVectorTimesScalar %v3float %206 %208
        %210 = OpFAdd %v3float %202 %209
               OpStore %pnNormal %210
        %219 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %220 = OpLoad %float %219
        %221 = OpLoad %v3float %pnNormal
        %222 = OpVectorTimesScalar %v3float %221 %220
        %224 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %225 = OpLoad %float %224
        %226 = OpFSub %float %float_1 %225
        %227 = OpLoad %v3float %barNormal
        %228 = OpVectorTimesScalar %v3float %227 %226
        %229 = OpFAdd %v3float %222 %228
               OpStore %oNormal %229
        %231 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %232 = OpLoad %float %231
        %239 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
        %240 = OpLoad %v4float %239
        %241 = OpVectorShuffle %v3float %240 %240 0 1 2
        %242 = OpVectorTimesScalar %v3float %241 %232
        %243 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %244 = OpLoad %float %243
        %245 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
        %246 = OpLoad %v4float %245
        %247 = OpVectorShuffle %v3float %246 %246 0 1 2
        %248 = OpVectorTimesScalar %v3float %247 %244
        %249 = OpFAdd %v3float %242 %248
        %250 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %251 = OpLoad %float %250
        %252 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
        %253 = OpLoad %v4float %252
        %254 = OpVectorShuffle %v3float %253 %253 0 1 2
        %255 = OpVectorTimesScalar %v3float %254 %251
        %256 = OpFAdd %v3float %249 %255
               OpStore %barPos %256
        %258 = OpLoad %v3float %uvwSquared
        %259 = OpVectorTimesScalar %v3float %258 %float_3
               OpStore %uvwSquared %259
        %261 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
        %262 = OpLoad %v4float %261
        %263 = OpVectorShuffle %v3float %262 %262 0 1 2
        %264 = OpAccessChain %_ptr_Function_float %uvwCubed %uint_2
        %265 = OpLoad %float %264
        %266 = OpVectorTimesScalar %v3float %263 %265
        %267 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
        %268 = OpLoad %v4float %267
        %269 = OpVectorShuffle %v3float %268 %268 0 1 2
        %270 = OpAccessChain %_ptr_Function_float %uvwCubed %uint_0
        %271 = OpLoad %float %270
        %272 = OpVectorTimesScalar %v3float %269 %271
        %273 = OpFAdd %v3float %266 %272
        %274 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
        %275 = OpLoad %v4float %274
        %276 = OpVectorShuffle %v3float %275 %275 0 1 2
        %277 = OpAccessChain %_ptr_Function_float %uvwCubed %uint_1
        %278 = OpLoad %float %277
        %279 = OpVectorTimesScalar %v3float %276 %278
        %280 = OpFAdd %v3float %273 %279
        %281 = OpLoad %v3float %b210
        %282 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_2
        %283 = OpLoad %float %282
        %284 = OpVectorTimesScalar %v3float %281 %283
        %285 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %286 = OpLoad %float %285
        %287 = OpVectorTimesScalar %v3float %284 %286
        %288 = OpFAdd %v3float %280 %287
        %289 = OpLoad %v3float %b120
        %290 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_0
        %291 = OpLoad %float %290
        %292 = OpVectorTimesScalar %v3float %289 %291
        %293 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %294 = OpLoad %float %293
        %295 = OpVectorTimesScalar %v3float %292 %294
        %296 = OpFAdd %v3float %288 %295
        %297 = OpLoad %v3float %b201
        %298 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_2
        %299 = OpLoad %float %298
        %300 = OpVectorTimesScalar %v3float %297 %299
        %301 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %302 = OpLoad %float %301
        %303 = OpVectorTimesScalar %v3float %300 %302
        %304 = OpFAdd %v3float %296 %303
        %305 = OpLoad %v3float %b021
        %306 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_0
        %307 = OpLoad %float %306
        %308 = OpVectorTimesScalar %v3float %305 %307
        %309 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %310 = OpLoad %float %309
        %311 = OpVectorTimesScalar %v3float %308 %310
        %312 = OpFAdd %v3float %304 %311
        %313 = OpLoad %v3float %b102
        %314 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_1
        %315 = OpLoad %float %314
        %316 = OpVectorTimesScalar %v3float %313 %315
        %317 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %318 = OpLoad %float %317
        %319 = OpVectorTimesScalar %v3float %316 %318
        %320 = OpFAdd %v3float %312 %319
        %321 = OpLoad %v3float %b012
        %322 = OpAccessChain %_ptr_Function_float %uvwSquared %uint_1
        %323 = OpLoad %float %322
        %324 = OpVectorTimesScalar %v3float %321 %323
        %325 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %326 = OpLoad %float %325
        %327 = OpVectorTimesScalar %v3float %324 %326
        %328 = OpFAdd %v3float %320 %327
        %329 = OpLoad %v3float %b111
        %331 = OpVectorTimesScalar %v3float %329 %float_6
        %332 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_0
        %333 = OpLoad %float %332
        %334 = OpVectorTimesScalar %v3float %331 %333
        %335 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_1
        %336 = OpLoad %float %335
        %337 = OpVectorTimesScalar %v3float %334 %336
        %338 = OpAccessChain %_ptr_Input_float %gl_TessCoord %uint_2
        %339 = OpLoad %float %338
        %340 = OpVectorTimesScalar %v3float %337 %339
        %341 = OpFAdd %v3float %328 %340
               OpStore %pnPos %341
        %343 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %344 = OpLoad %float %343
        %345 = OpFSub %float %float_1 %344
        %346 = OpLoad %v3float %barPos
        %347 = OpVectorTimesScalar %v3float %346 %345
        %348 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %349 = OpLoad %float %348
        %350 = OpLoad %v3float %pnPos
        %351 = OpVectorTimesScalar %v3float %350 %349
        %352 = OpFAdd %v3float %347 %351
               OpStore %finalPos %352
        %357 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %358 = OpLoad %mat4v4float %357
        %359 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %360 = OpLoad %mat4v4float %359
        %361 = OpMatrixTimesMatrix %mat4v4float %358 %360
        %362 = OpLoad %v3float %finalPos
        %363 = OpCompositeExtract %float %362 0
        %364 = OpCompositeExtract %float %362 1
        %365 = OpCompositeExtract %float %362 2
        %366 = OpCompositeConstruct %v4float %363 %364 %365 %float_1
        %367 = OpMatrixTimesVector %v4float %361 %366
        %369 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %369 %367
               OpReturn
               OpFunctionEnd
