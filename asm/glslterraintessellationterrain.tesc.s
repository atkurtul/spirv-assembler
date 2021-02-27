; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 294
; Schema: 0
               OpCapability Tessellation
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint TessellationControl %main "main" %gl_in %gl_InvocationID %inUV %gl_TessLevelInner %gl_TessLevelOuter %gl_out %outNormal %inNormal %outUV
               OpExecutionMode %main OutputVertices 4
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %screenSpaceTessFactor_vf4_vf4_ "screenSpaceTessFactor(vf4;vf4;"
               OpName %p0 "p0"
               OpName %p1 "p1"
               OpName %frustumCheck_ "frustumCheck("
               OpName %midPoint "midPoint"
               OpName %radius "radius"
               OpName %v0 "v0"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpMemberName %UBO 3 "frustumPlanes"
               OpMemberName %UBO 4 "displacementFactor"
               OpMemberName %UBO 5 "tessellationFactor"
               OpMemberName %UBO 6 "viewportDim"
               OpMemberName %UBO 7 "tessellatedEdgeSize"
               OpName %ubo "ubo"
               OpName %clip0 "clip0"
               OpName %clip1 "clip1"
               OpName %pos "pos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %gl_in "gl_in"
               OpName %gl_InvocationID "gl_InvocationID"
               OpName %samplerHeight "samplerHeight"
               OpName %inUV "inUV"
               OpName %i "i"
               OpName %gl_TessLevelInner "gl_TessLevelInner"
               OpName %gl_TessLevelOuter "gl_TessLevelOuter"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %param_6 "param"
               OpName %gl_PerVertex_0 "gl_PerVertex"
               OpMemberName %gl_PerVertex_0 0 "gl_Position"
               OpMemberName %gl_PerVertex_0 1 "gl_PointSize"
               OpMemberName %gl_PerVertex_0 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex_0 3 "gl_CullDistance"
               OpName %gl_out "gl_out"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outUV "outUV"
               OpDecorate %_arr_v4float_uint_6 ArrayStride 16
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 144
               OpMemberDecorate %UBO 4 Offset 240
               OpMemberDecorate %UBO 5 Offset 244
               OpMemberDecorate %UBO 6 Offset 248
               OpMemberDecorate %UBO 7 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %gl_InvocationID BuiltIn InvocationId
               OpDecorate %samplerHeight DescriptorSet 0
               OpDecorate %samplerHeight Binding 1
               OpDecorate %inUV Location 1
               OpDecorate %gl_TessLevelInner Patch
               OpDecorate %gl_TessLevelInner BuiltIn TessLevelInner
               OpDecorate %gl_TessLevelOuter Patch
               OpDecorate %gl_TessLevelOuter BuiltIn TessLevelOuter
               OpMemberDecorate %gl_PerVertex_0 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex_0 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex_0 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex_0 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex_0 Block
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 0
               OpDecorate %outUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
          %9 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_v4float
       %bool = OpTypeBool
         %15 = OpTypeFunction %bool
  %float_0_5 = OpConstant %float 0.5
%_ptr_Function_float = OpTypePointer Function %float
    %float_2 = OpConstant %float 2
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_6 = OpConstant %uint 6
%_arr_v4float_uint_6 = OpTypeArray %v4float %uint_6
    %v2float = OpTypeVector %float 2
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %_arr_v4float_uint_6 %float %float %v2float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_0 = OpConstant %int 0
    %v3float = OpTypeVector %float 3
    %float_0 = OpConstant %float 0
         %55 = OpConstantComposite %v3float %float_0 %float_0 %float_0
     %uint_3 = OpConstant %uint 3
      %int_6 = OpConstant %int 6
%_ptr_Uniform_v2float = OpTypePointer Uniform %v2float
      %int_7 = OpConstant %int 7
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %int_5 = OpConstant %int 5
    %float_1 = OpConstant %float 1
   %float_64 = OpConstant %float 64
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
    %uint_32 = OpConstant %uint 32
%_arr_gl_PerVertex_uint_32 = OpTypeArray %gl_PerVertex %uint_32
%_ptr_Input__arr_gl_PerVertex_uint_32 = OpTypePointer Input %_arr_gl_PerVertex_uint_32
      %gl_in = OpVariable %_ptr_Input__arr_gl_PerVertex_uint_32 Input
%_ptr_Input_int = OpTypePointer Input %int
%gl_InvocationID = OpVariable %_ptr_Input_int Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
        %131 = OpTypeImage %float 2D 0 0 0 1 Unknown
        %132 = OpTypeSampledImage %131
%_ptr_UniformConstant_132 = OpTypePointer UniformConstant %132
%samplerHeight = OpVariable %_ptr_UniformConstant_132 UniformConstant
%_arr_v2float_uint_32 = OpTypeArray %v2float %uint_32
%_ptr_Input__arr_v2float_uint_32 = OpTypePointer Input %_arr_v2float_uint_32
       %inUV = OpVariable %_ptr_Input__arr_v2float_uint_32 Input
%_ptr_Input_v2float = OpTypePointer Input %v2float
     %uint_0 = OpConstant %uint 0
      %int_4 = OpConstant %int 4
%_ptr_Function_int = OpTypePointer Function %int
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
    %float_8 = OpConstant %float 8
      %false = OpConstantFalse %bool
       %true = OpConstantTrue %bool
     %uint_2 = OpConstant %uint 2
%_arr_float_uint_2 = OpTypeArray %float %uint_2
%_ptr_Output__arr_float_uint_2 = OpTypePointer Output %_arr_float_uint_2
%gl_TessLevelInner = OpVariable %_ptr_Output__arr_float_uint_2 Output
%_ptr_Output_float = OpTypePointer Output %float
     %uint_4 = OpConstant %uint 4
%_arr_float_uint_4 = OpTypeArray %float %uint_4
%_ptr_Output__arr_float_uint_4 = OpTypePointer Output %_arr_float_uint_4
%gl_TessLevelOuter = OpVariable %_ptr_Output__arr_float_uint_4 Output
      %int_2 = OpConstant %int 2
%gl_PerVertex_0 = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_arr_gl_PerVertex_0_uint_4 = OpTypeArray %gl_PerVertex_0 %uint_4
%_ptr_Output__arr_gl_PerVertex_0_uint_4 = OpTypePointer Output %_arr_gl_PerVertex_0_uint_4
     %gl_out = OpVariable %_ptr_Output__arr_gl_PerVertex_0_uint_4 Output
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_arr_v3float_uint_4 = OpTypeArray %v3float %uint_4
%_ptr_Output__arr_v3float_uint_4 = OpTypePointer Output %_arr_v3float_uint_4
  %outNormal = OpVariable %_ptr_Output__arr_v3float_uint_4 Output
%_arr_v3float_uint_32 = OpTypeArray %v3float %uint_32
%_ptr_Input__arr_v3float_uint_32 = OpTypePointer Input %_arr_v3float_uint_32
   %inNormal = OpVariable %_ptr_Input__arr_v3float_uint_32 Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
%_ptr_Output_v3float = OpTypePointer Output %v3float
%_arr_v2float_uint_4 = OpTypeArray %v2float %uint_4
%_ptr_Output__arr_v2float_uint_4 = OpTypePointer Output %_arr_v2float_uint_4
      %outUV = OpVariable %_ptr_Output__arr_v2float_uint_4 Output
%_ptr_Output_v2float = OpTypePointer Output %v2float
       %main = OpFunction %void None %3
          %5 = OpLabel
      %param = OpVariable %_ptr_Function_v4float Function
    %param_0 = OpVariable %_ptr_Function_v4float Function
    %param_1 = OpVariable %_ptr_Function_v4float Function
    %param_2 = OpVariable %_ptr_Function_v4float Function
    %param_3 = OpVariable %_ptr_Function_v4float Function
    %param_4 = OpVariable %_ptr_Function_v4float Function
    %param_5 = OpVariable %_ptr_Function_v4float Function
    %param_6 = OpVariable %_ptr_Function_v4float Function
        %181 = OpLoad %int %gl_InvocationID
        %182 = OpIEqual %bool %181 %int_0
               OpSelectionMerge %184 None
               OpBranchConditional %182 %183 %184
        %183 = OpLabel
        %185 = OpFunctionCall %bool %frustumCheck_
        %186 = OpLogicalNot %bool %185
               OpSelectionMerge %188 None
               OpBranchConditional %186 %187 %205
        %187 = OpLabel
        %194 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %194 %float_0
        %195 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_1
               OpStore %195 %float_0
        %200 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
               OpStore %200 %float_0
        %201 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
               OpStore %201 %float_0
        %203 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
               OpStore %203 %float_0
        %204 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_3
               OpStore %204 %float_0
               OpBranch %188
        %205 = OpLabel
        %206 = OpAccessChain %_ptr_Uniform_float %ubo %int_5
        %207 = OpLoad %float %206
        %208 = OpFOrdGreaterThan %bool %207 %float_0
               OpSelectionMerge %210 None
               OpBranchConditional %208 %209 %255
        %209 = OpLabel
        %212 = OpAccessChain %_ptr_Input_v4float %gl_in %int_3 %int_0
        %213 = OpLoad %v4float %212
               OpStore %param %213
        %215 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
        %216 = OpLoad %v4float %215
               OpStore %param_0 %216
        %217 = OpFunctionCall %float %screenSpaceTessFactor_vf4_vf4_ %param %param_0
        %218 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
               OpStore %218 %217
        %220 = OpAccessChain %_ptr_Input_v4float %gl_in %int_0 %int_0
        %221 = OpLoad %v4float %220
               OpStore %param_1 %221
        %223 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
        %224 = OpLoad %v4float %223
               OpStore %param_2 %224
        %225 = OpFunctionCall %float %screenSpaceTessFactor_vf4_vf4_ %param_1 %param_2
        %226 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
               OpStore %226 %225
        %228 = OpAccessChain %_ptr_Input_v4float %gl_in %int_1 %int_0
        %229 = OpLoad %v4float %228
               OpStore %param_3 %229
        %231 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
        %232 = OpLoad %v4float %231
               OpStore %param_4 %232
        %233 = OpFunctionCall %float %screenSpaceTessFactor_vf4_vf4_ %param_3 %param_4
        %234 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
               OpStore %234 %233
        %236 = OpAccessChain %_ptr_Input_v4float %gl_in %int_2 %int_0
        %237 = OpLoad %v4float %236
               OpStore %param_5 %237
        %239 = OpAccessChain %_ptr_Input_v4float %gl_in %int_3 %int_0
        %240 = OpLoad %v4float %239
               OpStore %param_6 %240
        %241 = OpFunctionCall %float %screenSpaceTessFactor_vf4_vf4_ %param_5 %param_6
        %242 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_3
               OpStore %242 %241
        %243 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
        %244 = OpLoad %float %243
        %245 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_3
        %246 = OpLoad %float %245
        %247 = OpExtInst %float %1 FMix %244 %246 %float_0_5
        %248 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %248 %247
        %249 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
        %250 = OpLoad %float %249
        %251 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
        %252 = OpLoad %float %251
        %253 = OpExtInst %float %1 FMix %250 %252 %float_0_5
        %254 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_1
               OpStore %254 %253
               OpBranch %210
        %255 = OpLabel
        %256 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_0
               OpStore %256 %float_1
        %257 = OpAccessChain %_ptr_Output_float %gl_TessLevelInner %int_1
               OpStore %257 %float_1
        %258 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_0
               OpStore %258 %float_1
        %259 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_1
               OpStore %259 %float_1
        %260 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_2
               OpStore %260 %float_1
        %261 = OpAccessChain %_ptr_Output_float %gl_TessLevelOuter %int_3
               OpStore %261 %float_1
               OpBranch %210
        %210 = OpLabel
               OpBranch %188
        %188 = OpLabel
               OpBranch %184
        %184 = OpLabel
        %266 = OpLoad %int %gl_InvocationID
        %267 = OpLoad %int %gl_InvocationID
        %268 = OpAccessChain %_ptr_Input_v4float %gl_in %267 %int_0
        %269 = OpLoad %v4float %268
        %271 = OpAccessChain %_ptr_Output_v4float %gl_out %266 %int_0
               OpStore %271 %269
        %275 = OpLoad %int %gl_InvocationID
        %279 = OpLoad %int %gl_InvocationID
        %281 = OpAccessChain %_ptr_Input_v3float %inNormal %279
        %282 = OpLoad %v3float %281
        %284 = OpAccessChain %_ptr_Output_v3float %outNormal %275
               OpStore %284 %282
        %288 = OpLoad %int %gl_InvocationID
        %289 = OpLoad %int %gl_InvocationID
        %290 = OpAccessChain %_ptr_Input_v2float %inUV %289
        %291 = OpLoad %v2float %290
        %293 = OpAccessChain %_ptr_Output_v2float %outUV %288
               OpStore %293 %291
               OpReturn
               OpFunctionEnd
%screenSpaceTessFactor_vf4_vf4_ = OpFunction %float None %9
         %p0 = OpFunctionParameter %_ptr_Function_v4float
         %p1 = OpFunctionParameter %_ptr_Function_v4float
         %13 = OpLabel
   %midPoint = OpVariable %_ptr_Function_v4float Function
     %radius = OpVariable %_ptr_Function_float Function
         %v0 = OpVariable %_ptr_Function_v4float Function
      %clip0 = OpVariable %_ptr_Function_v4float Function
      %clip1 = OpVariable %_ptr_Function_v4float Function
         %20 = OpLoad %v4float %p0
         %21 = OpLoad %v4float %p1
         %22 = OpFAdd %v4float %20 %21
         %23 = OpVectorTimesScalar %v4float %22 %float_0_5
               OpStore %midPoint %23
         %26 = OpLoad %v4float %p0
         %27 = OpLoad %v4float %p1
         %28 = OpExtInst %float %1 Distance %26 %27
         %30 = OpFDiv %float %28 %float_2
               OpStore %radius %30
         %43 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %44 = OpLoad %mat4v4float %43
         %45 = OpLoad %v4float %midPoint
         %46 = OpMatrixTimesVector %v4float %44 %45
               OpStore %v0 %46
         %49 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %50 = OpLoad %mat4v4float %49
         %51 = OpLoad %v4float %v0
         %52 = OpLoad %float %radius
         %56 = OpCompositeExtract %float %55 0
         %57 = OpCompositeExtract %float %55 1
         %58 = OpCompositeExtract %float %55 2
         %59 = OpCompositeConstruct %v4float %52 %56 %57 %58
         %60 = OpFSub %v4float %51 %59
         %61 = OpMatrixTimesVector %v4float %50 %60
               OpStore %clip0 %61
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %64 = OpLoad %mat4v4float %63
         %65 = OpLoad %v4float %v0
         %66 = OpLoad %float %radius
         %67 = OpCompositeExtract %float %55 0
         %68 = OpCompositeExtract %float %55 1
         %69 = OpCompositeExtract %float %55 2
         %70 = OpCompositeConstruct %v4float %66 %67 %68 %69
         %71 = OpFAdd %v4float %65 %70
         %72 = OpMatrixTimesVector %v4float %64 %71
               OpStore %clip1 %72
         %74 = OpAccessChain %_ptr_Function_float %clip0 %uint_3
         %75 = OpLoad %float %74
         %76 = OpLoad %v4float %clip0
         %77 = OpCompositeConstruct %v4float %75 %75 %75 %75
         %78 = OpFDiv %v4float %76 %77
               OpStore %clip0 %78
         %79 = OpAccessChain %_ptr_Function_float %clip1 %uint_3
         %80 = OpLoad %float %79
         %81 = OpLoad %v4float %clip1
         %82 = OpCompositeConstruct %v4float %80 %80 %80 %80
         %83 = OpFDiv %v4float %81 %82
               OpStore %clip1 %83
         %86 = OpAccessChain %_ptr_Uniform_v2float %ubo %int_6
         %87 = OpLoad %v2float %86
         %88 = OpLoad %v4float %clip0
         %89 = OpVectorShuffle %v2float %88 %88 0 1
         %90 = OpFMul %v2float %89 %87
         %91 = OpLoad %v4float %clip0
         %92 = OpVectorShuffle %v4float %91 %90 4 5 2 3
               OpStore %clip0 %92
         %93 = OpAccessChain %_ptr_Uniform_v2float %ubo %int_6
         %94 = OpLoad %v2float %93
         %95 = OpLoad %v4float %clip1
         %96 = OpVectorShuffle %v2float %95 %95 0 1
         %97 = OpFMul %v2float %96 %94
         %98 = OpLoad %v4float %clip1
         %99 = OpVectorShuffle %v4float %98 %97 4 5 2 3
               OpStore %clip1 %99
        %100 = OpLoad %v4float %clip0
        %101 = OpLoad %v4float %clip1
        %102 = OpExtInst %float %1 Distance %100 %101
        %105 = OpAccessChain %_ptr_Uniform_float %ubo %int_7
        %106 = OpLoad %float %105
        %107 = OpFDiv %float %102 %106
        %109 = OpAccessChain %_ptr_Uniform_float %ubo %int_5
        %110 = OpLoad %float %109
        %111 = OpFMul %float %107 %110
        %114 = OpExtInst %float %1 FClamp %111 %float_1 %float_64
               OpReturnValue %114
               OpFunctionEnd
%frustumCheck_ = OpFunction %bool None %15
         %17 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
          %i = OpVariable %_ptr_Function_int Function
        %127 = OpLoad %int %gl_InvocationID
        %129 = OpAccessChain %_ptr_Input_v4float %gl_in %127 %int_0
        %130 = OpLoad %v4float %129
               OpStore %pos %130
        %135 = OpLoad %132 %samplerHeight
        %140 = OpAccessChain %_ptr_Input_v2float %inUV %int_0
        %141 = OpLoad %v2float %140
        %142 = OpImageSampleExplicitLod %v4float %135 %141 Lod %float_0
        %144 = OpCompositeExtract %float %142 0
        %146 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
        %147 = OpLoad %float %146
        %148 = OpFMul %float %144 %147
        %149 = OpAccessChain %_ptr_Function_float %pos %uint_1
        %150 = OpLoad %float %149
        %151 = OpFSub %float %150 %148
        %152 = OpAccessChain %_ptr_Function_float %pos %uint_1
               OpStore %152 %151
               OpStore %i %int_0
               OpBranch %155
        %155 = OpLabel
               OpLoopMerge %157 %158 None
               OpBranch %159
        %159 = OpLabel
        %160 = OpLoad %int %i
        %161 = OpSLessThan %bool %160 %int_6
               OpBranchConditional %161 %156 %157
        %156 = OpLabel
        %162 = OpLoad %v4float %pos
        %164 = OpLoad %int %i
        %166 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3 %164
        %167 = OpLoad %v4float %166
        %168 = OpDot %float %162 %167
        %170 = OpFAdd %float %168 %float_8
        %171 = OpFOrdLessThan %bool %170 %float_0
               OpSelectionMerge %173 None
               OpBranchConditional %171 %172 %173
        %172 = OpLabel
               OpReturnValue %false
        %173 = OpLabel
               OpBranch %158
        %158 = OpLabel
        %176 = OpLoad %int %i
        %177 = OpIAdd %int %176 %int_1
               OpStore %i %177
               OpBranch %155
        %157 = OpLabel
               OpReturnValue %true
               OpFunctionEnd
