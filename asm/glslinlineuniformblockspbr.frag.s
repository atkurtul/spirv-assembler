; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 281
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inNormal %inWorldPos %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %materialcolor_ "materialcolor("
               OpName %D_GGX_f1_f1_ "D_GGX(f1;f1;"
               OpName %dotNH "dotNH"
               OpName %roughness "roughness"
               OpName %G_SchlicksmithGGX_f1_f1_f1_ "G_SchlicksmithGGX(f1;f1;f1;"
               OpName %dotNL "dotNL"
               OpName %dotNV "dotNV"
               OpName %roughness_0 "roughness"
               OpName %F_Schlick_f1_f1_ "F_Schlick(f1;f1;"
               OpName %cosTheta "cosTheta"
               OpName %metallic "metallic"
               OpName %BRDF_vf3_vf3_vf3_f1_f1_ "BRDF(vf3;vf3;vf3;f1;f1;"
               OpName %L "L"
               OpName %V "V"
               OpName %N "N"
               OpName %metallic_0 "metallic"
               OpName %roughness_1 "roughness"
               OpName %UniformInline "UniformInline"
               OpMemberName %UniformInline 0 "roughness"
               OpMemberName %UniformInline 1 "metallic"
               OpMemberName %UniformInline 2 "r"
               OpMemberName %UniformInline 3 "g"
               OpMemberName %UniformInline 4 "b"
               OpMemberName %UniformInline 5 "ambient"
               OpName %material "material"
               OpName %alpha "alpha"
               OpName %alpha2 "alpha2"
               OpName %denom "denom"
               OpName %r "r"
               OpName %k "k"
               OpName %GL "GL"
               OpName %GV "GV"
               OpName %F0 "F0"
               OpName %F "F"
               OpName %H "H"
               OpName %dotNV_0 "dotNV"
               OpName %dotNL_0 "dotNL"
               OpName %dotLH "dotLH"
               OpName %dotNH_0 "dotNH"
               OpName %lightColor "lightColor"
               OpName %color "color"
               OpName %rroughness "rroughness"
               OpName %D "D"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %G "G"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %F_0 "F"
               OpName %param_4 "param"
               OpName %param_5 "param"
               OpName %spec "spec"
               OpName %N_0 "N"
               OpName %inNormal "inNormal"
               OpName %V_0 "V"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "camPos"
               OpName %ubo "ubo"
               OpName %inWorldPos "inWorldPos"
               OpName %roughness_2 "roughness"
               OpName %lightPos "lightPos"
               OpName %Lo "Lo"
               OpName %L_0 "L"
               OpName %param_6 "param"
               OpName %param_7 "param"
               OpName %param_8 "param"
               OpName %param_9 "param"
               OpName %param_10 "param"
               OpName %color_0 "color"
               OpName %outColor "outColor"
               OpMemberDecorate %UniformInline 0 Offset 0
               OpMemberDecorate %UniformInline 1 Offset 4
               OpMemberDecorate %UniformInline 2 Offset 8
               OpMemberDecorate %UniformInline 3 Offset 12
               OpMemberDecorate %UniformInline 4 Offset 16
               OpMemberDecorate %UniformInline 5 Offset 20
               OpDecorate %UniformInline Block
               OpDecorate %material DescriptorSet 1
               OpDecorate %material Binding 0
               OpDecorate %inNormal Location 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inWorldPos Location 0
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
          %8 = OpTypeFunction %v3float
%_ptr_Function_float = OpTypePointer Function %float
         %12 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float
         %17 = OpTypeFunction %float %_ptr_Function_float %_ptr_Function_float %_ptr_Function_float
         %23 = OpTypeFunction %v3float %_ptr_Function_float %_ptr_Function_float
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %29 = OpTypeFunction %v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_v3float %_ptr_Function_float %_ptr_Function_float
%UniformInline = OpTypeStruct %float %float %float %float %float %float
%_ptr_Uniform_UniformInline = OpTypePointer Uniform %UniformInline
   %material = OpVariable %_ptr_Uniform_UniformInline Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %int_3 = OpConstant %int 3
      %int_4 = OpConstant %int 4
    %float_1 = OpConstant %float 1
%float_3_14159274 = OpConstant %float 3.14159274
    %float_8 = OpConstant %float 8
%float_0_0399999991 = OpConstant %float 0.0399999991
        %114 = OpConstantComposite %v3float %float_0_0399999991 %float_0_0399999991 %float_0_0399999991
    %float_5 = OpConstant %float 5
    %float_0 = OpConstant %float 0
        %160 = OpConstantComposite %v3float %float_1 %float_1 %float_1
        %162 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %bool = OpTypeBool
%float_0_0500000007 = OpConstant %float 0.0500000007
    %float_4 = OpConstant %float 4
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v3float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
      %int_0 = OpConstant %int 0
   %float_10 = OpConstant %float 10
        %239 = OpConstantComposite %v3float %float_0 %float_0 %float_10
      %int_1 = OpConstant %int 1
      %int_5 = OpConstant %int 5
%float_0_45449999 = OpConstant %float 0.45449999
        %272 = OpConstantComposite %v3float %float_0_45449999 %float_0_45449999 %float_0_45449999
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %N_0 = OpVariable %_ptr_Function_v3float Function
        %V_0 = OpVariable %_ptr_Function_v3float Function
%roughness_2 = OpVariable %_ptr_Function_float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %Lo = OpVariable %_ptr_Function_v3float Function
        %L_0 = OpVariable %_ptr_Function_v3float Function
    %param_6 = OpVariable %_ptr_Function_v3float Function
    %param_7 = OpVariable %_ptr_Function_v3float Function
    %param_8 = OpVariable %_ptr_Function_v3float Function
    %param_9 = OpVariable %_ptr_Function_float Function
   %param_10 = OpVariable %_ptr_Function_float Function
    %color_0 = OpVariable %_ptr_Function_v3float Function
        %218 = OpLoad %v3float %inNormal
        %219 = OpExtInst %v3float %1 Normalize %218
               OpStore %N_0 %219
        %227 = OpAccessChain %_ptr_Uniform_v3float %ubo %int_3
        %228 = OpLoad %v3float %227
        %230 = OpLoad %v3float %inWorldPos
        %231 = OpFSub %v3float %228 %230
        %232 = OpExtInst %v3float %1 Normalize %231
               OpStore %V_0 %232
        %235 = OpAccessChain %_ptr_Uniform_float %material %int_0
        %236 = OpLoad %float %235
               OpStore %roughness_2 %236
               OpStore %lightPos %239
               OpStore %Lo %162
        %242 = OpLoad %v3float %lightPos
        %243 = OpLoad %v3float %inWorldPos
        %244 = OpFSub %v3float %242 %243
        %245 = OpExtInst %v3float %1 Normalize %244
               OpStore %L_0 %245
        %248 = OpLoad %v3float %L_0
               OpStore %param_6 %248
        %250 = OpLoad %v3float %V_0
               OpStore %param_7 %250
        %252 = OpLoad %v3float %N_0
               OpStore %param_8 %252
        %254 = OpAccessChain %_ptr_Uniform_float %material %int_1
        %255 = OpLoad %float %254
               OpStore %param_9 %255
        %257 = OpLoad %float %roughness_2
               OpStore %param_10 %257
        %258 = OpFunctionCall %v3float %BRDF_vf3_vf3_vf3_f1_f1_ %param_6 %param_7 %param_8 %param_9 %param_10
        %259 = OpLoad %v3float %Lo
        %260 = OpFAdd %v3float %259 %258
               OpStore %Lo %260
        %262 = OpFunctionCall %v3float %materialcolor_
        %264 = OpAccessChain %_ptr_Uniform_float %material %int_5
        %265 = OpLoad %float %264
        %266 = OpVectorTimesScalar %v3float %262 %265
               OpStore %color_0 %266
        %267 = OpLoad %v3float %Lo
        %268 = OpLoad %v3float %color_0
        %269 = OpFAdd %v3float %268 %267
               OpStore %color_0 %269
        %270 = OpLoad %v3float %color_0
        %273 = OpExtInst %v3float %1 Pow %270 %272
               OpStore %color_0 %273
        %276 = OpLoad %v3float %color_0
        %277 = OpCompositeExtract %float %276 0
        %278 = OpCompositeExtract %float %276 1
        %279 = OpCompositeExtract %float %276 2
        %280 = OpCompositeConstruct %v4float %277 %278 %279 %float_1
               OpStore %outColor %280
               OpReturn
               OpFunctionEnd
%materialcolor_ = OpFunction %v3float None %8
         %10 = OpLabel
         %43 = OpAccessChain %_ptr_Uniform_float %material %int_2
         %44 = OpLoad %float %43
         %46 = OpAccessChain %_ptr_Uniform_float %material %int_3
         %47 = OpLoad %float %46
         %49 = OpAccessChain %_ptr_Uniform_float %material %int_4
         %50 = OpLoad %float %49
         %51 = OpCompositeConstruct %v3float %44 %47 %50
               OpReturnValue %51
               OpFunctionEnd
%D_GGX_f1_f1_ = OpFunction %float None %12
      %dotNH = OpFunctionParameter %_ptr_Function_float
  %roughness = OpFunctionParameter %_ptr_Function_float
         %16 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
     %alpha2 = OpVariable %_ptr_Function_float Function
      %denom = OpVariable %_ptr_Function_float Function
         %55 = OpLoad %float %roughness
         %56 = OpLoad %float %roughness
         %57 = OpFMul %float %55 %56
               OpStore %alpha %57
         %59 = OpLoad %float %alpha
         %60 = OpLoad %float %alpha
         %61 = OpFMul %float %59 %60
               OpStore %alpha2 %61
         %63 = OpLoad %float %dotNH
         %64 = OpLoad %float %dotNH
         %65 = OpFMul %float %63 %64
         %66 = OpLoad %float %alpha2
         %68 = OpFSub %float %66 %float_1
         %69 = OpFMul %float %65 %68
         %70 = OpFAdd %float %69 %float_1
               OpStore %denom %70
         %71 = OpLoad %float %alpha2
         %73 = OpLoad %float %denom
         %74 = OpFMul %float %float_3_14159274 %73
         %75 = OpLoad %float %denom
         %76 = OpFMul %float %74 %75
         %77 = OpFDiv %float %71 %76
               OpReturnValue %77
               OpFunctionEnd
%G_SchlicksmithGGX_f1_f1_f1_ = OpFunction %float None %17
      %dotNL = OpFunctionParameter %_ptr_Function_float
      %dotNV = OpFunctionParameter %_ptr_Function_float
%roughness_0 = OpFunctionParameter %_ptr_Function_float
         %22 = OpLabel
          %r = OpVariable %_ptr_Function_float Function
          %k = OpVariable %_ptr_Function_float Function
         %GL = OpVariable %_ptr_Function_float Function
         %GV = OpVariable %_ptr_Function_float Function
         %81 = OpLoad %float %roughness_0
         %82 = OpFAdd %float %81 %float_1
               OpStore %r %82
         %84 = OpLoad %float %r
         %85 = OpLoad %float %r
         %86 = OpFMul %float %84 %85
         %88 = OpFDiv %float %86 %float_8
               OpStore %k %88
         %90 = OpLoad %float %dotNL
         %91 = OpLoad %float %dotNL
         %92 = OpLoad %float %k
         %93 = OpFSub %float %float_1 %92
         %94 = OpFMul %float %91 %93
         %95 = OpLoad %float %k
         %96 = OpFAdd %float %94 %95
         %97 = OpFDiv %float %90 %96
               OpStore %GL %97
         %99 = OpLoad %float %dotNV
        %100 = OpLoad %float %dotNV
        %101 = OpLoad %float %k
        %102 = OpFSub %float %float_1 %101
        %103 = OpFMul %float %100 %102
        %104 = OpLoad %float %k
        %105 = OpFAdd %float %103 %104
        %106 = OpFDiv %float %99 %105
               OpStore %GV %106
        %107 = OpLoad %float %GL
        %108 = OpLoad %float %GV
        %109 = OpFMul %float %107 %108
               OpReturnValue %109
               OpFunctionEnd
%F_Schlick_f1_f1_ = OpFunction %v3float None %23
   %cosTheta = OpFunctionParameter %_ptr_Function_float
   %metallic = OpFunctionParameter %_ptr_Function_float
         %27 = OpLabel
         %F0 = OpVariable %_ptr_Function_v3float Function
          %F = OpVariable %_ptr_Function_v3float Function
        %115 = OpFunctionCall %v3float %materialcolor_
        %116 = OpLoad %float %metallic
        %117 = OpCompositeConstruct %v3float %116 %116 %116
        %118 = OpExtInst %v3float %1 FMix %114 %115 %117
               OpStore %F0 %118
        %120 = OpLoad %v3float %F0
        %121 = OpLoad %v3float %F0
        %122 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
        %123 = OpFSub %v3float %122 %121
        %124 = OpLoad %float %cosTheta
        %125 = OpFSub %float %float_1 %124
        %127 = OpExtInst %float %1 Pow %125 %float_5
        %128 = OpVectorTimesScalar %v3float %123 %127
        %129 = OpFAdd %v3float %120 %128
               OpStore %F %129
        %130 = OpLoad %v3float %F
               OpReturnValue %130
               OpFunctionEnd
%BRDF_vf3_vf3_vf3_f1_f1_ = OpFunction %v3float None %29
          %L = OpFunctionParameter %_ptr_Function_v3float
          %V = OpFunctionParameter %_ptr_Function_v3float
          %N = OpFunctionParameter %_ptr_Function_v3float
 %metallic_0 = OpFunctionParameter %_ptr_Function_float
%roughness_1 = OpFunctionParameter %_ptr_Function_float
         %36 = OpLabel
          %H = OpVariable %_ptr_Function_v3float Function
    %dotNV_0 = OpVariable %_ptr_Function_float Function
    %dotNL_0 = OpVariable %_ptr_Function_float Function
      %dotLH = OpVariable %_ptr_Function_float Function
    %dotNH_0 = OpVariable %_ptr_Function_float Function
 %lightColor = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v3float Function
 %rroughness = OpVariable %_ptr_Function_float Function
          %D = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_float Function
    %param_0 = OpVariable %_ptr_Function_float Function
          %G = OpVariable %_ptr_Function_float Function
    %param_1 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_float Function
    %param_3 = OpVariable %_ptr_Function_float Function
        %F_0 = OpVariable %_ptr_Function_v3float Function
    %param_4 = OpVariable %_ptr_Function_float Function
    %param_5 = OpVariable %_ptr_Function_float Function
       %spec = OpVariable %_ptr_Function_v3float Function
        %134 = OpLoad %v3float %V
        %135 = OpLoad %v3float %L
        %136 = OpFAdd %v3float %134 %135
        %137 = OpExtInst %v3float %1 Normalize %136
               OpStore %H %137
        %139 = OpLoad %v3float %N
        %140 = OpLoad %v3float %V
        %141 = OpDot %float %139 %140
        %143 = OpExtInst %float %1 FClamp %141 %float_0 %float_1
               OpStore %dotNV_0 %143
        %145 = OpLoad %v3float %N
        %146 = OpLoad %v3float %L
        %147 = OpDot %float %145 %146
        %148 = OpExtInst %float %1 FClamp %147 %float_0 %float_1
               OpStore %dotNL_0 %148
        %150 = OpLoad %v3float %L
        %151 = OpLoad %v3float %H
        %152 = OpDot %float %150 %151
        %153 = OpExtInst %float %1 FClamp %152 %float_0 %float_1
               OpStore %dotLH %153
        %155 = OpLoad %v3float %N
        %156 = OpLoad %v3float %H
        %157 = OpDot %float %155 %156
        %158 = OpExtInst %float %1 FClamp %157 %float_0 %float_1
               OpStore %dotNH_0 %158
               OpStore %lightColor %160
               OpStore %color %162
        %163 = OpLoad %float %dotNL_0
        %165 = OpFOrdGreaterThan %bool %163 %float_0
               OpSelectionMerge %167 None
               OpBranchConditional %165 %166 %167
        %166 = OpLabel
        %170 = OpLoad %float %roughness_1
        %171 = OpExtInst %float %1 FMax %float_0_0500000007 %170
               OpStore %rroughness %171
        %174 = OpLoad %float %dotNH_0
               OpStore %param %174
        %176 = OpLoad %float %rroughness
               OpStore %param_0 %176
        %177 = OpFunctionCall %float %D_GGX_f1_f1_ %param %param_0
               OpStore %D %177
        %180 = OpLoad %float %dotNL_0
               OpStore %param_1 %180
        %182 = OpLoad %float %dotNV_0
               OpStore %param_2 %182
        %184 = OpLoad %float %rroughness
               OpStore %param_3 %184
        %185 = OpFunctionCall %float %G_SchlicksmithGGX_f1_f1_f1_ %param_1 %param_2 %param_3
               OpStore %G %185
        %188 = OpLoad %float %dotNV_0
               OpStore %param_4 %188
        %190 = OpLoad %float %metallic_0
               OpStore %param_5 %190
        %191 = OpFunctionCall %v3float %F_Schlick_f1_f1_ %param_4 %param_5
               OpStore %F_0 %191
        %193 = OpLoad %float %D
        %194 = OpLoad %v3float %F_0
        %195 = OpVectorTimesScalar %v3float %194 %193
        %196 = OpLoad %float %G
        %197 = OpVectorTimesScalar %v3float %195 %196
        %199 = OpLoad %float %dotNL_0
        %200 = OpFMul %float %float_4 %199
        %201 = OpLoad %float %dotNV_0
        %202 = OpFMul %float %200 %201
        %203 = OpCompositeConstruct %v3float %202 %202 %202
        %204 = OpFDiv %v3float %197 %203
               OpStore %spec %204
        %205 = OpLoad %v3float %spec
        %206 = OpLoad %float %dotNL_0
        %207 = OpVectorTimesScalar %v3float %205 %206
        %208 = OpLoad %v3float %lightColor
        %209 = OpFMul %v3float %207 %208
        %210 = OpLoad %v3float %color
        %211 = OpFAdd %v3float %210 %209
               OpStore %color %211
               OpBranch %167
        %167 = OpLabel
        %212 = OpLoad %v3float %color
               OpReturnValue %212
               OpFunctionEnd
