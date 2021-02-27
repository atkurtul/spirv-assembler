; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 210
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %fragPos "fragPos"
               OpName %samplerPositionDepth "samplerPositionDepth"
               OpName %inUV "inUV"
               OpName %normal "normal"
               OpName %samplerNormal "samplerNormal"
               OpName %texDim "texDim"
               OpName %noiseDim "noiseDim"
               OpName %ssaoNoise "ssaoNoise"
               OpName %noiseUV "noiseUV"
               OpName %randomVec "randomVec"
               OpName %tangent "tangent"
               OpName %bitangent "bitangent"
               OpName %TBN "TBN"
               OpName %occlusion "occlusion"
               OpName %i "i"
               OpName %SSAO_KERNEL_SIZE "SSAO_KERNEL_SIZE"
               OpName %samplePos "samplePos"
               OpName %UBOSSAOKernel "UBOSSAOKernel"
               OpMemberName %UBOSSAOKernel 0 "samples"
               OpName %uboSSAOKernel "uboSSAOKernel"
               OpName %SSAO_RADIUS "SSAO_RADIUS"
               OpName %offset "offset"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpName %ubo "ubo"
               OpName %sampleDepth "sampleDepth"
               OpName %rangeCheck "rangeCheck"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerPositionDepth DescriptorSet 0
               OpDecorate %samplerPositionDepth Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %samplerNormal DescriptorSet 0
               OpDecorate %samplerNormal Binding 1
               OpDecorate %ssaoNoise DescriptorSet 0
               OpDecorate %ssaoNoise Binding 2
               OpDecorate %SSAO_KERNEL_SIZE SpecId 0
               OpDecorate %_arr_v4float_SSAO_KERNEL_SIZE ArrayStride 16
               OpMemberDecorate %UBOSSAOKernel 0 Offset 0
               OpDecorate %UBOSSAOKernel Block
               OpDecorate %uboSSAOKernel DescriptorSet 0
               OpDecorate %uboSSAOKernel Binding 3
               OpDecorate %SSAO_RADIUS SpecId 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 4
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %10 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerPositionDepth = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%samplerNormal = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
        %int = OpTypeInt 32 1
      %v2int = OpTypeVector %int 2
%_ptr_Function_v2int = OpTypePointer Function %v2int
      %int_0 = OpConstant %int 0
  %ssaoNoise = OpVariable %_ptr_UniformConstant_11 UniformConstant
%_ptr_Function_v2float = OpTypePointer Function %v2float
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Function_int = OpTypePointer Function %int
     %uint_1 = OpConstant %uint 1
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
    %float_0 = OpConstant %float 0
%_ptr_Function_float = OpTypePointer Function %float
%SSAO_KERNEL_SIZE = OpSpecConstant %int 64
       %bool = OpTypeBool
%_arr_v4float_SSAO_KERNEL_SIZE = OpTypeArray %v4float %SSAO_KERNEL_SIZE
%UBOSSAOKernel = OpTypeStruct %_arr_v4float_SSAO_KERNEL_SIZE
%_ptr_Uniform_UBOSSAOKernel = OpTypePointer Uniform %UBOSSAOKernel
%uboSSAOKernel = OpVariable %_ptr_Uniform_UBOSSAOKernel Uniform
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%SSAO_RADIUS = OpSpecConstant %float 0.5
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
     %uint_3 = OpConstant %uint 3
  %float_0_5 = OpConstant %float 0.5
     %uint_2 = OpConstant %uint 2
%float_0_0250000004 = OpConstant %float 0.0250000004
      %int_1 = OpConstant %int 1
%_ptr_Output_float = OpTypePointer Output %float
%outFragColor = OpVariable %_ptr_Output_float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
    %fragPos = OpVariable %_ptr_Function_v3float Function
     %normal = OpVariable %_ptr_Function_v3float Function
     %texDim = OpVariable %_ptr_Function_v2int Function
   %noiseDim = OpVariable %_ptr_Function_v2int Function
    %noiseUV = OpVariable %_ptr_Function_v2float Function
  %randomVec = OpVariable %_ptr_Function_v3float Function
    %tangent = OpVariable %_ptr_Function_v3float Function
  %bitangent = OpVariable %_ptr_Function_v3float Function
        %TBN = OpVariable %_ptr_Function_mat3v3float Function
  %occlusion = OpVariable %_ptr_Function_float Function
          %i = OpVariable %_ptr_Function_int Function
  %samplePos = OpVariable %_ptr_Function_v3float Function
     %offset = OpVariable %_ptr_Function_v4float Function
%sampleDepth = OpVariable %_ptr_Function_float Function
 %rangeCheck = OpVariable %_ptr_Function_float Function
         %14 = OpLoad %11 %samplerPositionDepth
         %18 = OpLoad %v2float %inUV
         %20 = OpImageSampleImplicitLod %v4float %14 %18
         %21 = OpVectorShuffle %v3float %20 %20 0 1 2
               OpStore %fragPos %21
         %24 = OpLoad %11 %samplerNormal
         %25 = OpLoad %v2float %inUV
         %26 = OpImageSampleImplicitLod %v4float %24 %25
         %27 = OpVectorShuffle %v3float %26 %26 0 1 2
         %29 = OpVectorTimesScalar %v3float %27 %float_2
         %31 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
         %32 = OpFSub %v3float %29 %31
         %33 = OpExtInst %v3float %1 Normalize %32
               OpStore %normal %33
         %38 = OpLoad %11 %samplerPositionDepth
         %40 = OpImage %10 %38
         %41 = OpImageQuerySizeLod %v2int %40 %int_0
               OpStore %texDim %41
         %44 = OpLoad %11 %ssaoNoise
         %45 = OpImage %10 %44
         %46 = OpImageQuerySizeLod %v2int %45 %int_0
               OpStore %noiseDim %46
         %52 = OpAccessChain %_ptr_Function_int %texDim %uint_0
         %53 = OpLoad %int %52
         %54 = OpConvertSToF %float %53
         %55 = OpAccessChain %_ptr_Function_int %noiseDim %uint_0
         %56 = OpLoad %int %55
         %57 = OpConvertSToF %float %56
         %58 = OpFDiv %float %54 %57
         %60 = OpAccessChain %_ptr_Function_int %texDim %uint_1
         %61 = OpLoad %int %60
         %62 = OpConvertSToF %float %61
         %63 = OpAccessChain %_ptr_Function_int %noiseDim %uint_1
         %64 = OpLoad %int %63
         %65 = OpConvertSToF %float %64
         %66 = OpFDiv %float %62 %65
         %67 = OpCompositeConstruct %v2float %58 %66
         %68 = OpLoad %v2float %inUV
         %69 = OpFMul %v2float %67 %68
               OpStore %noiseUV %69
         %71 = OpLoad %11 %ssaoNoise
         %72 = OpLoad %v2float %noiseUV
         %73 = OpImageSampleImplicitLod %v4float %71 %72
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpVectorTimesScalar %v3float %74 %float_2
         %76 = OpCompositeConstruct %v3float %float_1 %float_1 %float_1
         %77 = OpFSub %v3float %75 %76
               OpStore %randomVec %77
         %79 = OpLoad %v3float %randomVec
         %80 = OpLoad %v3float %normal
         %81 = OpLoad %v3float %randomVec
         %82 = OpLoad %v3float %normal
         %83 = OpDot %float %81 %82
         %84 = OpVectorTimesScalar %v3float %80 %83
         %85 = OpFSub %v3float %79 %84
         %86 = OpExtInst %v3float %1 Normalize %85
               OpStore %tangent %86
         %88 = OpLoad %v3float %tangent
         %89 = OpLoad %v3float %normal
         %90 = OpExtInst %v3float %1 Cross %88 %89
               OpStore %bitangent %90
         %94 = OpLoad %v3float %tangent
         %95 = OpLoad %v3float %bitangent
         %96 = OpLoad %v3float %normal
         %98 = OpCompositeExtract %float %94 0
         %99 = OpCompositeExtract %float %94 1
        %100 = OpCompositeExtract %float %94 2
        %101 = OpCompositeExtract %float %95 0
        %102 = OpCompositeExtract %float %95 1
        %103 = OpCompositeExtract %float %95 2
        %104 = OpCompositeExtract %float %96 0
        %105 = OpCompositeExtract %float %96 1
        %106 = OpCompositeExtract %float %96 2
        %107 = OpCompositeConstruct %v3float %98 %99 %100
        %108 = OpCompositeConstruct %v3float %101 %102 %103
        %109 = OpCompositeConstruct %v3float %104 %105 %106
        %110 = OpCompositeConstruct %mat3v3float %107 %108 %109
               OpStore %TBN %110
               OpStore %occlusion %float_0
               OpStore %i %int_0
               OpBranch %114
        %114 = OpLabel
               OpLoopMerge %116 %117 None
               OpBranch %118
        %118 = OpLabel
        %119 = OpLoad %int %i
        %122 = OpSLessThan %bool %119 %SSAO_KERNEL_SIZE
               OpBranchConditional %122 %115 %116
        %115 = OpLabel
        %124 = OpLoad %mat3v3float %TBN
        %129 = OpLoad %int %i
        %131 = OpAccessChain %_ptr_Uniform_v4float %uboSSAOKernel %int_0 %129
        %132 = OpLoad %v4float %131
        %133 = OpVectorShuffle %v3float %132 %132 0 1 2
        %134 = OpMatrixTimesVector %v3float %124 %133
               OpStore %samplePos %134
        %135 = OpLoad %v3float %fragPos
        %136 = OpLoad %v3float %samplePos
        %138 = OpVectorTimesScalar %v3float %136 %SSAO_RADIUS
        %139 = OpFAdd %v3float %135 %138
               OpStore %samplePos %139
        %142 = OpLoad %v3float %samplePos
        %143 = OpCompositeExtract %float %142 0
        %144 = OpCompositeExtract %float %142 1
        %145 = OpCompositeExtract %float %142 2
        %146 = OpCompositeConstruct %v4float %143 %144 %145 %float_1
               OpStore %offset %146
        %152 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %153 = OpLoad %mat4v4float %152
        %154 = OpLoad %v4float %offset
        %155 = OpMatrixTimesVector %v4float %153 %154
               OpStore %offset %155
        %157 = OpAccessChain %_ptr_Function_float %offset %uint_3
        %158 = OpLoad %float %157
        %159 = OpLoad %v4float %offset
        %160 = OpVectorShuffle %v3float %159 %159 0 1 2
        %161 = OpCompositeConstruct %v3float %158 %158 %158
        %162 = OpFDiv %v3float %160 %161
        %163 = OpLoad %v4float %offset
        %164 = OpVectorShuffle %v4float %163 %162 4 5 6 3
               OpStore %offset %164
        %165 = OpLoad %v4float %offset
        %166 = OpVectorShuffle %v3float %165 %165 0 1 2
        %168 = OpVectorTimesScalar %v3float %166 %float_0_5
        %169 = OpCompositeConstruct %v3float %float_0_5 %float_0_5 %float_0_5
        %170 = OpFAdd %v3float %168 %169
        %171 = OpLoad %v4float %offset
        %172 = OpVectorShuffle %v4float %171 %170 4 5 6 3
               OpStore %offset %172
        %174 = OpLoad %11 %samplerPositionDepth
        %175 = OpLoad %v4float %offset
        %176 = OpVectorShuffle %v2float %175 %175 0 1
        %177 = OpImageSampleImplicitLod %v4float %174 %176
        %178 = OpCompositeExtract %float %177 3
        %179 = OpFNegate %float %178
               OpStore %sampleDepth %179
        %182 = OpAccessChain %_ptr_Function_float %fragPos %uint_2
        %183 = OpLoad %float %182
        %184 = OpLoad %float %sampleDepth
        %185 = OpFSub %float %183 %184
        %186 = OpExtInst %float %1 FAbs %185
        %187 = OpFDiv %float %SSAO_RADIUS %186
        %188 = OpExtInst %float %1 SmoothStep %float_0 %float_1 %187
               OpStore %rangeCheck %188
        %189 = OpLoad %float %sampleDepth
        %190 = OpAccessChain %_ptr_Function_float %samplePos %uint_2
        %191 = OpLoad %float %190
        %193 = OpFAdd %float %191 %float_0_0250000004
        %194 = OpFOrdGreaterThanEqual %bool %189 %193
        %195 = OpSelect %float %194 %float_1 %float_0
        %196 = OpLoad %float %rangeCheck
        %197 = OpFMul %float %195 %196
        %198 = OpLoad %float %occlusion
        %199 = OpFAdd %float %198 %197
               OpStore %occlusion %199
               OpBranch %117
        %117 = OpLabel
        %200 = OpLoad %int %i
        %202 = OpIAdd %int %200 %int_1
               OpStore %i %202
               OpBranch %114
        %116 = OpLabel
        %203 = OpLoad %float %occlusion
        %204 = OpConvertSToF %float %SSAO_KERNEL_SIZE
        %205 = OpFDiv %float %203 %204
        %206 = OpFSub %float %float_1 %205
               OpStore %occlusion %206
        %209 = OpLoad %float %occlusion
               OpStore %outFragColor %209
               OpReturn
               OpFunctionEnd
