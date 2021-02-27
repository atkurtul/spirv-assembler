; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 334
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationControl %main "main" %gl_in %inNormal %gl_out %gl_InvocationID %outNormal %outUV %inUV %outPatch %gl_TessLevelOuter %gl_TessLevelInner
               OpExecutionMode %main OutputVertices 3
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %wij_i1_i1_ "wij(i1;i1;"
               OpName %i "i"
               OpName %j "j"
               OpName %vij_i1_i1_ "vij(i1;i1;"
               OpName %i_0 "i"
               OpName %j_0 "j"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %inNormal "inNormal"
               OpName %Pj_minus_Pi "Pj_minus_Pi"
               OpName %Ni_plus_Nj "Ni_plus_Nj"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %gl_out "gl_out"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %outNormal "outNormal"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %P0 "P0"
               OpName %P1 "P1"
               OpName %P2 "P2"
               OpName %N0 "N0"
               OpName %N1 "N1"
               OpName %N2 "N2"
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
               OpName %outPatch "outPatch"
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
               OpName %E "E"
               OpName %V "V"
               OpName %param_11 "param"
               OpName %param_12 "param"
               OpName %param_13 "param"
               OpName %param_14 "param"
               OpName %param_15 "param"
               OpName %param_16 "param"
               OpName %gl_TessLevelOuter "gl_TessLevelOuter"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "tessLevel"
               OpName %ubo "ubo"
               OpName %gl_TessLevelInner "gl_TessLevelInner"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inNormal Location 0
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpDecorate %outNormal Location 0
               OpDecorate %outUV Location 3
               OpDecorate %inUV Location 1
               OpDecorate %outPatch Location 6
               OpDecorate %gl_TessLevelOuter Patch
               OpDecorate %gl_TessLevelOuter BuiltIn TessLevelOuter
               OpMemberDecorate %UBO 0 Offset 0
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %gl_TessLevelInner Patch
               OpDecorate %gl_TessLevelInner BuiltIn TessLevelInner
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %float = OpTypeFloat 32
          %9 = OpTypeFunction %float %_ptr_Function_int %_ptr_Function_int
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
    %uint_32 = OpConstant %uint 32
%_arr_gl_PerVertex_uint_32 = OpTypeArray %gl_PerVertex %uint_32
%_ptr_Input__arr_gl_PerVertex_uint_32 = OpTypePointer Input %_arr_gl_PerVertex_uint_32
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_32 Input
      %int_0 = OpConstant %int 0
    %v3float = OpTypeVector %float 3
%_ptr_Input_v4float = OpTypePointer Input %v4float
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %float_2 = OpConstant %float 2
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
     %uint_3 = OpConstant %uint 3
%_arr_gl_PerVertex_0_uint_3 = OpTypeArray %gl_PerVertex_0 %uint_3
%_ptr_Output__arr_gl_PerVertex_0_uint_3 = OpTypePointer Output %_arr_gl_PerVertex_0_uint_3
     %gl_out = OpVariable %_ptr_Output__arr_gl_PerVertex_0_uint_3 Output
%_ptr_Input_int = OpTypePointer Input %int
%gl_InvocationID = OpVariable %_ptr_Input_int Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_arr_v3float_uint_3 = OpTypeArray %v3float %uint_3
%_ptr_Output__arr_v3float_uint_3 = OpTypePointer Output %_arr_v3float_uint_3
  %outNormal = OpVariable %_ptr_Output__arr_v3float_uint_3 Output
%_ptr_Output_v3float = OpTypePointer Output %v3float
    %v2float = OpTypeVector %float 2
%_arr_v2float_uint_3 = OpTypeArray %v2float %uint_3
%_ptr_Output__arr_v2float_uint_3 = OpTypePointer Output %_arr_v2float_uint_3
      %outUV = OpVariable %_ptr_Output__arr_v2float_uint_3 Output
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
       %inUV = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
%_ptr_Output_v2float = OpTypePointer Output %v2float
%_ptr_Function_float = OpTypePointer Function %float
%_ptr_Input_float = OpTypePointer Input %float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %PnPatch = OpTypeStruct %float %float %float %float %float %float %float %float %float %float
%_arr_PnPatch_uint_3 = OpTypeArray %PnPatch %uint_3
%_ptr_Output__arr_PnPatch_uint_3 = OpTypePointer Output %_arr_PnPatch_uint_3
   %outPatch = OpVariable %_ptr_Output__arr_PnPatch_uint_3 Output
    %float_3 = OpConstant %float 3
%_ptr_Output_float = OpTypePointer Output %float
      %int_3 = OpConstant %int 3
      %int_4 = OpConstant %int 4
      %int_5 = OpConstant %int 5
    %float_6 = OpConstant %float 6
      %int_6 = OpConstant %int 6
  %float_0_5 = OpConstant %float 0.5
      %int_7 = OpConstant %int 7
      %int_8 = OpConstant %int 8
      %int_9 = OpConstant %int 9
     %uint_4 = OpConstant %uint 4
%_arr_float_uint_4 = OpTypeArray %float %uint_4
%_ptr_Output__arr_float_uint_4 = OpTypePointer Output %_arr_float_uint_4
%gl_TessLevelOuter = OpVariable %_ptr_Output__arr_float_uint_4 Output
        %UBO = OpTypeStruct %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
     %uint_2 = OpConstant %uint 2
%_arr_float_uint_2 = OpTypeArray %float %uint_2
%_ptr_Output__arr_float_uint_2 = OpTypePointer Output %_arr_float_uint_2
%gl_TessLevelInner = OpVariable %_ptr_Output__arr_float_uint_2 Output
       %main = OpFunction %void None %3
          %5 = OpLabel
         %P0 = OpVariable %_ptr_Function_float Function
         %P1 = OpVariable %_ptr_Function_float Function
         %P2 = OpVariable %_ptr_Function_float Function
         %N0 = OpVariable %_ptr_Function_float Function
         %N1 = OpVariable %_ptr_Function_float Function
         %N2 = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_int Function
    %param_0 = OpVariable %_ptr_Function_int Function
    %param_1 = OpVariable %_ptr_Function_int Function
    %param_2 = OpVariable %_ptr_Function_int Function
    %param_3 = OpVariable %_ptr_Function_int Function
    %param_4 = OpVariable %_ptr_Function_int Function
    %param_5 = OpVariable %_ptr_Function_int Function
    %param_6 = OpVariable %_ptr_Function_int Function
    %param_7 = OpVariable %_ptr_Function_int Function
    %param_8 = OpVariable %_ptr_Function_int Function
    %param_9 = OpVariable %_ptr_Function_int Function
   %param_10 = OpVariable %_ptr_Function_int Function
          %E = OpVariable %_ptr_Function_float Function
          %V = OpVariable %_ptr_Function_float Function
   %param_11 = OpVariable %_ptr_Function_int Function
   %param_12 = OpVariable %_ptr_Function_int Function
   %param_13 = OpVariable %_ptr_Function_int Function
   %param_14 = OpVariable %_ptr_Function_int Function
   %param_15 = OpVariable %_ptr_Function_int Function
   %param_16 = OpVariable %_ptr_Function_int Function
         %86 = OpLoad %int %gl_InvocationID
         %87 = OpLoad %int %gl_InvocationID
         %88 = OpAccessChain %_ptr_Input_v4float %gl_in %87 %int_0
         %89 = OpLoad %v4float %88
         %91 = OpAccessChain %_ptr_Output_v4float %gl_out %86 %int_0
               OpStore %91 %89
         %95 = OpLoad %int %gl_InvocationID
         %96 = OpLoad %int %gl_InvocationID
         %97 = OpAccessChain %_ptr_Input_v3float %inNormal %96
         %98 = OpLoad %v3float %97
        %100 = OpAccessChain %_ptr_Output_v3float %outNormal %95
               OpStore %100 %98
        %105 = OpLoad %int %gl_InvocationID
        %109 = OpLoad %int %gl_InvocationID
        %111 = OpAccessChain %_ptr_Input_v2float %inUV %109
        %112 = OpLoad %v2float %111
        %114 = OpAccessChain %_ptr_Output_v2float %outUV %105
               OpStore %114 %112
        %117 = OpLoad %int %gl_InvocationID
        %119 = OpAccessChain %_ptr_Input_float %gl_in %int_0 %int_0 %117
        %120 = OpLoad %float %119
               OpStore %P0 %120
        %123 = OpLoad %int %gl_InvocationID
        %124 = OpAccessChain %_ptr_Input_float %gl_in %int_1 %int_0 %123
        %125 = OpLoad %float %124
               OpStore %P1 %125
        %128 = OpLoad %int %gl_InvocationID
        %129 = OpAccessChain %_ptr_Input_float %gl_in %int_2 %int_0 %128
        %130 = OpLoad %float %129
               OpStore %P2 %130
        %132 = OpLoad %int %gl_InvocationID
        %133 = OpAccessChain %_ptr_Input_float %inNormal %int_0 %132
        %134 = OpLoad %float %133
               OpStore %N0 %134
        %136 = OpLoad %int %gl_InvocationID
        %137 = OpAccessChain %_ptr_Input_float %inNormal %int_1 %136
        %138 = OpLoad %float %137
               OpStore %N1 %138
        %140 = OpLoad %int %gl_InvocationID
        %141 = OpAccessChain %_ptr_Input_float %inNormal %int_2 %140
        %142 = OpLoad %float %141
               OpStore %N2 %142
        %147 = OpLoad %int %gl_InvocationID
        %148 = OpLoad %float %P0
        %149 = OpFMul %float %float_2 %148
        %150 = OpLoad %float %P1
        %151 = OpFAdd %float %149 %150
               OpStore %param %int_0
               OpStore %param_0 %int_1
        %154 = OpFunctionCall %float %wij_i1_i1_ %param %param_0
        %155 = OpLoad %float %N0
        %156 = OpFMul %float %154 %155
        %157 = OpFSub %float %151 %156
        %159 = OpFDiv %float %157 %float_3
        %161 = OpAccessChain %_ptr_Output_float %outPatch %147 %int_0
               OpStore %161 %159
        %162 = OpLoad %int %gl_InvocationID
        %163 = OpLoad %float %P1
        %164 = OpFMul %float %float_2 %163
        %165 = OpLoad %float %P0
        %166 = OpFAdd %float %164 %165
               OpStore %param_1 %int_1
               OpStore %param_2 %int_0
        %169 = OpFunctionCall %float %wij_i1_i1_ %param_1 %param_2
        %170 = OpLoad %float %N1
        %171 = OpFMul %float %169 %170
        %172 = OpFSub %float %166 %171
        %173 = OpFDiv %float %172 %float_3
        %174 = OpAccessChain %_ptr_Output_float %outPatch %162 %int_1
               OpStore %174 %173
        %175 = OpLoad %int %gl_InvocationID
        %176 = OpLoad %float %P1
        %177 = OpFMul %float %float_2 %176
        %178 = OpLoad %float %P2
        %179 = OpFAdd %float %177 %178
               OpStore %param_3 %int_1
               OpStore %param_4 %int_2
        %182 = OpFunctionCall %float %wij_i1_i1_ %param_3 %param_4
        %183 = OpLoad %float %N1
        %184 = OpFMul %float %182 %183
        %185 = OpFSub %float %179 %184
        %186 = OpFDiv %float %185 %float_3
        %187 = OpAccessChain %_ptr_Output_float %outPatch %175 %int_2
               OpStore %187 %186
        %188 = OpLoad %int %gl_InvocationID
        %190 = OpLoad %float %P2
        %191 = OpFMul %float %float_2 %190
        %192 = OpLoad %float %P1
        %193 = OpFAdd %float %191 %192
               OpStore %param_5 %int_2
               OpStore %param_6 %int_1
        %196 = OpFunctionCall %float %wij_i1_i1_ %param_5 %param_6
        %197 = OpLoad %float %N2
        %198 = OpFMul %float %196 %197
        %199 = OpFSub %float %193 %198
        %200 = OpFDiv %float %199 %float_3
        %201 = OpAccessChain %_ptr_Output_float %outPatch %188 %int_3
               OpStore %201 %200
        %202 = OpLoad %int %gl_InvocationID
        %204 = OpLoad %float %P2
        %205 = OpFMul %float %float_2 %204
        %206 = OpLoad %float %P0
        %207 = OpFAdd %float %205 %206
               OpStore %param_7 %int_2
               OpStore %param_8 %int_0
        %210 = OpFunctionCall %float %wij_i1_i1_ %param_7 %param_8
        %211 = OpLoad %float %N2
        %212 = OpFMul %float %210 %211
        %213 = OpFSub %float %207 %212
        %214 = OpFDiv %float %213 %float_3
        %215 = OpAccessChain %_ptr_Output_float %outPatch %202 %int_4
               OpStore %215 %214
        %216 = OpLoad %int %gl_InvocationID
        %218 = OpLoad %float %P0
        %219 = OpFMul %float %float_2 %218
        %220 = OpLoad %float %P2
        %221 = OpFAdd %float %219 %220
               OpStore %param_9 %int_0
               OpStore %param_10 %int_2
        %224 = OpFunctionCall %float %wij_i1_i1_ %param_9 %param_10
        %225 = OpLoad %float %N0
        %226 = OpFMul %float %224 %225
        %227 = OpFSub %float %221 %226
        %228 = OpFDiv %float %227 %float_3
        %229 = OpAccessChain %_ptr_Output_float %outPatch %216 %int_5
               OpStore %229 %228
        %231 = OpLoad %int %gl_InvocationID
        %232 = OpAccessChain %_ptr_Output_float %outPatch %231 %int_0
        %233 = OpLoad %float %232
        %234 = OpLoad %int %gl_InvocationID
        %235 = OpAccessChain %_ptr_Output_float %outPatch %234 %int_1
        %236 = OpLoad %float %235
        %237 = OpFAdd %float %233 %236
        %238 = OpLoad %int %gl_InvocationID
        %239 = OpAccessChain %_ptr_Output_float %outPatch %238 %int_2
        %240 = OpLoad %float %239
        %241 = OpFAdd %float %237 %240
        %242 = OpLoad %int %gl_InvocationID
        %243 = OpAccessChain %_ptr_Output_float %outPatch %242 %int_3
        %244 = OpLoad %float %243
        %245 = OpFAdd %float %241 %244
        %246 = OpLoad %int %gl_InvocationID
        %247 = OpAccessChain %_ptr_Output_float %outPatch %246 %int_4
        %248 = OpLoad %float %247
        %249 = OpFAdd %float %245 %248
        %250 = OpLoad %int %gl_InvocationID
        %251 = OpAccessChain %_ptr_Output_float %outPatch %250 %int_5
        %252 = OpLoad %float %251
        %253 = OpFAdd %float %249 %252
        %255 = OpFDiv %float %253 %float_6
               OpStore %E %255
        %257 = OpLoad %float %P0
        %258 = OpLoad %float %P1
        %259 = OpFAdd %float %257 %258
        %260 = OpLoad %float %P2
        %261 = OpFAdd %float %259 %260
        %262 = OpFDiv %float %261 %float_3
               OpStore %V %262
        %263 = OpLoad %int %gl_InvocationID
        %265 = OpLoad %float %E
        %266 = OpLoad %float %E
        %267 = OpLoad %float %V
        %268 = OpFSub %float %266 %267
        %270 = OpFMul %float %268 %float_0_5
        %271 = OpFAdd %float %265 %270
        %272 = OpAccessChain %_ptr_Output_float %outPatch %263 %int_6
               OpStore %272 %271
        %273 = OpLoad %int %gl_InvocationID
        %275 = OpLoad %float %N0
        %276 = OpLoad %float %N1
        %277 = OpFAdd %float %275 %276
               OpStore %param_11 %int_0
               OpStore %param_12 %int_1
        %280 = OpFunctionCall %float %vij_i1_i1_ %param_11 %param_12
        %281 = OpLoad %float %P1
        %282 = OpLoad %float %P0
        %283 = OpFSub %float %281 %282
        %284 = OpFMul %float %280 %283
        %285 = OpFSub %float %277 %284
        %286 = OpAccessChain %_ptr_Output_float %outPatch %273 %int_7
               OpStore %286 %285
        %287 = OpLoad %int %gl_InvocationID
        %289 = OpLoad %float %N1
        %290 = OpLoad %float %N2
        %291 = OpFAdd %float %289 %290
               OpStore %param_13 %int_1
               OpStore %param_14 %int_2
        %294 = OpFunctionCall %float %vij_i1_i1_ %param_13 %param_14
        %295 = OpLoad %float %P2
        %296 = OpLoad %float %P1
        %297 = OpFSub %float %295 %296
        %298 = OpFMul %float %294 %297
        %299 = OpFSub %float %291 %298
        %300 = OpAccessChain %_ptr_Output_float %outPatch %287 %int_8
               OpStore %300 %299
        %301 = OpLoad %int %gl_InvocationID
        %303 = OpLoad %float %N2
        %304 = OpLoad %float %N0
        %305 = OpFAdd %float %303 %304
               OpStore %param_15 %int_2
               OpStore %param_16 %int_0
        %308 = OpFunctionCall %float %vij_i1_i1_ %param_15 %param_16
        %309 = OpLoad %float %P0
        %310 = OpLoad %float %P2
        %311 = OpFSub %float %309 %310
        %312 = OpFMul %float %308 %311
        %313 = OpFSub %float %305 %312
        %314 = OpAccessChain %_ptr_Output_float %outPatch %301 %int_9
               OpStore %314 %313
        %319 = OpLoad %int %gl_InvocationID
        %324 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %325 = OpLoad %float %324
        %326 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %319
               OpStore %326 %325
        %331 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %332 = OpLoad %float %331
        %333 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %333 %332
               OpReturn
               OpFunctionEnd
 %wij_i1_i1_ = OpFunction %float None %9
          %i = OpFunctionParameter %_ptr_Function_int
          %j = OpFunctionParameter %_ptr_Function_int
         %13 = OpLabel
         %27 = OpLoad %int %j
         %31 = OpAccessChain %_ptr_Input_v4float %gl_in %27 %int_0
         %32 = OpLoad %v4float %31
         %33 = OpVectorShuffle %v3float %32 %32 0 1 2
         %34 = OpLoad %int %i
         %35 = OpAccessChain %_ptr_Input_v4float %gl_in %34 %int_0
         %36 = OpLoad %v4float %35
         %37 = OpVectorShuffle %v3float %36 %36 0 1 2
         %38 = OpFSub %v3float %33 %37
         %42 = OpLoad %int %i
         %44 = OpAccessChain %_ptr_Input_v3float %inNormal %42
         %45 = OpLoad %v3float %44
         %46 = OpDot %float %38 %45
               OpReturnValue %46
               OpFunctionEnd
 %vij_i1_i1_ = OpFunction %float None %9
        %i_0 = OpFunctionParameter %_ptr_Function_int
        %j_0 = OpFunctionParameter %_ptr_Function_int
         %17 = OpLabel
%Pj_minus_Pi = OpVariable %_ptr_Function_v3float Function
 %Ni_plus_Nj = OpVariable %_ptr_Function_v3float Function
         %51 = OpLoad %int %j_0
         %52 = OpAccessChain %_ptr_Input_v4float %gl_in %51 %int_0
         %53 = OpLoad %v4float %52
         %54 = OpVectorShuffle %v3float %53 %53 0 1 2
         %55 = OpLoad %int %i_0
         %56 = OpAccessChain %_ptr_Input_v4float %gl_in %55 %int_0
         %57 = OpLoad %v4float %56
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpFSub %v3float %54 %58
               OpStore %Pj_minus_Pi %59
         %61 = OpLoad %int %i_0
         %62 = OpAccessChain %_ptr_Input_v3float %inNormal %61
         %63 = OpLoad %v3float %62
         %64 = OpLoad %int %j_0
         %65 = OpAccessChain %_ptr_Input_v3float %inNormal %64
         %66 = OpLoad %v3float %65
         %67 = OpFAdd %v3float %63 %66
               OpStore %Ni_plus_Nj %67
         %69 = OpLoad %v3float %Pj_minus_Pi
         %70 = OpLoad %v3float %Ni_plus_Nj
         %71 = OpDot %float %69 %70
         %72 = OpFMul %float %float_2 %71
         %73 = OpLoad %v3float %Pj_minus_Pi
         %74 = OpLoad %v3float %Pj_minus_Pi
         %75 = OpDot %float %73 %74
         %76 = OpFDiv %float %72 %75
               OpReturnValue %76
               OpFunctionEnd
