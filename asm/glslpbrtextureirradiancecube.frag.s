; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 119
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inPos %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %N "N"
               OpName %inPos "inPos"
               OpName %up "up"
               OpName %right "right"
               OpName %color "color"
               OpName %sampleCount "sampleCount"
               OpName %phi "phi"
               OpName %theta "theta"
               OpName %tempVec "tempVec"
               OpName %sampleVector "sampleVector"
               OpName %samplerEnv "samplerEnv"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "deltaPhi"
               OpMemberName %PushConsts 1 "deltaTheta"
               OpName %consts "consts"
               OpName %outColor "outColor"
               OpDecorate %inPos Location 0
               OpDecorate %samplerEnv DescriptorSet 0
               OpDecorate %samplerEnv Binding 0
               OpMemberDecorate %PushConsts 0 Offset 64
               OpMemberDecorate %PushConsts 1 Offset 68
               OpDecorate %PushConsts Block
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_0 = OpConstant %float 0
    %float_1 = OpConstant %float 1
         %17 = OpConstantComposite %v3float %float_0 %float_1 %float_0
         %27 = OpConstantComposite %v3float %float_0 %float_0 %float_0
       %uint = OpTypeInt 32 0
%_ptr_Function_uint = OpTypePointer Function %uint
     %uint_0 = OpConstant %uint 0
%_ptr_Function_float = OpTypePointer Function %float
%float_6_28318548 = OpConstant %float 6.28318548
       %bool = OpTypeBool
%float_1_57079637 = OpConstant %float 1.57079637
         %72 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %73 = OpTypeSampledImage %72
%_ptr_UniformConstant_73 = OpTypePointer UniformConstant %73
 %samplerEnv = OpVariable %_ptr_UniformConstant_73 UniformConstant
    %v4float = OpTypeVector %float 4
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
 %PushConsts = OpTypeStruct %float %float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
     %consts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_float = OpTypePointer PushConstant %float
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%float_3_14159274 = OpConstant %float 3.14159274
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
         %up = OpVariable %_ptr_Function_v3float Function
      %right = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v3float Function
%sampleCount = OpVariable %_ptr_Function_uint Function
        %phi = OpVariable %_ptr_Function_float Function
      %theta = OpVariable %_ptr_Function_float Function
    %tempVec = OpVariable %_ptr_Function_v3float Function
%sampleVector = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inPos
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %N %13
               OpStore %up %17
         %19 = OpLoad %v3float %up
         %20 = OpLoad %v3float %N
         %21 = OpExtInst %v3float %1 Cross %19 %20
         %22 = OpExtInst %v3float %1 Normalize %21
               OpStore %right %22
         %23 = OpLoad %v3float %N
         %24 = OpLoad %v3float %right
         %25 = OpExtInst %v3float %1 Cross %23 %24
               OpStore %up %25
               OpStore %color %27
               OpStore %sampleCount %uint_0
               OpStore %phi %float_0
               OpBranch %34
         %34 = OpLabel
               OpLoopMerge %36 %37 None
               OpBranch %38
         %38 = OpLabel
         %39 = OpLoad %float %phi
         %42 = OpFOrdLessThan %bool %39 %float_6_28318548
               OpBranchConditional %42 %35 %36
         %35 = OpLabel
               OpStore %theta %float_0
               OpBranch %44
         %44 = OpLabel
               OpLoopMerge %46 %47 None
               OpBranch %48
         %48 = OpLabel
         %49 = OpLoad %float %theta
         %51 = OpFOrdLessThan %bool %49 %float_1_57079637
               OpBranchConditional %51 %45 %46
         %45 = OpLabel
         %53 = OpLoad %float %phi
         %54 = OpExtInst %float %1 Cos %53
         %55 = OpLoad %v3float %right
         %56 = OpVectorTimesScalar %v3float %55 %54
         %57 = OpLoad %float %phi
         %58 = OpExtInst %float %1 Sin %57
         %59 = OpLoad %v3float %up
         %60 = OpVectorTimesScalar %v3float %59 %58
         %61 = OpFAdd %v3float %56 %60
               OpStore %tempVec %61
         %63 = OpLoad %float %theta
         %64 = OpExtInst %float %1 Cos %63
         %65 = OpLoad %v3float %N
         %66 = OpVectorTimesScalar %v3float %65 %64
         %67 = OpLoad %float %theta
         %68 = OpExtInst %float %1 Sin %67
         %69 = OpLoad %v3float %tempVec
         %70 = OpVectorTimesScalar %v3float %69 %68
         %71 = OpFAdd %v3float %66 %70
               OpStore %sampleVector %71
         %76 = OpLoad %73 %samplerEnv
         %77 = OpLoad %v3float %sampleVector
         %79 = OpImageSampleImplicitLod %v4float %76 %77
         %80 = OpVectorShuffle %v3float %79 %79 0 1 2
         %81 = OpLoad %float %theta
         %82 = OpExtInst %float %1 Cos %81
         %83 = OpVectorTimesScalar %v3float %80 %82
         %84 = OpLoad %float %theta
         %85 = OpExtInst %float %1 Sin %84
         %86 = OpVectorTimesScalar %v3float %83 %85
         %87 = OpLoad %v3float %color
         %88 = OpFAdd %v3float %87 %86
               OpStore %color %88
         %89 = OpLoad %uint %sampleCount
         %92 = OpIAdd %uint %89 %int_1
               OpStore %sampleCount %92
               OpBranch %47
         %47 = OpLabel
         %97 = OpAccessChain %_ptr_PushConstant_float %consts %int_1
         %98 = OpLoad %float %97
         %99 = OpLoad %float %theta
        %100 = OpFAdd %float %99 %98
               OpStore %theta %100
               OpBranch %44
         %46 = OpLabel
               OpBranch %37
         %37 = OpLabel
        %102 = OpAccessChain %_ptr_PushConstant_float %consts %int_0
        %103 = OpLoad %float %102
        %104 = OpLoad %float %phi
        %105 = OpFAdd %float %104 %103
               OpStore %phi %105
               OpBranch %34
         %36 = OpLabel
        %109 = OpLoad %v3float %color
        %110 = OpVectorTimesScalar %v3float %109 %float_3_14159274
        %111 = OpLoad %uint %sampleCount
        %112 = OpConvertUToF %float %111
        %113 = OpCompositeConstruct %v3float %112 %112 %112
        %114 = OpFDiv %v3float %110 %113
        %115 = OpCompositeExtract %float %114 0
        %116 = OpCompositeExtract %float %114 1
        %117 = OpCompositeExtract %float %114 2
        %118 = OpCompositeConstruct %v4float %115 %116 %117 %float_1
               OpStore %outColor %118
               OpReturn
               OpFunctionEnd
