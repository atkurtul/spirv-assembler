; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 182
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint GLCompute %main "main" %gl_GlobalInvocationID
               OpExecutionMode %main LocalSize 16 16 1
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %conv_f1_9__f1_9__f1_f1_ "conv(f1[9];f1[9];f1;f1;"
               OpName %kernel "kernel"
               OpName %data "data"
               OpName %denom "denom"
               OpName %offset "offset"
               OpName %res "res"
               OpName %i "i"
               OpName %n "n"
               OpName %i_0 "i"
               OpName %j "j"
               OpName %rgb "rgb"
               OpName %inputImage "inputImage"
               OpName %gl_GlobalInvocationID "gl_GlobalInvocationID"
               OpName %ImageData "ImageData"
               OpMemberName %ImageData 0 "r"
               OpMemberName %ImageData 1 "g"
               OpMemberName %ImageData 2 "b"
               OpName %imageData "imageData"
               OpName %kernel_0 "kernel"
               OpName %res_0 "res"
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
               OpName %resultImage "resultImage"
               OpDecorate %inputImage DescriptorSet 0
               OpDecorate %inputImage Binding 0
               OpDecorate %inputImage NonWritable
               OpDecorate %gl_GlobalInvocationID BuiltIn GlobalInvocationId
               OpDecorate %resultImage DescriptorSet 0
               OpDecorate %resultImage Binding 1
               OpDecorate %gl_WorkGroupSize BuiltIn WorkgroupSize
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
       %uint = OpTypeInt 32 0
     %uint_9 = OpConstant %uint 9
%_arr_float_uint_9 = OpTypeArray %float %uint_9
%_ptr_Function__arr_float_uint_9 = OpTypePointer Function %_arr_float_uint_9
%_ptr_Function_float = OpTypePointer Function %float
         %12 = OpTypeFunction %float %_ptr_Function__arr_float_uint_9 %_ptr_Function__arr_float_uint_9 %_ptr_Function_float %_ptr_Function_float
    %float_0 = OpConstant %float 0
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %int_9 = OpConstant %int 9
       %bool = OpTypeBool
      %int_1 = OpConstant %int 1
    %float_1 = OpConstant %float 1
     %int_n1 = OpConstant %int -1
      %int_2 = OpConstant %int 2
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %79 = OpTypeImage %float 2D 0 0 0 2 Rgba8
%_ptr_UniformConstant_79 = OpTypePointer UniformConstant %79
 %inputImage = OpVariable %_ptr_UniformConstant_79 UniformConstant
     %v3uint = OpTypeVector %uint 3
%_ptr_Input_v3uint = OpTypePointer Input %v3uint
%gl_GlobalInvocationID = OpVariable %_ptr_Input_v3uint Input
     %uint_0 = OpConstant %uint 0
%_ptr_Input_uint = OpTypePointer Input %uint
     %uint_1 = OpConstant %uint 1
      %v2int = OpTypeVector %int 2
    %v4float = OpTypeVector %float 4
  %ImageData = OpTypeStruct %_arr_float_uint_9 %_arr_float_uint_9 %_arr_float_uint_9
%_ptr_Private_ImageData = OpTypePointer Private %ImageData
  %imageData = OpVariable %_ptr_Private_ImageData Private
%_ptr_Private_float = OpTypePointer Private %float
     %uint_2 = OpConstant %uint 2
   %float_n1 = OpConstant %float -1
      %int_3 = OpConstant %int 3
      %int_4 = OpConstant %int 4
    %float_9 = OpConstant %float 9
      %int_5 = OpConstant %int 5
      %int_6 = OpConstant %int 6
      %int_7 = OpConstant %int 7
      %int_8 = OpConstant %int 8
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Private__arr_float_uint_9 = OpTypePointer Private %_arr_float_uint_9
%resultImage = OpVariable %_ptr_UniformConstant_79 UniformConstant
     %v2uint = OpTypeVector %uint 2
    %uint_16 = OpConstant %uint 16
%gl_WorkGroupSize = OpConstantComposite %v3uint %uint_16 %uint_16 %uint_1
       %main = OpFunction %void None %3
          %5 = OpLabel
          %n = OpVariable %_ptr_Function_int Function
        %i_0 = OpVariable %_ptr_Function_int Function
          %j = OpVariable %_ptr_Function_int Function
        %rgb = OpVariable %_ptr_Function_v3float Function
   %kernel_0 = OpVariable %_ptr_Function__arr_float_uint_9 Function
      %res_0 = OpVariable %_ptr_Function_v4float Function
      %param = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_0 = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_1 = OpVariable %_ptr_Function_float Function
    %param_2 = OpVariable %_ptr_Function_float Function
    %param_3 = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_4 = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_5 = OpVariable %_ptr_Function_float Function
    %param_6 = OpVariable %_ptr_Function_float Function
    %param_7 = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_8 = OpVariable %_ptr_Function__arr_float_uint_9 Function
    %param_9 = OpVariable %_ptr_Function_float Function
   %param_10 = OpVariable %_ptr_Function_float Function
               OpStore %n %int_n1
               OpStore %i_0 %int_n1
               OpBranch %58
         %58 = OpLabel
               OpLoopMerge %60 %61 None
               OpBranch %62
         %62 = OpLabel
         %63 = OpLoad %int %i_0
         %65 = OpSLessThan %bool %63 %int_2
               OpBranchConditional %65 %59 %60
         %59 = OpLabel
               OpStore %j %int_n1
               OpBranch %67
         %67 = OpLabel
               OpLoopMerge %69 %70 None
               OpBranch %71
         %71 = OpLabel
         %72 = OpLoad %int %j
         %73 = OpSLessThan %bool %72 %int_2
               OpBranchConditional %73 %68 %69
         %68 = OpLabel
         %74 = OpLoad %int %n
         %75 = OpIAdd %int %74 %int_1
               OpStore %n %75
         %82 = OpLoad %79 %inputImage
         %88 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_0
         %89 = OpLoad %uint %88
         %90 = OpLoad %int %i_0
         %91 = OpBitcast %uint %90
         %92 = OpIAdd %uint %89 %91
         %93 = OpBitcast %int %92
         %95 = OpAccessChain %_ptr_Input_uint %gl_GlobalInvocationID %uint_1
         %96 = OpLoad %uint %95
         %97 = OpLoad %int %j
         %98 = OpBitcast %uint %97
         %99 = OpIAdd %uint %96 %98
        %100 = OpBitcast %int %99
        %102 = OpCompositeConstruct %v2int %93 %100
        %104 = OpImageRead %v4float %82 %102
        %105 = OpVectorShuffle %v3float %104 %104 0 1 2
               OpStore %rgb %105
        %109 = OpLoad %int %n
        %110 = OpAccessChain %_ptr_Function_float %rgb %uint_0
        %111 = OpLoad %float %110
        %113 = OpAccessChain %_ptr_Private_float %imageData %int_0 %109
               OpStore %113 %111
        %114 = OpLoad %int %n
        %115 = OpAccessChain %_ptr_Function_float %rgb %uint_1
        %116 = OpLoad %float %115
        %117 = OpAccessChain %_ptr_Private_float %imageData %int_1 %114
               OpStore %117 %116
        %118 = OpLoad %int %n
        %120 = OpAccessChain %_ptr_Function_float %rgb %uint_2
        %121 = OpLoad %float %120
        %122 = OpAccessChain %_ptr_Private_float %imageData %int_2 %118
               OpStore %122 %121
               OpBranch %70
         %70 = OpLabel
        %123 = OpLoad %int %j
        %124 = OpIAdd %int %123 %int_1
               OpStore %j %124
               OpBranch %67
         %69 = OpLabel
               OpBranch %61
         %61 = OpLabel
        %125 = OpLoad %int %i_0
        %126 = OpIAdd %int %125 %int_1
               OpStore %i_0 %126
               OpBranch %58
         %60 = OpLabel
        %129 = OpAccessChain %_ptr_Function_float %kernel_0 %int_0
               OpStore %129 %float_n1
        %130 = OpAccessChain %_ptr_Function_float %kernel_0 %int_1
               OpStore %130 %float_n1
        %131 = OpAccessChain %_ptr_Function_float %kernel_0 %int_2
               OpStore %131 %float_n1
        %133 = OpAccessChain %_ptr_Function_float %kernel_0 %int_3
               OpStore %133 %float_n1
        %136 = OpAccessChain %_ptr_Function_float %kernel_0 %int_4
               OpStore %136 %float_9
        %138 = OpAccessChain %_ptr_Function_float %kernel_0 %int_5
               OpStore %138 %float_n1
        %140 = OpAccessChain %_ptr_Function_float %kernel_0 %int_6
               OpStore %140 %float_n1
        %142 = OpAccessChain %_ptr_Function_float %kernel_0 %int_7
               OpStore %142 %float_n1
        %144 = OpAccessChain %_ptr_Function_float %kernel_0 %int_8
               OpStore %144 %float_n1
        %148 = OpLoad %_arr_float_uint_9 %kernel_0
               OpStore %param %148
        %151 = OpAccessChain %_ptr_Private__arr_float_uint_9 %imageData %int_0
        %152 = OpLoad %_arr_float_uint_9 %151
               OpStore %param_0 %152
               OpStore %param_1 %float_1
               OpStore %param_2 %float_0
        %155 = OpFunctionCall %float %conv_f1_9__f1_9__f1_f1_ %param %param_0 %param_1 %param_2
        %157 = OpLoad %_arr_float_uint_9 %kernel_0
               OpStore %param_3 %157
        %159 = OpAccessChain %_ptr_Private__arr_float_uint_9 %imageData %int_1
        %160 = OpLoad %_arr_float_uint_9 %159
               OpStore %param_4 %160
               OpStore %param_5 %float_1
               OpStore %param_6 %float_0
        %163 = OpFunctionCall %float %conv_f1_9__f1_9__f1_f1_ %param_3 %param_4 %param_5 %param_6
        %165 = OpLoad %_arr_float_uint_9 %kernel_0
               OpStore %param_7 %165
        %167 = OpAccessChain %_ptr_Private__arr_float_uint_9 %imageData %int_2
        %168 = OpLoad %_arr_float_uint_9 %167
               OpStore %param_8 %168
               OpStore %param_9 %float_1
               OpStore %param_10 %float_0
        %171 = OpFunctionCall %float %conv_f1_9__f1_9__f1_f1_ %param_7 %param_8 %param_9 %param_10
        %172 = OpCompositeConstruct %v4float %155 %163 %171 %float_1
               OpStore %res_0 %172
        %174 = OpLoad %79 %resultImage
        %176 = OpLoad %v3uint %gl_GlobalInvocationID
        %177 = OpVectorShuffle %v2uint %176 %176 0 1
        %178 = OpBitcast %v2int %177
        %179 = OpLoad %v4float %res_0
               OpImageWrite %174 %178 %179
               OpReturn
               OpFunctionEnd
%conv_f1_9__f1_9__f1_f1_ = OpFunction %float None %12
     %kernel = OpFunctionParameter %_ptr_Function__arr_float_uint_9
       %data = OpFunctionParameter %_ptr_Function__arr_float_uint_9
      %denom = OpFunctionParameter %_ptr_Function_float
     %offset = OpFunctionParameter %_ptr_Function_float
         %18 = OpLabel
        %res = OpVariable %_ptr_Function_float Function
          %i = OpVariable %_ptr_Function_int Function
               OpStore %res %float_0
               OpStore %i %int_0
               OpBranch %25
         %25 = OpLabel
               OpLoopMerge %27 %28 None
               OpBranch %29
         %29 = OpLabel
         %30 = OpLoad %int %i
         %33 = OpSLessThan %bool %30 %int_9
               OpBranchConditional %33 %26 %27
         %26 = OpLabel
         %34 = OpLoad %int %i
         %35 = OpAccessChain %_ptr_Function_float %kernel %34
         %36 = OpLoad %float %35
         %37 = OpLoad %int %i
         %38 = OpAccessChain %_ptr_Function_float %data %37
         %39 = OpLoad %float %38
         %40 = OpFMul %float %36 %39
         %41 = OpLoad %float %res
         %42 = OpFAdd %float %41 %40
               OpStore %res %42
               OpBranch %28
         %28 = OpLabel
         %43 = OpLoad %int %i
         %45 = OpIAdd %int %43 %int_1
               OpStore %i %45
               OpBranch %25
         %27 = OpLabel
         %46 = OpLoad %float %res
         %47 = OpLoad %float %denom
         %48 = OpFDiv %float %46 %47
         %49 = OpLoad %float %offset
         %50 = OpFAdd %float %48 %49
         %52 = OpExtInst %float %1 FClamp %50 %float_0 %float_1
               OpReturnValue %52
               OpFunctionEnd
