; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 150
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %gl_FragCoord %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %count "count"
               OpName %nodeIdx "nodeIdx"
               OpName %headIndexImage "headIndexImage"
               OpName %gl_FragCoord "gl_FragCoord"
               OpName %Node "Node"
               OpMemberName %Node 0 "color"
               OpMemberName %Node 1 "depth"
               OpMemberName %Node 2 "next"
               OpName %fragments "fragments"
               OpName %Node_0 "Node"
               OpMemberName %Node_0 0 "color"
               OpMemberName %Node_0 1 "depth"
               OpMemberName %Node_0 2 "next"
               OpName %LinkedListSBO "LinkedListSBO"
               OpMemberName %LinkedListSBO 0 "nodes"
               OpName %_ ""
               OpName %i "i"
               OpName %insert "insert"
               OpName %j "j"
               OpName %color "color"
               OpName %i_0 "i"
               OpName %outFragColor "outFragColor"
               OpDecorate %headIndexImage DescriptorSet 0
               OpDecorate %headIndexImage Binding 0
               OpDecorate %gl_FragCoord BuiltIn FragCoord
               OpMemberDecorate %Node_0 0 Offset 0
               OpMemberDecorate %Node_0 1 Offset 16
               OpMemberDecorate %Node_0 2 Offset 20
               OpDecorate %_runtimearr_Node_0 ArrayStride 32
               OpMemberDecorate %LinkedListSBO 0 Offset 0
               OpDecorate %LinkedListSBO BufferBlock
               OpDecorate %_ DescriptorSet 0
               OpDecorate %_ Binding 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
         %13 = OpTypeImage %uint 2D 0 0 0 2 R32ui
%_ptr_UniformConstant_13 = OpTypePointer UniformConstant %13
%headIndexImage = OpVariable %_ptr_UniformConstant_13 UniformConstant
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_FragCoord = OpVariable %_ptr_Input_v4float Input
    %v2float = OpTypeVector %float 2
      %v2int = OpTypeVector %int 2
     %v4uint = OpTypeVector %uint 4
     %uint_0 = OpConstant %uint 0
%uint_4294967295 = OpConstant %uint 4294967295
       %bool = OpTypeBool
    %int_128 = OpConstant %int 128
       %Node = OpTypeStruct %v4float %float %uint
   %uint_128 = OpConstant %uint 128
%_arr_Node_uint_128 = OpTypeArray %Node %uint_128
%_ptr_Function__arr_Node_uint_128 = OpTypePointer Function %_arr_Node_uint_128
     %Node_0 = OpTypeStruct %v4float %float %uint
%_runtimearr_Node_0 = OpTypeRuntimeArray %Node_0
%LinkedListSBO = OpTypeStruct %_runtimearr_Node_0
%_ptr_Uniform_LinkedListSBO = OpTypePointer Uniform %LinkedListSBO
          %_ = OpVariable %_ptr_Uniform_LinkedListSBO Uniform
%_ptr_Uniform_Node_0 = OpTypePointer Uniform %Node_0
%_ptr_Function_Node = OpTypePointer Function %Node
%_ptr_Function_v4float = OpTypePointer Function %v4float
      %int_1 = OpConstant %int 1
%_ptr_Function_float = OpTypePointer Function %float
      %int_2 = OpConstant %int 2
     %uint_1 = OpConstant %uint 1
%float_0_0250000004 = OpConstant %float 0.0250000004
    %float_1 = OpConstant %float 1
        %125 = OpConstantComposite %v4float %float_0_0250000004 %float_0_0250000004 %float_0_0250000004 %float_1
     %uint_3 = OpConstant %uint 3
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
      %count = OpVariable %_ptr_Function_int Function
    %nodeIdx = OpVariable %_ptr_Function_uint Function
  %fragments = OpVariable %_ptr_Function__arr_Node_uint_128 Function
          %i = OpVariable %_ptr_Function_uint Function
     %insert = OpVariable %_ptr_Function_Node Function
          %j = OpVariable %_ptr_Function_uint Function
      %color = OpVariable %_ptr_Function_v4float Function
        %i_0 = OpVariable %_ptr_Function_int Function
               OpStore %count %int_0
         %16 = OpLoad %13 %headIndexImage
         %22 = OpLoad %v4float %gl_FragCoord
         %23 = OpVectorShuffle %v2float %22 %22 0 1
         %25 = OpConvertFToS %v2int %23
         %27 = OpImageRead %v4uint %16 %25
         %29 = OpCompositeExtract %uint %27 0
               OpStore %nodeIdx %29
               OpBranch %30
         %30 = OpLabel
               OpLoopMerge %32 %33 None
               OpBranch %34
         %34 = OpLabel
         %35 = OpLoad %uint %nodeIdx
         %38 = OpINotEqual %bool %35 %uint_4294967295
         %39 = OpLoad %int %count
         %41 = OpSLessThan %bool %39 %int_128
         %42 = OpLogicalAnd %bool %38 %41
               OpBranchConditional %42 %31 %32
         %31 = OpLabel
         %48 = OpLoad %int %count
         %54 = OpLoad %uint %nodeIdx
         %56 = OpAccessChain %_ptr_Uniform_Node_0 %_ %int_0 %54
         %57 = OpLoad %Node_0 %56
         %59 = OpAccessChain %_ptr_Function_Node %fragments %48
         %60 = OpCompositeExtract %v4float %57 0
         %62 = OpAccessChain %_ptr_Function_v4float %59 %int_0
               OpStore %62 %60
         %63 = OpCompositeExtract %float %57 1
         %66 = OpAccessChain %_ptr_Function_float %59 %int_1
               OpStore %66 %63
         %67 = OpCompositeExtract %uint %57 2
         %69 = OpAccessChain %_ptr_Function_uint %59 %int_2
               OpStore %69 %67
         %70 = OpLoad %int %count
         %71 = OpAccessChain %_ptr_Function_uint %fragments %70 %int_2
         %72 = OpLoad %uint %71
               OpStore %nodeIdx %72
         %73 = OpLoad %int %count
         %74 = OpIAdd %int %73 %int_1
               OpStore %count %74
               OpBranch %33
         %33 = OpLabel
               OpBranch %30
         %32 = OpLabel
               OpStore %i %uint_1
               OpBranch %77
         %77 = OpLabel
               OpLoopMerge %79 %80 None
               OpBranch %81
         %81 = OpLabel
         %82 = OpLoad %uint %i
         %83 = OpLoad %int %count
         %84 = OpBitcast %uint %83
         %85 = OpULessThan %bool %82 %84
               OpBranchConditional %85 %78 %79
         %78 = OpLabel
         %87 = OpLoad %uint %i
         %88 = OpAccessChain %_ptr_Function_Node %fragments %87
         %89 = OpLoad %Node %88
               OpStore %insert %89
         %91 = OpLoad %uint %i
               OpStore %j %91
               OpBranch %92
         %92 = OpLabel
               OpLoopMerge %94 %95 None
               OpBranch %96
         %96 = OpLabel
         %97 = OpLoad %uint %j
         %98 = OpUGreaterThan %bool %97 %uint_0
               OpSelectionMerge %100 None
               OpBranchConditional %98 %99 %100
         %99 = OpLabel
        %101 = OpAccessChain %_ptr_Function_float %insert %int_1
        %102 = OpLoad %float %101
        %103 = OpLoad %uint %j
        %104 = OpISub %uint %103 %uint_1
        %105 = OpAccessChain %_ptr_Function_float %fragments %104 %int_1
        %106 = OpLoad %float %105
        %107 = OpFOrdGreaterThan %bool %102 %106
               OpBranch %100
        %100 = OpLabel
        %108 = OpPhi %bool %98 %96 %107 %99
               OpBranchConditional %108 %93 %94
         %93 = OpLabel
        %109 = OpLoad %uint %j
        %110 = OpLoad %uint %j
        %111 = OpISub %uint %110 %uint_1
        %112 = OpAccessChain %_ptr_Function_Node %fragments %111
        %113 = OpLoad %Node %112
        %114 = OpAccessChain %_ptr_Function_Node %fragments %109
               OpStore %114 %113
        %115 = OpLoad %uint %j
        %116 = OpISub %uint %115 %int_1
               OpStore %j %116
               OpBranch %95
         %95 = OpLabel
               OpBranch %92
         %94 = OpLabel
        %117 = OpLoad %uint %j
        %118 = OpLoad %Node %insert
        %119 = OpAccessChain %_ptr_Function_Node %fragments %117
               OpStore %119 %118
               OpBranch %80
         %80 = OpLabel
        %120 = OpLoad %uint %i
        %121 = OpIAdd %uint %120 %int_1
               OpStore %i %121
               OpBranch %77
         %79 = OpLabel
               OpStore %color %125
               OpStore %i_0 %int_0
               OpBranch %127
        %127 = OpLabel
               OpLoopMerge %129 %130 None
               OpBranch %131
        %131 = OpLabel
        %132 = OpLoad %int %i_0
        %133 = OpLoad %int %count
        %134 = OpSLessThan %bool %132 %133
               OpBranchConditional %134 %128 %129
        %128 = OpLabel
        %135 = OpLoad %v4float %color
        %136 = OpLoad %int %i_0
        %137 = OpAccessChain %_ptr_Function_v4float %fragments %136 %int_0
        %138 = OpLoad %v4float %137
        %139 = OpLoad %int %i_0
        %141 = OpAccessChain %_ptr_Function_float %fragments %139 %int_0 %uint_3
        %142 = OpLoad %float %141
        %143 = OpCompositeConstruct %v4float %142 %142 %142 %142
        %144 = OpExtInst %v4float %1 FMix %135 %138 %143
               OpStore %color %144
               OpBranch %130
        %130 = OpLabel
        %145 = OpLoad %int %i_0
        %146 = OpIAdd %int %145 %int_1
               OpStore %i_0 %146
               OpBranch %127
        %129 = OpLabel
        %149 = OpLoad %v4float %color
               OpStore %outFragColor %149
               OpReturn
               OpFunctionEnd
