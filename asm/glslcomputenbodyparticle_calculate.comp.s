; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 181
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID %gl_LocalInvocationID
               OpExecutionMode %main LocalSize 256 1 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %index "index"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "deltaT"
               OpMemberName %UBO 1 "particleCount"
               OpName %ubo "ubo"
               OpName %position "position"
               OpName %Particle "Particle"
               OpMemberName %Particle 0 "pos"
               OpMemberName %Particle 1 "vel"
               OpName %Pos "Pos"
               OpMemberName %Pos 0 "particles"
               OpName %_ ""
               OpName %velocity "velocity"
               OpName %acceleration "acceleration"
               OpName %i "i"
               OpName %gl_LocalInvocationID "gl_LocalInvocationID"
               OpName %SHARED_DATA_SIZE "SHARED_DATA_SIZE"
               OpName %sharedData "sharedData"
               OpName %j "j"
               OpName %other "other"
               OpName %len "len"
               OpName %GRAVITY "GRAVITY"
               OpName %SOFTEN "SOFTEN"
               OpName %POWER "POWER"
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 1 Offset 4
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 1
               OpMemberDecorate %Particle 0 Offset 0
               OpMemberDecorate %Particle 1 Offset 16
               OpDecorate %_runtimearr_Particle ArrayStride 32
               OpMemberDecorate %Pos 0 Offset 0
               OpDecorate %Pos BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 0
               OpDecorate %gl_LocalInvocationID BuiltIn LocalInvocationId
               OpDecorate %SHARED_DATA_SIZE SpecId 0
               OpDecorate %GRAVITY SpecId 1
               OpDecorate %SOFTEN SpecId 3
               OpDecorate %POWER SpecId 2
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
     %v3uint = OpTypeVector %uint 3
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_uint = OpTypePointer Input %uint
      %float = OpTypeFloat 32
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Uniform_int = OpTypePointer Uniform %int
       %bool = OpTypeBool
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
   %Particle = OpTypeStruct %v4float %v4float
%_runtimearr_Particle = OpTypeRuntimeArray %Particle
        %Pos = OpTypeStruct %_runtimearr_Particle
%_ptr_Uniform_Pos = OpTypePointer Uniform %Pos
          %_ = OpVariable %_ptr_Uniform_Pos Uniform
      %int_0 = OpConstant %int 0
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
    %float_0 = OpConstant %float 0
         %51 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
%_ptr_Function_int = OpTypePointer Function %int
%gl_LocalInvocationID = OpVariable %_ptr_Input_v3uint Input
%SHARED_DATA_SIZE = OpSpecConstant %int 512
%_arr_v4float_SHARED_DATA_SIZE = OpTypeArray %v4float %SHARED_DATA_SIZE
%_ptr_Workgroup__arr_v4float_SHARED_DATA_SIZE = OpTypePointer Workgroup %_arr_v4float_SHARED_DATA_SIZE
 %sharedData = OpVariable %_ptr_Workgroup__arr_v4float_SHARED_DATA_SIZE Workgroup
%_ptr_Workgroup_v4float = OpTypePointer Workgroup %v4float
     %uint_1 = OpConstant %uint 1
   %uint_264 = OpConstant %uint 264
     %uint_2 = OpConstant %uint 2
   %uint_256 = OpConstant %uint 256
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %GRAVITY = OpSpecConstant %float 0.00200000009
     %uint_3 = OpConstant %uint 3
%_ptr_Function_float = OpTypePointer Function %float
     %SOFTEN = OpSpecConstant %float 0.00749999983
      %POWER = OpSpecConstant %float 0.75
%_ptr_Uniform_float = OpTypePointer Uniform %float
%float_0_100000001 = OpConstant %float 0.100000001
    %float_1 = OpConstant %float 1
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_256 %uint_1 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
      %index = OpVariable %_ptr_Function_uint Function
   %position = OpVariable %_ptr_Function_v4float Function
   %velocity = OpVariable %_ptr_Function_v4float Function
%acceleration = OpVariable %_ptr_Function_v4float Function
          %i = OpVariable %_ptr_Function_int Function
          %j = OpVariable %_ptr_Function_int Function
      %other = OpVariable %_ptr_Function_v4float Function
        %len = OpVariable %_ptr_Function_v3float Function
         %14 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_0
         %15 = OpLoad %uint %14
               OpStore %index %15
         %16 = OpLoad %uint %index
         %24 = OpAccessChain %_ptr_Uniform_int %ubo %int_1
         %25 = OpLoad %int %24
         %26 = OpBitcast %uint %25
         %28 = OpUGreaterThanEqual %bool %16 %26
               OpSelectionMerge %30 None
               OpBranchConditional %28 %29 %30
         %29 = OpLabel
               OpReturn
         %30 = OpLabel
         %41 = OpLoad %uint %index
         %43 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %41 %int_0
         %44 = OpLoad %v4float %43
               OpStore %position %44
         %46 = OpLoad %uint %index
         %47 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %46 %int_1
         %48 = OpLoad %v4float %47
               OpStore %velocity %48
               OpStore %acceleration %51
               OpStore %i %int_0
               OpBranch %54
         %54 = OpLabel
               OpLoopMerge %56 %57 None
               OpBranch %58
         %58 = OpLabel
         %59 = OpLoad %int %i
         %60 = OpAccessChain %_ptr_Uniform_int %ubo %int_1
         %61 = OpLoad %int %60
         %62 = OpSLessThan %bool %59 %61
               OpBranchConditional %62 %55 %56
         %55 = OpLabel
         %63 = OpLoad %int %i
         %64 = OpBitcast %uint %63
         %66 = OpAccessChain %_ptr_Input_uint %gl_LocalInvocationID %uint_0
         %67 = OpLoad %uint %66
         %68 = OpIAdd %uint %64 %67
         %69 = OpAccessChain %_ptr_Uniform_int %ubo %int_1
         %70 = OpLoad %int %69
         %71 = OpBitcast %uint %70
         %72 = OpULessThan %bool %68 %71
               OpSelectionMerge %74 None
               OpBranchConditional %72 %73 %90
         %73 = OpLabel
         %79 = OpAccessChain %_ptr_Input_uint %gl_LocalInvocationID %uint_0
         %80 = OpLoad %uint %79
         %81 = OpLoad %int %i
         %82 = OpBitcast %uint %81
         %83 = OpAccessChain %_ptr_Input_uint %gl_LocalInvocationID %uint_0
         %84 = OpLoad %uint %83
         %85 = OpIAdd %uint %82 %84
         %86 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %85 %int_0
         %87 = OpLoad %v4float %86
         %89 = OpAccessChain %_ptr_Workgroup_v4float %sharedData %80
               OpStore %89 %87
               OpBranch %74
         %90 = OpLabel
         %91 = OpAccessChain %_ptr_Input_uint %gl_LocalInvocationID %uint_0
         %92 = OpLoad %uint %91
         %93 = OpAccessChain %_ptr_Workgroup_v4float %sharedData %92
               OpStore %93 %51
               OpBranch %74
         %74 = OpLabel
               OpMemoryBarrier %uint_1 %uint_264
               OpControlBarrier %uint_2 %uint_2 %uint_264
               OpStore %j %int_0
               OpBranch %98
         %98 = OpLabel
               OpLoopMerge %100 %101 None
               OpBranch %102
        %102 = OpLabel
        %103 = OpLoad %int %j
        %104 = OpBitcast %uint %103
        %106 = OpULessThan %bool %104 %uint_256
               OpBranchConditional %106 %99 %100
         %99 = OpLabel
        %108 = OpLoad %int %j
        %109 = OpAccessChain %_ptr_Workgroup_v4float %sharedData %108
        %110 = OpLoad %v4float %109
               OpStore %other %110
        %114 = OpLoad %v4float %other
        %115 = OpVectorShuffle %v3float %114 %114 0 1 2
        %116 = OpLoad %v4float %position
        %117 = OpVectorShuffle %v3float %116 %116 0 1 2
        %118 = OpFSub %v3float %115 %117
               OpStore %len %118
        %120 = OpLoad %v3float %len
        %121 = OpVectorTimesScalar %v3float %120 %GRAVITY
        %124 = OpAccessChain %_ptr_Function_float %other %uint_3
        %125 = OpLoad %float %124
        %126 = OpVectorTimesScalar %v3float %121 %125
        %127 = OpLoad %v3float %len
        %128 = OpLoad %v3float %len
        %129 = OpDot %float %127 %128
        %131 = OpFAdd %float %129 %SOFTEN
        %133 = OpExtInst %float %1 Pow %131 %POWER
        %134 = OpCompositeConstruct %v3float %133 %133 %133
        %135 = OpFDiv %v3float %126 %134
        %136 = OpLoad %v4float %acceleration
        %137 = OpVectorShuffle %v3float %136 %136 0 1 2
        %138 = OpFAdd %v3float %137 %135
        %139 = OpLoad %v4float %acceleration
        %140 = OpVectorShuffle %v4float %139 %138 4 5 6 3
               OpStore %acceleration %140
               OpBranch %101
        %101 = OpLabel
        %141 = OpLoad %int %j
        %142 = OpIAdd %int %141 %int_1
               OpStore %j %142
               OpBranch %98
        %100 = OpLabel
               OpMemoryBarrier %uint_1 %uint_264
               OpControlBarrier %uint_2 %uint_2 %uint_264
               OpBranch %57
         %57 = OpLabel
        %143 = OpLoad %int %i
        %144 = OpIAdd %int %143 %SHARED_DATA_SIZE
               OpStore %i %144
               OpBranch %54
         %56 = OpLabel
        %145 = OpLoad %uint %index
        %147 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %148 = OpLoad %float %147
        %149 = OpLoad %v4float %acceleration
        %150 = OpVectorShuffle %v3float %149 %149 0 1 2
        %151 = OpVectorTimesScalar %v3float %150 %148
        %152 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %145 %int_1
        %153 = OpLoad %v4float %152
        %154 = OpVectorShuffle %v3float %153 %153 0 1 2
        %155 = OpFAdd %v3float %154 %151
        %156 = OpAccessChain %_ptr_Uniform_v4float %_ %int_0 %145 %int_1
        %157 = OpLoad %v4float %156
        %158 = OpVectorShuffle %v4float %157 %155 4 5 6 3
               OpStore %156 %158
        %159 = OpLoad %uint %index
        %161 = OpAccessChain %_ptr_Uniform_float %ubo %int_0
        %162 = OpLoad %float %161
        %163 = OpFMul %float %float_0_100000001 %162
        %164 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %159 %int_1 %uint_3
        %165 = OpLoad %float %164
        %166 = OpFAdd %float %165 %163
        %167 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %159 %int_1 %uint_3
               OpStore %167 %166
        %168 = OpLoad %uint %index
        %169 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %168 %int_1 %uint_3
        %170 = OpLoad %float %169
        %172 = OpFOrdGreaterThan %bool %170 %float_1
               OpSelectionMerge %174 None
               OpBranchConditional %172 %173 %174
        %173 = OpLabel
        %175 = OpLoad %uint %index
        %176 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %175 %int_1 %uint_3
        %177 = OpLoad %float %176
        %178 = OpFSub %float %177 %float_1
        %179 = OpAccessChain %_ptr_Uniform_float %_ %int_0 %175 %int_1 %uint_3
               OpStore %179 %178
               OpBranch %174
        %174 = OpLabel
               OpReturn
               OpFunctionEnd
