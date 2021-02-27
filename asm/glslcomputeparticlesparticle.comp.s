; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 211
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID
               OpExecutionMode %main LocalSize 256 1 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %attraction_vf2_vf2_ "attraction(vf2;vf2;"
               OpName %pos "pos"
               OpName %attractPos "attractPos"
               OpName %repulsion_vf2_vf2_ "repulsion(vf2;vf2;"
               OpName %pos_0 "pos"
               OpName %attractPos_0 "attractPos"
               OpName %delta "delta"
               OpName %dDampedDot "dDampedDot"
               OpName %invDist "invDist"
               OpName %invDistCubed "invDistCubed"
               OpName %delta_0 "delta"
               OpName %targetDistance "targetDistance"
               OpName %index "index"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "deltaT"
               OpMemberName %UBO 1 "destX"
               OpMemberName %UBO 2 "destY"
               OpMemberName %UBO 3 "particleCount"
               OpName %ubo "ubo"
               OpName %vVel "vVel"
               OpName %Particle "Particle"
               OpMemberName %Particle 0 "pos"
               OpMemberName %Particle 1 "vel"
               OpMemberName %Particle 2 "gradientPos"
               OpName %Pos "Pos"
               OpMemberName %Pos 0 "particles"
               OpName %_ ""
               OpName %vPos "vPos"
               OpName %destPos "destPos"
               OpName %delta_1 "delta"
               OpName %targetDistance_0 "targetDistance"
               OpName %param "param"
               OpName %param_0 "param"
               OpName %param_1 "param"
               OpName %param_2 "param"
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpMemberDecorate %UBO 2 Offset 8
               OpMemberDecorate %UBO 3 Offset 12
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpMemberDecorate %Particle 0 Offset 0
               OpMemberDecorate %Particle 1 Offset 8
               OpMemberDecorate %Particle 2 Offset 16
               OpDecorate %_runtimearr_Particle ArrayStride 32
               OpMemberDecorate %Pos 0 Offset 0
               OpDecorate %Pos BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 0
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
          %9 = OpTypeFunction %v2float %_ptr_Function_v2float %_ptr_Function_v2float
%_ptr_Function_float = OpTypePointer Function %float
  %float_0_5 = OpConstant %float 0.5
    %float_1 = OpConstant %float 1
%float_0_00350000011 = OpConstant %float 0.00350000011
%float_n3_50000009en05 = OpConstant %float -3.50000009e-05
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
     %v3uint = OpTypeVector %uint 3
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_uint = OpTypePointer Input %uint
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %float %float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
%_ptr_Uniform_int = OpTypePointer Uniform %int
       %bool = OpTypeBool
    %v4float = OpTypeVector %float 4
   %Particle = OpTypeStruct %v2float %v2float %v4float
%_runtimearr_Particle = OpTypeRuntimeArray %Particle
        %Pos = OpTypeStruct %_runtimearr_Particle
%_ptr_Uniform_Pos = OpTypePointer Uniform %Pos
          %_ = OpVariable %_ptr_Uniform_Pos Uniform
      %int_0 = OpConstant %int 0
      %int_1 = OpConstant %int 1
%_ptr_Uniform_v2float = OpTypePointer Uniform %v2float
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %int_2 = OpConstant %int 2
%float_0_0500000007 = OpConstant %float 0.0500000007
   %float_n1 = OpConstant %float -1
     %uint_1 = OpConstant %uint 1
%float_0_100000001 = OpConstant %float 0.100000001
   %float_12 = OpConstant %float 12
%float_0_0199999996 = OpConstant %float 0.0199999996
   %uint_256 = OpConstant %uint 256
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_256 %uint_1 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
      %index = OpVariable %_ptr_Function_uint Function
       %vVel = OpVariable %_ptr_Function_v2float Function
       %vPos = OpVariable %_ptr_Function_v2float Function
    %destPos = OpVariable %_ptr_Function_v2float Function
    %delta_1 = OpVariable %_ptr_Function_v2float Function
%targetDistance_0 = OpVariable %_ptr_Function_float Function
      %param = OpVariable %_ptr_Function_v2float Function
    %param_0 = OpVariable %_ptr_Function_v2float Function
    %param_1 = OpVariable %_ptr_Function_v2float Function
    %param_2 = OpVariable %_ptr_Function_v2float Function
         %76 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_0
         %77 = OpLoad %uint %76
               OpStore %index %77
         %78 = OpLoad %uint %index
         %85 = OpAccessChain %_ptr_Uniform_int %ubo %int_3
         %86 = OpLoad %int %85
         %87 = OpBitcast %uint %86
         %89 = OpUGreaterThanEqual %bool %78 %87
               OpSelectionMerge %91 None
               OpBranchConditional %89 %90 %91
         %90 = OpLabel
               OpReturn
         %91 = OpLabel
        %101 = OpLoad %uint %index
        %104 = OpAccessChain %_ptr_Uniform_v2float %_ %int_0 %101 %int_1
        %105 = OpLoad %v2float %104
               OpStore %vVel %105
        %107 = OpLoad %uint %index
        %108 = OpAccessChain %_ptr_Uniform_v2float %_ %int_0 %107 %int_0
        %109 = OpLoad %v2float %108
               OpStore %vPos %109
        %112 = OpAccessChain %_ptr_Uniform_float %ubo %int_1
        %113 = OpLoad %float %112
        %115 = OpAccessChain %_ptr_Uniform_float %ubo %int_2
        %116 = OpLoad %float %115
        %117 = OpCompositeConstruct %v2float %113 %116
               OpStore %destPos %117
        %119 = OpLoad %v2float %destPos
        %120 = OpLoad %v2float %vPos
        %121 = OpFSub %v2float %119 %120
               OpStore %delta_1 %121
        %123 = OpLoad %v2float %delta_1
        %124 = OpLoad %v2float %delta_1
        %125 = OpDot %float %123 %124
        %126 = OpExtInst %float %1 Sqrt %125
               OpStore %targetDistance_0 %126
        %128 = OpLoad %v2float %vPos
               OpStore %param %128
        %130 = OpLoad %v2float %destPos
               OpStore %param_0 %130
        %131 = OpFunctionCall %v2float %repulsion_vf2_vf2_ %param %param_0
        %133 = OpVectorTimesScalar %v2float %131 %float_0_0500000007
        %134 = OpLoad %v2float %vVel
        %135 = OpFAdd %v2float %134 %133
               OpStore %vVel %135
        %136 = OpLoad %v2float %vVel
        %137 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %138 = OpLoad %float %137
        %139 = OpVectorTimesScalar %v2float %136 %138
        %140 = OpLoad %v2float %vPos
        %141 = OpFAdd %v2float %140 %139
               OpStore %vPos %141
        %142 = OpAccessChain %_ptr_Function_float %vPos %uint_0
        %143 = OpLoad %float %142
        %145 = OpFOrdLessThan %bool %143 %float_n1
        %146 = OpLogicalNot %bool %145
               OpSelectionMerge %148 None
               OpBranchConditional %146 %147 %148
        %147 = OpLabel
        %149 = OpAccessChain %_ptr_Function_float %vPos %uint_0
        %150 = OpLoad %float %149
        %151 = OpFOrdGreaterThan %bool %150 %float_1
               OpBranch %148
        %148 = OpLabel
        %152 = OpPhi %bool %145 %91 %151 %147
        %153 = OpLogicalNot %bool %152
               OpSelectionMerge %155 None
               OpBranchConditional %153 %154 %155
        %154 = OpLabel
        %157 = OpAccessChain %_ptr_Function_float %vPos %uint_1
        %158 = OpLoad %float %157
        %159 = OpFOrdLessThan %bool %158 %float_n1
               OpBranch %155
        %155 = OpLabel
        %160 = OpPhi %bool %152 %148 %159 %154
        %161 = OpLogicalNot %bool %160
               OpSelectionMerge %163 None
               OpBranchConditional %161 %162 %163
        %162 = OpLabel
        %164 = OpAccessChain %_ptr_Function_float %vPos %uint_1
        %165 = OpLoad %float %164
        %166 = OpFOrdGreaterThan %bool %165 %float_1
               OpBranch %163
        %163 = OpLabel
        %167 = OpPhi %bool %160 %155 %166 %162
               OpSelectionMerge %169 None
               OpBranchConditional %167 %168 %182
        %168 = OpLabel
        %170 = OpLoad %v2float %vVel
        %171 = OpFNegate %v2float %170
        %173 = OpVectorTimesScalar %v2float %171 %float_0_100000001
        %175 = OpLoad %v2float %vPos
               OpStore %param_1 %175
        %177 = OpLoad %v2float %destPos
               OpStore %param_2 %177
        %178 = OpFunctionCall %v2float %attraction_vf2_vf2_ %param_1 %param_2
        %180 = OpVectorTimesScalar %v2float %178 %float_12
        %181 = OpFAdd %v2float %173 %180
               OpStore %vVel %181
               OpBranch %169
        %182 = OpLabel
        %183 = OpLoad %uint %index
        %184 = OpLoad %v2float %vPos
        %185 = OpAccessChain %_ptr_Uniform_v2float %_ %int_0 %183 %int_0
               OpStore %185 %184
               OpBranch %169
        %169 = OpLabel
        %186 = OpLoad %uint %index
        %187 = OpLoad %v2float %vVel
        %188 = OpAccessChain %_ptr_Uniform_v2float %_ %int_0 %186 %int_1
               OpStore %188 %187
        %189 = OpLoad %uint %index
        %191 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %192 = OpLoad %float %191
        %193 = OpFMul %float %float_0_0199999996 %192
        %194 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %189 %int_2 %uint_0
        %195 = OpLoad %float %194
        %196 = OpFAdd %float %195 %193
        %197 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %189 %int_2 %uint_0
               OpStore %197 %196
        %198 = OpLoad %uint %index
        %199 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %198 %int_2 %uint_0
        %200 = OpLoad %float %199
        %201 = OpFOrdGreaterThan %bool %200 %float_1
               OpSelectionMerge %203 None
               OpBranchConditional %201 %202 %203
        %202 = OpLabel
        %204 = OpLoad %uint %index
        %205 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %204 %int_2 %uint_0
        %206 = OpLoad %float %205
        %207 = OpFSub %float %206 %float_1
        %208 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %204 %int_2 %uint_0
               OpStore %208 %207
               OpBranch %203
        %203 = OpLabel
               OpReturn
               OpFunctionEnd
%attraction_vf2_vf2_ = OpFunction %v2float None %9
        %pos = OpFunctionParameter %_ptr_Function_v2float
 %attractPos = OpFunctionParameter %_ptr_Function_v2float
         %13 = OpLabel
      %delta = OpVariable %_ptr_Function_v2float Function
 %dDampedDot = OpVariable %_ptr_Function_float Function
    %invDist = OpVariable %_ptr_Function_float Function
%invDistCubed = OpVariable %_ptr_Function_float Function
         %19 = OpLoad %v2float %attractPos
         %20 = OpLoad %v2float %pos
         %21 = OpFSub %v2float %19 %20
               OpStore %delta %21
         %24 = OpLoad %v2float %delta
         %25 = OpLoad %v2float %delta
         %26 = OpDot %float %24 %25
         %28 = OpFAdd %float %26 %float_0_5
               OpStore %dDampedDot %28
         %31 = OpLoad %float %dDampedDot
         %32 = OpExtInst %float %1 Sqrt %31
         %33 = OpFDiv %float %float_1 %32
               OpStore %invDist %33
         %35 = OpLoad %float %invDist
         %36 = OpLoad %float %invDist
         %37 = OpFMul %float %35 %36
         %38 = OpLoad %float %invDist
         %39 = OpFMul %float %37 %38
               OpStore %invDistCubed %39
         %40 = OpLoad %v2float %delta
         %41 = OpLoad %float %invDistCubed
         %42 = OpVectorTimesScalar %v2float %40 %41
         %44 = OpVectorTimesScalar %v2float %42 %float_0_00350000011
               OpReturnValue %44
               OpFunctionEnd
%repulsion_vf2_vf2_ = OpFunction %v2float None %9
      %pos_0 = OpFunctionParameter %_ptr_Function_v2float
%attractPos_0 = OpFunctionParameter %_ptr_Function_v2float
         %17 = OpLabel
    %delta_0 = OpVariable %_ptr_Function_v2float Function
%targetDistance = OpVariable %_ptr_Function_float Function
         %48 = OpLoad %v2float %attractPos_0
         %49 = OpLoad %v2float %pos_0
         %50 = OpFSub %v2float %48 %49
               OpStore %delta_0 %50
         %52 = OpLoad %v2float %delta_0
         %53 = OpLoad %v2float %delta_0
         %54 = OpDot %float %52 %53
         %55 = OpExtInst %float %1 Sqrt %54
               OpStore %targetDistance %55
         %56 = OpLoad %v2float %delta_0
         %57 = OpLoad %float %targetDistance
         %58 = OpLoad %float %targetDistance
         %59 = OpFMul %float %57 %58
         %60 = OpLoad %float %targetDistance
         %61 = OpFMul %float %59 %60
         %62 = OpFDiv %float %float_1 %61
         %63 = OpVectorTimesScalar %v2float %56 %62
         %65 = OpVectorTimesScalar %v2float %63 %float_n3_50000009en05
               OpReturnValue %65
               OpFunctionEnd
