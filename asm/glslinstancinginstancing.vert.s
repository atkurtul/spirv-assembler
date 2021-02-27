; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 247
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outUV %inUV %instanceTexIndex %instanceRot %inPos %instanceScale %instancePos %_ %outNormal %inNormal %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %instanceTexIndex "instanceTexIndex"
               OpName %s "s"
               OpName %instanceRot "instanceRot"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpMemberName %UBO 3 "locSpeed"
               OpMemberName %UBO 4 "globSpeed"
               OpName %ubo "ubo"
               OpName %c "c"
               OpName %mx "mx"
               OpName %my "my"
               OpName %mz "mz"
               OpName %rotMat "rotMat"
               OpName %gRotMat "gRotMat"
               OpName %locPos "locPos"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %instanceScale "instanceScale"
               OpName %instancePos "instancePos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpDecorate %instanceTexIndex Location 7
               OpDecorate %instanceRot Location 5
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 144
               OpMemberDecorate %UBO 4 Offset 148
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %instanceScale Location 6
               OpDecorate %instancePos Location 4
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
      %outUV = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
%instanceTexIndex = OpVariable %_ptr_Input_int Input
%_ptr_Function_float = OpTypePointer Function %float
%instanceRot = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
      %int_0 = OpConstant %int 0
    %float_0 = OpConstant %float 0
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %float_1 = OpConstant %float 1
         %70 = OpConstantComposite %v3float %float_0 %float_0 %float_1
     %uint_1 = OpConstant %uint 1
         %90 = OpConstantComposite %v3float %float_0 %float_1 %float_0
     %uint_2 = OpConstant %uint 2
        %111 = OpConstantComposite %v3float %float_1 %float_0 %float_0
      %int_4 = OpConstant %int 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
        %148 = OpConstantComposite %v4float %float_0 %float_1 %float_0 %float_0
        %155 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_1
      %inPos = OpVariable %_ptr_Input_v3float Input
%instanceScale = OpVariable %_ptr_Input_float Input
%instancePos = OpVariable %_ptr_Input_v3float Input
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
          %s = OpVariable %_ptr_Function_float Function
          %c = OpVariable %_ptr_Function_float Function
         %mx = OpVariable %_ptr_Function_mat3v3float Function
         %my = OpVariable %_ptr_Function_mat3v3float Function
         %mz = OpVariable %_ptr_Function_mat3v3float Function
     %rotMat = OpVariable %_ptr_Function_mat3v3float Function
    %gRotMat = OpVariable %_ptr_Function_mat4v4float Function
     %locPos = OpVariable %_ptr_Function_v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %17 = OpLoad %v2float %inUV
         %21 = OpLoad %int %instanceTexIndex
         %22 = OpConvertSToF %float %21
         %23 = OpCompositeExtract %float %17 0
         %24 = OpCompositeExtract %float %17 1
         %25 = OpCompositeConstruct %v3float %23 %24 %22
               OpStore %outUV %25
         %32 = OpAccessChain %_ptr_Input_float %instanceRot %uint_0
         %33 = OpLoad %float %32
         %41 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %42 = OpLoad %float %41
         %43 = OpFAdd %float %33 %42
         %44 = OpExtInst %float %1 Sin %43
               OpStore %s %44
         %46 = OpAccessChain %_ptr_Input_float %instanceRot %uint_0
         %47 = OpLoad %float %46
         %48 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %49 = OpLoad %float %48
         %50 = OpFAdd %float %47 %49
         %51 = OpExtInst %float %1 Cos %50
               OpStore %c %51
         %56 = OpLoad %float %c
         %57 = OpLoad %float %s
         %59 = OpCompositeConstruct %v3float %56 %57 %float_0
         %61 = OpAccessChain %_ptr_Function_v3float %mx %int_0
               OpStore %61 %59
         %63 = OpLoad %float %s
         %64 = OpFNegate %float %63
         %65 = OpLoad %float %c
         %66 = OpCompositeConstruct %v3float %64 %65 %float_0
         %67 = OpAccessChain %_ptr_Function_v3float %mx %int_1
               OpStore %67 %66
         %71 = OpAccessChain %_ptr_Function_v3float %mx %int_2
               OpStore %71 %70
         %73 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
         %74 = OpLoad %float %73
         %75 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %76 = OpLoad %float %75
         %77 = OpFAdd %float %74 %76
         %78 = OpExtInst %float %1 Sin %77
               OpStore %s %78
         %79 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
         %80 = OpLoad %float %79
         %81 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %82 = OpLoad %float %81
         %83 = OpFAdd %float %80 %82
         %84 = OpExtInst %float %1 Cos %83
               OpStore %c %84
         %86 = OpLoad %float %c
         %87 = OpLoad %float %s
         %88 = OpCompositeConstruct %v3float %86 %float_0 %87
         %89 = OpAccessChain %_ptr_Function_v3float %my %int_0
               OpStore %89 %88
         %91 = OpAccessChain %_ptr_Function_v3float %my %int_1
               OpStore %91 %90
         %92 = OpLoad %float %s
         %93 = OpFNegate %float %92
         %94 = OpLoad %float %c
         %95 = OpCompositeConstruct %v3float %93 %float_0 %94
         %96 = OpAccessChain %_ptr_Function_v3float %my %int_2
               OpStore %96 %95
         %98 = OpAccessChain %_ptr_Input_float %instanceRot %uint_2
         %99 = OpLoad %float %98
        %100 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
        %101 = OpLoad %float %100
        %102 = OpFAdd %float %99 %101
        %103 = OpExtInst %float %1 Sin %102
               OpStore %s %103
        %104 = OpAccessChain %_ptr_Input_float %instanceRot %uint_2
        %105 = OpLoad %float %104
        %106 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
        %107 = OpLoad %float %106
        %108 = OpFAdd %float %105 %107
        %109 = OpExtInst %float %1 Cos %108
               OpStore %c %109
        %112 = OpAccessChain %_ptr_Function_v3float %mz %int_0
               OpStore %112 %111
        %113 = OpLoad %float %c
        %114 = OpLoad %float %s
        %115 = OpCompositeConstruct %v3float %float_0 %113 %114
        %116 = OpAccessChain %_ptr_Function_v3float %mz %int_1
               OpStore %116 %115
        %117 = OpLoad %float %s
        %118 = OpFNegate %float %117
        %119 = OpLoad %float %c
        %120 = OpCompositeConstruct %v3float %float_0 %118 %119
        %121 = OpAccessChain %_ptr_Function_v3float %mz %int_2
               OpStore %121 %120
        %123 = OpLoad %mat3v3float %mz
        %124 = OpLoad %mat3v3float %my
        %125 = OpMatrixTimesMatrix %mat3v3float %123 %124
        %126 = OpLoad %mat3v3float %mx
        %127 = OpMatrixTimesMatrix %mat3v3float %125 %126
               OpStore %rotMat %127
        %128 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
        %129 = OpLoad %float %128
        %131 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
        %132 = OpLoad %float %131
        %133 = OpFAdd %float %129 %132
        %134 = OpExtInst %float %1 Sin %133
               OpStore %s %134
        %135 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
        %136 = OpLoad %float %135
        %137 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
        %138 = OpLoad %float %137
        %139 = OpFAdd %float %136 %138
        %140 = OpExtInst %float %1 Cos %139
               OpStore %c %140
        %143 = OpLoad %float %c
        %144 = OpLoad %float %s
        %145 = OpCompositeConstruct %v4float %143 %float_0 %144 %float_0
        %147 = OpAccessChain %_ptr_Function_v4float %gRotMat %int_0
               OpStore %147 %145
        %149 = OpAccessChain %_ptr_Function_v4float %gRotMat %int_1
               OpStore %149 %148
        %150 = OpLoad %float %s
        %151 = OpFNegate %float %150
        %152 = OpLoad %float %c
        %153 = OpCompositeConstruct %v4float %151 %float_0 %152 %float_0
        %154 = OpAccessChain %_ptr_Function_v4float %gRotMat %int_2
               OpStore %154 %153
        %156 = OpAccessChain %_ptr_Function_v4float %gRotMat %int_3
               OpStore %156 %155
        %159 = OpLoad %v3float %inPos
        %160 = OpLoad %mat3v3float %rotMat
        %161 = OpVectorTimesMatrix %v3float %159 %160
        %162 = OpCompositeExtract %float %161 0
        %163 = OpCompositeExtract %float %161 1
        %164 = OpCompositeExtract %float %161 2
        %165 = OpCompositeConstruct %v4float %162 %163 %164 %float_1
               OpStore %locPos %165
        %167 = OpLoad %v4float %locPos
        %168 = OpVectorShuffle %v3float %167 %167 0 1 2
        %170 = OpLoad %float %instanceScale
        %171 = OpVectorTimesScalar %v3float %168 %170
        %173 = OpLoad %v3float %instancePos
        %174 = OpFAdd %v3float %171 %173
        %175 = OpCompositeExtract %float %174 0
        %176 = OpCompositeExtract %float %174 1
        %177 = OpCompositeExtract %float %174 2
        %178 = OpCompositeConstruct %v4float %175 %176 %177 %float_1
               OpStore %pos %178
        %184 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %185 = OpLoad %mat4v4float %184
        %186 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %187 = OpLoad %mat4v4float %186
        %188 = OpMatrixTimesMatrix %mat4v4float %185 %187
        %189 = OpLoad %mat4v4float %gRotMat
        %190 = OpMatrixTimesMatrix %mat4v4float %188 %189
        %191 = OpLoad %v4float %pos
        %192 = OpMatrixTimesVector %v4float %190 %191
        %194 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %194 %192
        %196 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %197 = OpLoad %mat4v4float %196
        %198 = OpLoad %mat4v4float %gRotMat
        %199 = OpMatrixTimesMatrix %mat4v4float %197 %198
        %200 = OpCompositeExtract %v4float %199 0
        %201 = OpVectorShuffle %v3float %200 %200 0 1 2
        %202 = OpCompositeExtract %v4float %199 1
        %203 = OpVectorShuffle %v3float %202 %202 0 1 2
        %204 = OpCompositeExtract %v4float %199 2
        %205 = OpVectorShuffle %v3float %204 %204 0 1 2
        %206 = OpCompositeConstruct %mat3v3float %201 %203 %205
        %207 = OpLoad %mat3v3float %rotMat
        %208 = OpExtInst %mat3v3float %1 MatrixInverse %207
        %209 = OpMatrixTimesMatrix %mat3v3float %206 %208
        %211 = OpLoad %v3float %inNormal
        %212 = OpMatrixTimesVector %v3float %209 %211
               OpStore %outNormal %212
        %213 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %214 = OpLoad %mat4v4float %213
        %215 = OpLoad %v3float %inPos
        %216 = OpLoad %v3float %instancePos
        %217 = OpFAdd %v3float %215 %216
        %218 = OpCompositeExtract %float %217 0
        %219 = OpCompositeExtract %float %217 1
        %220 = OpCompositeExtract %float %217 2
        %221 = OpCompositeConstruct %v4float %218 %219 %220 %float_1
        %222 = OpMatrixTimesVector %v4float %214 %221
               OpStore %pos %222
        %224 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %225 = OpLoad %mat4v4float %224
        %226 = OpCompositeExtract %v4float %225 0
        %227 = OpVectorShuffle %v3float %226 %226 0 1 2
        %228 = OpCompositeExtract %v4float %225 1
        %229 = OpVectorShuffle %v3float %228 %228 0 1 2
        %230 = OpCompositeExtract %v4float %225 2
        %231 = OpVectorShuffle %v3float %230 %230 0 1 2
        %232 = OpCompositeConstruct %mat3v3float %227 %229 %231
        %234 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %235 = OpLoad %v4float %234
        %236 = OpVectorShuffle %v3float %235 %235 0 1 2
        %237 = OpMatrixTimesVector %v3float %232 %236
               OpStore %lPos %237
        %239 = OpLoad %v3float %lPos
        %240 = OpLoad %v4float %pos
        %241 = OpVectorShuffle %v3float %240 %240 0 1 2
        %242 = OpFSub %v3float %239 %241
               OpStore %outLightVec %242
        %244 = OpLoad %v4float %pos
        %245 = OpVectorShuffle %v3float %244 %244 0 1 2
        %246 = OpFNegate %v3float %245
               OpStore %outViewVec %246
               OpReturn
               OpFunctionEnd
