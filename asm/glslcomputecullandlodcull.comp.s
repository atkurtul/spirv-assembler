; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 186
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID %gl_NumWorkGroups
               OpExecutionMode %main LocalSize 16 1 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %frustumCheck_vf4_f1_ "frustumCheck(vf4;f1;"
               OpName %pos "pos"
               OpName %radius "radius"
               OpName %i "i"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "cameraPos"
               OpMemberName %UBO 3 "frustumPlanes"
               OpName %ubo "ubo"
               OpName %idx "idx"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %gl_NumWorkGroups "gl_NumWorkGroups"
               OpName %MAX_LOD_LEVEL "MAX_LOD_LEVEL"
               OpName %UBOOut "UBOOut"
               OpMemberName %UBOOut 0 "drawCount"
               OpMemberName %UBOOut 1 "lodCount"
               OpName %uboOut "uboOut"
               OpName %i_0 "i"
               OpName %pos_0 "pos"
               OpName %InstanceData "InstanceData"
               OpMemberName %InstanceData 0 "pos"
               OpMemberName %InstanceData 1 "scale"
               OpName %Instances "Instances"
               OpMemberName %Instances 0 "instances"
               OpName %_ ""
               OpName %param "param"
               OpName %param_0 "param"
               OpName %IndexedIndirectCommand "IndexedIndirectCommand"
               OpMemberName %IndexedIndirectCommand 0 "indexCount"
               OpMemberName %IndexedIndirectCommand 1 "instanceCount"
               OpMemberName %IndexedIndirectCommand 2 "firstIndex"
               OpMemberName %IndexedIndirectCommand 3 "vertexOffset"
               OpMemberName %IndexedIndirectCommand 4 "firstInstance"
               OpName %IndirectDraws "IndirectDraws"
               OpMemberName %IndirectDraws 0 "indirectDraws"
               OpName %__0 ""
               OpName %lodLevel "lodLevel"
               OpName %i_1 "i"
               OpName %LOD "LOD"
               OpMemberName %LOD 0 "firstIndex"
               OpMemberName %LOD 1 "indexCount"
               OpMemberName %LOD 2 "distance"
               OpMemberName %LOD 3 "_pad0"
               OpName %LODs "LODs"
               OpMemberName %LODs 0 "lods"
               OpName %__1 ""
               OpDecorate %_arr_v4float_uint_6 ArrayStride 16
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 144
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 2
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpDecorate %gl_NumWorkGroups BuiltIn NumWorkgroups
               OpDecorate %MAX_LOD_LEVEL SpecId 0
               OpDecorate %_arr_uint_80 ArrayStride 4
               OpMemberDecorate %UBOOut 0 Offset 0
               OpMemberDecorate %UBOOut 1 Offset 4
               OpDecorate %UBOOut BufferBlock
               OpDecorate %uboOut DescriptorSet 0
               OpDecorate %uboOut Binding 3
               OpMemberDecorate %InstanceData 0 Offset 0
               OpMemberDecorate %InstanceData 1 Offset 12
               OpDecorate %_runtimearr_InstanceData ArrayStride 16
               OpMemberDecorate %Instances 0 Offset 0
               OpDecorate %Instances BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 0
               OpMemberDecorate %IndexedIndirectCommand 0 Offset 0
               OpMemberDecorate %IndexedIndirectCommand 1 Offset 4
               OpMemberDecorate %IndexedIndirectCommand 2 Offset 8
               OpMemberDecorate %IndexedIndirectCommand 3 Offset 12
               OpMemberDecorate %IndexedIndirectCommand 4 Offset 16
               OpDecorate %_runtimearr_IndexedIndirectCommand ArrayStride 20
               OpMemberDecorate %IndirectDraws 0 NonReadable
               OpMemberDecorate %IndirectDraws 0 Offset 0
               OpDecorate %IndirectDraws BufferBlock
               OpDecorate %__0 DescriptorSet 0
               OpDecorate %__0 Binding 1
               OpMemberDecorate %LOD 0 Offset 0
               OpMemberDecorate %LOD 1 Offset 4
               OpMemberDecorate %LOD 2 Offset 8
               OpMemberDecorate %LOD 3 Offset 12
               OpDecorate %_runtimearr_LOD ArrayStride 16
               OpMemberDecorate %LODs 0 NonWritable
               OpMemberDecorate %LODs 0 Offset 0
               OpDecorate %LODs BufferBlock
               OpDecorate %__1 DescriptorSet 0
               OpDecorate %__1 Binding 4
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Function_float = OpTypePointer Function %float
       %bool = OpTypeBool
         %11 = OpTypeFunction %bool %_ptr_Function_v4float %_ptr_Function_float
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %int_6 = OpConstant %int 6
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_6 = OpConstant %uint 6
%_arr_v4float_uint_6 = OpTypeArray %v4float %uint_6
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float %_arr_v4float_uint_6
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
    %float_0 = OpConstant %float 0
      %false = OpConstantFalse %bool
      %int_1 = OpConstant %int 1
       %true = OpConstantTrue %bool
%_ptr_Function_uint = OpTypePointer Function %uint
     %v3uint = OpTypeVector %uint 3
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_uint = OpTypePointer Input %uint
     %uint_1 = OpConstant %uint 1
%gl_NumWorkGroups = OpVariable %_ptr_Input_v3uint Input
    %uint_16 = OpConstant %uint 16
%MAX_LOD_LEVEL = OpSpecConstant %int 5
         %80 = OpSpecConstantOp %int IAdd %MAX_LOD_LEVEL %int_1
%_arr_uint_80 = OpTypeArray %uint %80
     %UBOOut = OpTypeStruct %uint %_arr_uint_80
%_ptr_Uniform_UBOOut = OpTypePointer Uniform %UBOOut
     %uboOut = OpVariable %_ptr_Uniform_UBOOut Uniform
%_ptr_Uniform_uint = OpTypePointer Uniform %uint
         %95 = OpSpecConstantOp %int IAdd %MAX_LOD_LEVEL %int_1
         %96 = OpSpecConstantOp %uint IAdd %95 %uint_0
    %v3float = OpTypeVector %float 3
%InstanceData = OpTypeStruct %v3float %float
%_runtimearr_InstanceData = OpTypeRuntimeArray %InstanceData
  %Instances = OpTypeStruct %_runtimearr_InstanceData
%_ptr_Uniform_Instances = OpTypePointer Uniform %Instances
          %_ = OpVariable %_ptr_Uniform_Instances Uniform
%_ptr_Uniform_v3float = OpTypePointer Uniform %v3float
    %float_1 = OpConstant %float 1
%IndexedIndirectCommand = OpTypeStruct %uint %uint %uint %uint %uint
%_runtimearr_IndexedIndirectCommand = OpTypeRuntimeArray %IndexedIndirectCommand
%IndirectDraws = OpTypeStruct %_runtimearr_IndexedIndirectCommand
%_ptr_Uniform_IndirectDraws = OpTypePointer Uniform %IndirectDraws
        %__0 = OpVariable %_ptr_Uniform_IndirectDraws Uniform
        %135 = OpSpecConstantOp %uint IAdd %MAX_LOD_LEVEL %uint_0
        %143 = OpSpecConstantOp %uint IAdd %MAX_LOD_LEVEL %uint_0
      %int_2 = OpConstant %int 2
        %LOD = OpTypeStruct %uint %uint %float %float
%_runtimearr_LOD = OpTypeRuntimeArray %LOD
       %LODs = OpTypeStruct %_runtimearr_LOD
%_ptr_Uniform_LODs = OpTypePointer Uniform %LODs
        %__1 = OpVariable %_ptr_Uniform_LODs Uniform
%_ptr_Uniform_float = OpTypePointer Uniform %float
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_16 %uint_1 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
        %idx = OpVariable %_ptr_Function_uint Function
        %i_0 = OpVariable %_ptr_Function_uint Function
      %pos_0 = OpVariable %_ptr_Function_v4float Function
      %param = OpVariable %_ptr_Function_v4float Function
    %param_0 = OpVariable %_ptr_Function_float Function
   %lodLevel = OpVariable %_ptr_Function_uint Function
        %i_1 = OpVariable %_ptr_Function_uint Function
         %63 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_0
         %64 = OpLoad %uint %63
         %66 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_1
         %67 = OpLoad %uint %66
         %69 = OpAccessChain %_ptr_Input_uint %gl_NumWorkGroups %uint_0
         %70 = OpLoad %uint %69
         %71 = OpIMul %uint %67 %70
         %73 = OpIMul %uint %71 %uint_16
         %74 = OpIAdd %uint %64 %73
               OpStore %idx %74
         %75 = OpLoad %uint %idx
         %76 = OpIEqual %bool %75 %uint_0
               OpSelectionMerge %78 None
               OpBranchConditional %76 %77 %78
         %77 = OpLabel
         %86 = OpAccessChain %_ptr_Uniform_uint %uboOut %int_0
         %87 = OpAtomicExchange %uint %86 %uint_1 %uint_0 %uint_0
               OpStore %i_0 %uint_0
               OpBranch %89
         %89 = OpLabel
               OpLoopMerge %91 %92 None
               OpBranch %93
         %93 = OpLabel
         %94 = OpLoad %uint %i_0
         %97 = OpULessThan %bool %94 %96
               OpBranchConditional %97 %90 %91
         %90 = OpLabel
         %98 = OpLoad %uint %i_0
         %99 = OpAccessChain %_ptr_Uniform_uint %uboOut %int_1 %98
        %100 = OpAtomicExchange %uint %99 %uint_1 %uint_0 %uint_0
               OpBranch %92
         %92 = OpLabel
        %101 = OpLoad %uint %i_0
        %102 = OpIAdd %uint %101 %int_1
               OpStore %i_0 %102
               OpBranch %89
         %91 = OpLabel
               OpBranch %78
         %78 = OpLabel
        %110 = OpLoad %uint %idx
        %112 = OpAccessChain %_ptr_Uniform_v3float %_ %int_0 %110 %int_0
        %113 = OpLoad %v3float %112
        %115 = OpCompositeExtract %float %113 0
        %116 = OpCompositeExtract %float %113 1
        %117 = OpCompositeExtract %float %113 2
        %118 = OpCompositeConstruct %v4float %115 %116 %117 %float_1
               OpStore %pos_0 %118
        %120 = OpLoad %v4float %pos_0
               OpStore %param %120
               OpStore %param_0 %float_1
        %122 = OpFunctionCall %bool %frustumCheck_vf4_f1_ %param %param_0
               OpSelectionMerge %124 None
               OpBranchConditional %122 %123 %182
        %123 = OpLabel
        %130 = OpLoad %uint %idx
        %131 = OpAccessChain %_ptr_Uniform_uint %__0 %int_0 %130 %int_1
               OpStore %131 %uint_1
        %132 = OpAccessChain %_ptr_Uniform_uint %uboOut %int_0
        %133 = OpAtomicIAdd %uint %132 %uint_1 %uint_0 %uint_1
               OpStore %lodLevel %135
               OpStore %i_1 %uint_0
               OpBranch %137
        %137 = OpLabel
               OpLoopMerge %139 %140 None
               OpBranch %141
        %141 = OpLabel
        %142 = OpLoad %uint %i_1
        %144 = OpULessThan %bool %142 %143
               OpBranchConditional %144 %138 %139
        %138 = OpLabel
        %145 = OpLoad %uint %idx
        %146 = OpAccessChain %_ptr_Uniform_v3float %_ %int_0 %145 %int_0
        %147 = OpLoad %v3float %146
        %149 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
        %150 = OpLoad %v4float %149
        %151 = OpVectorShuffle %v3float %150 %150 0 1 2
        %152 = OpExtInst %float %1 Distance %147 %151
        %158 = OpLoad %uint %i_1
        %160 = OpAccessChain %_ptr_Uniform_float %__1 %int_0 %158 %int_2
        %161 = OpLoad %float %160
        %162 = OpFOrdLessThan %bool %152 %161
               OpSelectionMerge %164 None
               OpBranchConditional %162 %163 %164
        %163 = OpLabel
        %165 = OpLoad %uint %i_1
               OpStore %lodLevel %165
               OpBranch %139
        %164 = OpLabel
               OpBranch %140
        %140 = OpLabel
        %167 = OpLoad %uint %i_1
        %168 = OpIAdd %uint %167 %int_1
               OpStore %i_1 %168
               OpBranch %137
        %139 = OpLabel
        %169 = OpLoad %uint %idx
        %170 = OpLoad %uint %lodLevel
        %171 = OpAccessChain %_ptr_Uniform_uint %__1 %int_0 %170 %int_0
        %172 = OpLoad %uint %171
        %173 = OpAccessChain %_ptr_Uniform_uint %__0 %int_0 %169 %int_2
               OpStore %173 %172
        %174 = OpLoad %uint %idx
        %175 = OpLoad %uint %lodLevel
        %176 = OpAccessChain %_ptr_Uniform_uint %__1 %int_0 %175 %int_1
        %177 = OpLoad %uint %176
        %178 = OpAccessChain %_ptr_Uniform_uint %__0 %int_0 %174 %int_0
               OpStore %178 %177
        %179 = OpLoad %uint %lodLevel
        %180 = OpAccessChain %_ptr_Uniform_uint %uboOut %int_1 %179
        %181 = OpAtomicIAdd %uint %180 %uint_1 %uint_0 %uint_1
               OpBranch %124
        %182 = OpLabel
        %183 = OpLoad %uint %idx
        %184 = OpAccessChain %_ptr_Uniform_uint %__0 %int_0 %183 %int_1
               OpStore %184 %uint_0
               OpBranch %124
        %124 = OpLabel
               OpReturn
               OpFunctionEnd
%frustumCheck_vf4_f1_ = OpFunction %bool None %11
        %pos = OpFunctionParameter %_ptr_Function_v4float
     %radius = OpFunctionParameter %_ptr_Function_float
         %15 = OpLabel
          %i = OpVariable %_ptr_Function_int Function
               OpStore %i %int_0
               OpBranch %20
         %20 = OpLabel
               OpLoopMerge %22 %23 None
               OpBranch %24
         %24 = OpLabel
         %25 = OpLoad %int %i
         %27 = OpSLessThan %bool %25 %int_6
               OpBranchConditional %27 %21 %22
         %21 = OpLabel
         %28 = OpLoad %v4float %pos
         %37 = OpLoad %int %i
         %39 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3 %37
         %40 = OpLoad %v4float %39
         %41 = OpDot %float %28 %40
         %42 = OpLoad %float %radius
         %43 = OpFAdd %float %41 %42
         %45 = OpFOrdLessThan %bool %43 %float_0
               OpSelectionMerge %47 None
               OpBranchConditional %45 %46 %47
         %46 = OpLabel
               OpReturnValue %false
         %47 = OpLabel
               OpBranch %23
         %23 = OpLabel
         %50 = OpLoad %int %i
         %52 = OpIAdd %int %50 %int_1
               OpStore %i %52
               OpBranch %20
         %22 = OpLabel
               OpReturnValue %true
               OpFunctionEnd
