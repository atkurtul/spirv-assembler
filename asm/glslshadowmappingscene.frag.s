; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 213
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inShadowCoord %inNormal %inLightVec %inViewVec %inColor %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %textureProj_vf4_vf2_ "textureProj(vf4;vf2;"
               OpName %shadowCoord "shadowCoord"
               OpName %off "off"
               OpName %filterPCF_vf4_ "filterPCF(vf4;"
               OpName %sc "sc"
               OpName %shadow "shadow"
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
               OpName %shadow_0 "shadow"
               OpName %enablePCF "enablePCF"
               OpName %inShadowCoord "inShadowCoord"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpName %param_3 "param"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %V "V"
               OpName %inViewVec "inViewVec"
               OpName %R "R"
               OpName %diffuse "diffuse"
               OpName %inColor "inColor"
               OpName %outFragColor "outFragColor"
               OpDecorate %shadowMap DescriptorSet 0
               OpDecorate %shadowMap Binding 1
               OpDecorate %enablePCF SpecId 0
               OpDecorate %inShadowCoord Location 4
               OpDecorate %inNormal Location 0
               OpDecorate %inLightVec Location 3
               OpDecorate %inViewVec Location 2
               OpDecorate %inColor Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
         %11 = OpTypeFunction %float %_ptr_Function_v4float %_ptr_Function_v2float
         %16 = OpTypeFunction %float %_ptr_Function_v4float
%_ptr_Function_float = OpTypePointer Function %float
    %float_1 = OpConstant %float 1
       %bool = OpTypeBool
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
   %float_n1 = OpConstant %float -1
         %39 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %40 = OpTypeSampledImage %39
%_ptr_UniformConstant_40 = OpTypePointer UniformConstant %40
  %shadowMap = OpVariable %_ptr_UniformConstant_40 UniformConstant
     %uint_0 = OpConstant %uint 0
     %uint_3 = OpConstant %uint 3
    %float_0 = OpConstant %float 0
%float_0_100000001 = OpConstant %float 0.100000001
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
      %int_0 = OpConstant %int 0
  %float_1_5 = OpConstant %float 1.5
%_ptr_Function_int = OpTypePointer Function %int
     %uint_1 = OpConstant %uint 1
      %int_1 = OpConstant %int 1
  %enablePCF = OpSpecConstant %int 0
        %150 = OpSpecConstantOp %bool IEqual %enablePCF %int_1
%_ptr_Input_v4float = OpTypePointer Input %v4float
%inShadowCoord = OpVariable %_ptr_Input_v4float Input
%_ptr_Input_float = OpTypePointer Input %float
        %170 = OpConstantComposite %v2float %float_0 %float_0
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
    %inColor = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %shadow_0 = OpVariable %_ptr_Function_float Function
        %151 = OpVariable %_ptr_Function_float Function
    %param_1 = OpVariable %_ptr_Function_v4float Function
    %param_2 = OpVariable %_ptr_Function_v4float Function
    %param_3 = OpVariable %_ptr_Function_v2float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
               OpSelectionMerge %153 None
               OpBranchConditional %150 %152 %164
        %152 = OpLabel
        %156 = OpLoad %v4float %inShadowCoord
        %158 = OpAccessChain %_ptr_Input_float %inShadowCoord %uint_3
        %159 = OpLoad %float %158
        %160 = OpCompositeConstruct %v4float %159 %159 %159 %159
        %161 = OpFDiv %v4float %156 %160
               OpStore %param_1 %161
        %163 = OpFunctionCall %float %filterPCF_vf4_ %param_1
               OpStore %151 %163
               OpBranch %153
        %164 = OpLabel
        %165 = OpLoad %v4float %inShadowCoord
        %166 = OpAccessChain %_ptr_Input_float %inShadowCoord %uint_3
        %167 = OpLoad %float %166
        %168 = OpCompositeConstruct %v4float %167 %167 %167 %167
        %169 = OpFDiv %v4float %165 %168
               OpStore %param_2 %169
               OpStore %param_3 %170
        %173 = OpFunctionCall %float %textureProj_vf4_vf2_ %param_2 %param_3
               OpStore %151 %173
               OpBranch %153
        %153 = OpLabel
        %174 = OpLoad %float %151
               OpStore %shadow_0 %174
        %180 = OpLoad %v3float %inNormal
        %181 = OpExtInst %v3float %1 Normalize %180
               OpStore %N %181
        %184 = OpLoad %v3float %inLightVec
        %185 = OpExtInst %v3float %1 Normalize %184
               OpStore %L %185
        %188 = OpLoad %v3float %inViewVec
        %189 = OpExtInst %v3float %1 Normalize %188
               OpStore %V %189
        %191 = OpLoad %v3float %L
        %192 = OpLoad %v3float %N
        %193 = OpExtInst %v3float %1 Reflect %191 %192
        %194 = OpFNegate %v3float %193
        %195 = OpExtInst %v3float %1 Normalize %194
               OpStore %R %195
        %197 = OpLoad %v3float %N
        %198 = OpLoad %v3float %L
        %199 = OpDot %float %197 %198
        %200 = OpExtInst %float %1 FMax %199 %float_0_100000001
        %202 = OpLoad %v3float %inColor
        %203 = OpVectorTimesScalar %v3float %202 %200
               OpStore %diffuse %203
        %206 = OpLoad %v3float %diffuse
        %207 = OpLoad %float %shadow_0
        %208 = OpVectorTimesScalar %v3float %206 %207
        %209 = OpCompositeExtract %float %208 0
        %210 = OpCompositeExtract %float %208 1
        %211 = OpCompositeExtract %float %208 2
        %212 = OpCompositeConstruct %v4float %209 %210 %211 %float_1
               OpStore %outFragColor %212
               OpReturn
               OpFunctionEnd
%textureProj_vf4_vf2_ = OpFunction %float None %11
%shadowCoord = OpFunctionParameter %_ptr_Function_v4float
        %off = OpFunctionParameter %_ptr_Function_v2float
         %15 = OpLabel
     %shadow = OpVariable %_ptr_Function_float Function
       %dist = OpVariable %_ptr_Function_float Function
               OpStore %shadow %float_1
         %26 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %27 = OpLoad %float %26
         %29 = OpFOrdGreaterThan %bool %27 %float_n1
               OpSelectionMerge %31 None
               OpBranchConditional %29 %30 %31
         %30 = OpLabel
         %32 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %33 = OpLoad %float %32
         %34 = OpFOrdLessThan %bool %33 %float_1
               OpBranch %31
         %31 = OpLabel
         %35 = OpPhi %bool %29 %15 %34 %30
               OpSelectionMerge %37 None
               OpBranchConditional %35 %36 %37
         %36 = OpLabel
         %43 = OpLoad %40 %shadowMap
         %44 = OpLoad %v4float %shadowCoord
         %45 = OpVectorShuffle %v2float %44 %44 0 1
         %46 = OpLoad %v2float %off
         %47 = OpFAdd %v2float %45 %46
         %48 = OpImageSampleImplicitLod %v4float %43 %47
         %50 = OpCompositeExtract %float %48 0
               OpStore %dist %50
         %52 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_3
         %53 = OpLoad %float %52
         %55 = OpFOrdGreaterThan %bool %53 %float_0
               OpSelectionMerge %57 None
               OpBranchConditional %55 %56 %57
         %56 = OpLabel
         %58 = OpLoad %float %dist
         %59 = OpAccessChain %_ptr_Function_float %shadowCoord %uint_2
         %60 = OpLoad %float %59
         %61 = OpFOrdLessThan %bool %58 %60
               OpBranch %57
         %57 = OpLabel
         %62 = OpPhi %bool %55 %36 %61 %56
               OpSelectionMerge %64 None
               OpBranchConditional %62 %63 %64
         %63 = OpLabel
               OpStore %shadow %float_0_100000001
               OpBranch %64
         %64 = OpLabel
               OpBranch %37
         %37 = OpLabel
         %66 = OpLoad %float %shadow
               OpReturnValue %66
               OpFunctionEnd
%filterPCF_vf4_ = OpFunction %float None %16
         %sc = OpFunctionParameter %_ptr_Function_v4float
         %19 = OpLabel
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
         %73 = OpLoad %40 %shadowMap
         %75 = OpImage %39 %73
         %76 = OpImageQuerySizeLod %v2int %75 %int_0
               OpStore %texDim %76
               OpStore %scale %float_1_5
         %80 = OpLoad %float %scale
         %81 = OpFMul %float %80 %float_1
         %83 = OpAccessChain %_ptr_Function_int %texDim %uint_0
         %84 = OpLoad %int %83
         %85 = OpConvertSToF %float %84
         %86 = OpFDiv %float %81 %85
               OpStore %dx %86
         %88 = OpLoad %float %scale
         %89 = OpFMul %float %88 %float_1
         %91 = OpAccessChain %_ptr_Function_int %texDim %uint_1
         %92 = OpLoad %int %91
         %93 = OpConvertSToF %float %92
         %94 = OpFDiv %float %89 %93
               OpStore %dy %94
               OpStore %shadowFactor %float_0
               OpStore %count %int_0
               OpStore %range %int_1
        %100 = OpLoad %int %range
        %101 = OpSNegate %int %100
               OpStore %x %101
               OpBranch %102
        %102 = OpLabel
               OpLoopMerge %104 %105 None
               OpBranch %106
        %106 = OpLabel
        %107 = OpLoad %int %x
        %108 = OpLoad %int %range
        %109 = OpSLessThanEqual %bool %107 %108
               OpBranchConditional %109 %103 %104
        %103 = OpLabel
        %111 = OpLoad %int %range
        %112 = OpSNegate %int %111
               OpStore %y %112
               OpBranch %113
        %113 = OpLabel
               OpLoopMerge %115 %116 None
               OpBranch %117
        %117 = OpLabel
        %118 = OpLoad %int %y
        %119 = OpLoad %int %range
        %120 = OpSLessThanEqual %bool %118 %119
               OpBranchConditional %120 %114 %115
        %114 = OpLabel
        %121 = OpLoad %float %dx
        %122 = OpLoad %int %x
        %123 = OpConvertSToF %float %122
        %124 = OpFMul %float %121 %123
        %125 = OpLoad %float %dy
        %126 = OpLoad %int %y
        %127 = OpConvertSToF %float %126
        %128 = OpFMul %float %125 %127
        %129 = OpCompositeConstruct %v2float %124 %128
        %131 = OpLoad %v4float %sc
               OpStore %param %131
               OpStore %param_0 %129
        %133 = OpFunctionCall %float %textureProj_vf4_vf2_ %param %param_0
        %134 = OpLoad %float %shadowFactor
        %135 = OpFAdd %float %134 %133
               OpStore %shadowFactor %135
        %136 = OpLoad %int %count
        %137 = OpIAdd %int %136 %int_1
               OpStore %count %137
               OpBranch %116
        %116 = OpLabel
        %138 = OpLoad %int %y
        %139 = OpIAdd %int %138 %int_1
               OpStore %y %139
               OpBranch %113
        %115 = OpLabel
               OpBranch %105
        %105 = OpLabel
        %140 = OpLoad %int %x
        %141 = OpIAdd %int %140 %int_1
               OpStore %x %141
               OpBranch %102
        %104 = OpLabel
        %142 = OpLoad %float %shadowFactor
        %143 = OpLoad %int %count
        %144 = OpConvertSToF %float %143
        %145 = OpFDiv %float %142 %144
               OpReturnValue %145
               OpFunctionEnd
