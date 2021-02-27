; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 201
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %inUV %inJointWeights %inJointIndices %__0 %inPos %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %skinMat "skinMat"
               OpName %inJointWeights "inJointWeights"
               OpName %JointMatrices "JointMatrices"
               OpMemberName %JointMatrices 0 "jointMatrices"
               OpName %_ ""
               OpName %inJointIndices "inJointIndices"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %__0 ""
               OpName %UBOScene "UBOScene"
               OpMemberName %UBOScene 0 "projection"
               OpMemberName %UBOScene 1 "view"
               OpMemberName %UBOScene 2 "lightPos"
               OpName %uboScene "uboScene"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "model"
               OpName %primitive "primitive"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpDecorate %inJointWeights Location 5
               OpDecorate %_runtimearr_mat4v4float ArrayStride 64
               OpMemberDecorate %JointMatrices 0 ColMajor
               OpMemberDecorate %JointMatrices 0 NonWritable
               OpMemberDecorate %JointMatrices 0 Offset 0
               OpMemberDecorate %JointMatrices 0 MatrixStride 16
               OpDecorate %JointMatrices BufferBlock
               OpDecorate %_ DescriptorSet 1
               OpDecorate %_ Binding 0
               OpDecorate %inJointIndices Location 4
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBOScene 0 ColMajor
               OpMemberDecorate %UBOScene 0 Offset 0
               OpMemberDecorate %UBOScene 0 MatrixStride 16
               OpMemberDecorate %UBOScene 1 ColMajor
               OpMemberDecorate %UBOScene 1 Offset 64
               OpMemberDecorate %UBOScene 1 MatrixStride 16
               OpMemberDecorate %UBOScene 2 Offset 128
               OpDecorate %UBOScene Block
               OpDecorate %uboScene DescriptorSet 0
               OpDecorate %uboScene Binding 0
               OpMemberDecorate %PushConsts 0 ColMajor
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 0 MatrixStride 16
               OpDecorate %PushConsts Block
               OpDecorate %inPos Location 0
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
%inJointWeights = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
%_runtimearr_mat4v4float = OpTypeRuntimeArray %mat4v4float
%JointMatrices = OpTypeStruct %_runtimearr_mat4v4float
%_ptr_Uniform_JointMatrices = OpTypePointer Uniform %JointMatrices
          %_ = OpVariable %_ptr_Uniform_JointMatrices Uniform
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%inJointIndices = OpVariable %_ptr_Input_v4float Input
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
     %uint_3 = OpConstant %uint 3
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
        %__0 = OpVariable %_ptr_Output_gl_PerVertex Output
   %UBOScene = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBOScene = OpTypePointer Uniform %UBOScene
   %uboScene = OpVariable %_ptr_Uniform_UBOScene Uniform
      %int_1 = OpConstant %int 1
 %PushConsts = OpTypeStruct %mat4v4float
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
  %primitive = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_mat4v4float = OpTypePointer PushConstant %mat4v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
    %skinMat = OpVariable %_ptr_Function_mat4v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %31 = OpAccessChain %_ptr_Input_float %inJointWeights %uint_0
         %32 = OpLoad %float %31
         %40 = OpAccessChain %_ptr_Input_float %inJointIndices %uint_0
         %41 = OpLoad %float %40
         %42 = OpConvertFToS %int %41
         %44 = OpAccessChain %_ptr_Uniform_mat4v4float %_ %int_0 %42
         %45 = OpLoad %mat4v4float %44
         %46 = OpMatrixTimesScalar %mat4v4float %45 %32
         %48 = OpAccessChain %_ptr_Input_float %inJointWeights %uint_1
         %49 = OpLoad %float %48
         %50 = OpAccessChain %_ptr_Input_float %inJointIndices %uint_1
         %51 = OpLoad %float %50
         %52 = OpConvertFToS %int %51
         %53 = OpAccessChain %_ptr_Uniform_mat4v4float %_ %int_0 %52
         %54 = OpLoad %mat4v4float %53
         %55 = OpMatrixTimesScalar %mat4v4float %54 %49
         %56 = OpCompositeExtract %v4float %46 0
         %57 = OpCompositeExtract %v4float %55 0
         %58 = OpFAdd %v4float %56 %57
         %59 = OpCompositeExtract %v4float %46 1
         %60 = OpCompositeExtract %v4float %55 1
         %61 = OpFAdd %v4float %59 %60
         %62 = OpCompositeExtract %v4float %46 2
         %63 = OpCompositeExtract %v4float %55 2
         %64 = OpFAdd %v4float %62 %63
         %65 = OpCompositeExtract %v4float %46 3
         %66 = OpCompositeExtract %v4float %55 3
         %67 = OpFAdd %v4float %65 %66
         %68 = OpCompositeConstruct %mat4v4float %58 %61 %64 %67
         %70 = OpAccessChain %_ptr_Input_float %inJointWeights %uint_2
         %71 = OpLoad %float %70
         %72 = OpAccessChain %_ptr_Input_float %inJointIndices %uint_2
         %73 = OpLoad %float %72
         %74 = OpConvertFToS %int %73
         %75 = OpAccessChain %_ptr_Uniform_mat4v4float %_ %int_0 %74
         %76 = OpLoad %mat4v4float %75
         %77 = OpMatrixTimesScalar %mat4v4float %76 %71
         %78 = OpCompositeExtract %v4float %68 0
         %79 = OpCompositeExtract %v4float %77 0
         %80 = OpFAdd %v4float %78 %79
         %81 = OpCompositeExtract %v4float %68 1
         %82 = OpCompositeExtract %v4float %77 1
         %83 = OpFAdd %v4float %81 %82
         %84 = OpCompositeExtract %v4float %68 2
         %85 = OpCompositeExtract %v4float %77 2
         %86 = OpFAdd %v4float %84 %85
         %87 = OpCompositeExtract %v4float %68 3
         %88 = OpCompositeExtract %v4float %77 3
         %89 = OpFAdd %v4float %87 %88
         %90 = OpCompositeConstruct %mat4v4float %80 %83 %86 %89
         %92 = OpAccessChain %_ptr_Input_float %inJointWeights %uint_3
         %93 = OpLoad %float %92
         %94 = OpAccessChain %_ptr_Input_float %inJointIndices %uint_3
         %95 = OpLoad %float %94
         %96 = OpConvertFToS %int %95
         %97 = OpAccessChain %_ptr_Uniform_mat4v4float %_ %int_0 %96
         %98 = OpLoad %mat4v4float %97
         %99 = OpMatrixTimesScalar %mat4v4float %98 %93
        %100 = OpCompositeExtract %v4float %90 0
        %101 = OpCompositeExtract %v4float %99 0
        %102 = OpFAdd %v4float %100 %101
        %103 = OpCompositeExtract %v4float %90 1
        %104 = OpCompositeExtract %v4float %99 1
        %105 = OpFAdd %v4float %103 %104
        %106 = OpCompositeExtract %v4float %90 2
        %107 = OpCompositeExtract %v4float %99 2
        %108 = OpFAdd %v4float %106 %107
        %109 = OpCompositeExtract %v4float %90 3
        %110 = OpCompositeExtract %v4float %99 3
        %111 = OpFAdd %v4float %109 %110
        %112 = OpCompositeConstruct %mat4v4float %102 %105 %108 %111
               OpStore %skinMat %112
        %120 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_0
        %121 = OpLoad %mat4v4float %120
        %123 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
        %124 = OpLoad %mat4v4float %123
        %125 = OpMatrixTimesMatrix %mat4v4float %121 %124
        %130 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
        %131 = OpLoad %mat4v4float %130
        %132 = OpMatrixTimesMatrix %mat4v4float %125 %131
        %133 = OpLoad %mat4v4float %skinMat
        %134 = OpMatrixTimesMatrix %mat4v4float %132 %133
        %136 = OpLoad %v3float %inPos
        %138 = OpCompositeExtract %float %136 0
        %139 = OpCompositeExtract %float %136 1
        %140 = OpCompositeExtract %float %136 2
        %141 = OpCompositeConstruct %v4float %138 %139 %140 %float_1
        %142 = OpMatrixTimesVector %v4float %134 %141
        %144 = OpAccessChain %_ptr_Output_v4float %__0 %int_0
               OpStore %144 %142
        %145 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
        %146 = OpLoad %mat4v4float %145
        %147 = OpAccessChain %_ptr_PushConstant_mat4v4float %primitive %int_0
        %148 = OpLoad %mat4v4float %147
        %149 = OpMatrixTimesMatrix %mat4v4float %146 %148
        %150 = OpLoad %mat4v4float %skinMat
        %151 = OpMatrixTimesMatrix %mat4v4float %149 %150
        %153 = OpCompositeExtract %v4float %151 0
        %154 = OpVectorShuffle %v3float %153 %153 0 1 2
        %155 = OpCompositeExtract %v4float %151 1
        %156 = OpVectorShuffle %v3float %155 %155 0 1 2
        %157 = OpCompositeExtract %v4float %151 2
        %158 = OpVectorShuffle %v3float %157 %157 0 1 2
        %159 = OpCompositeConstruct %mat3v3float %154 %156 %158
        %160 = OpExtInst %mat3v3float %1 MatrixInverse %159
        %161 = OpTranspose %mat3v3float %160
        %162 = OpLoad %v3float %inNormal
        %163 = OpMatrixTimesVector %v3float %161 %162
        %164 = OpExtInst %v3float %1 Normalize %163
               OpStore %outNormal %164
        %167 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
        %168 = OpLoad %mat4v4float %167
        %169 = OpLoad %v3float %inPos
        %170 = OpCompositeExtract %float %169 0
        %171 = OpCompositeExtract %float %169 1
        %172 = OpCompositeExtract %float %169 2
        %173 = OpCompositeConstruct %v4float %170 %171 %172 %float_1
        %174 = OpMatrixTimesVector %v4float %168 %173
               OpStore %pos %174
        %177 = OpAccessChain %_ptr_Uniform_mat4v4float %uboScene %int_1
        %178 = OpLoad %mat4v4float %177
        %179 = OpCompositeExtract %v4float %178 0
        %180 = OpVectorShuffle %v3float %179 %179 0 1 2
        %181 = OpCompositeExtract %v4float %178 1
        %182 = OpVectorShuffle %v3float %181 %181 0 1 2
        %183 = OpCompositeExtract %v4float %178 2
        %184 = OpVectorShuffle %v3float %183 %183 0 1 2
        %185 = OpCompositeConstruct %mat3v3float %180 %182 %184
        %188 = OpAccessChain %_ptr_Uniform_v4float %uboScene %int_2
        %189 = OpLoad %v4float %188
        %190 = OpVectorShuffle %v3float %189 %189 0 1 2
        %191 = OpMatrixTimesVector %v3float %185 %190
               OpStore %lPos %191
        %193 = OpLoad %v3float %lPos
        %194 = OpLoad %v4float %pos
        %195 = OpVectorShuffle %v3float %194 %194 0 1 2
        %196 = OpFSub %v3float %193 %195
               OpStore %outLightVec %196
        %198 = OpLoad %v4float %pos
        %199 = OpVectorShuffle %v3float %198 %198 0 1 2
        %200 = OpFNegate %v3float %199
               OpStore %outViewVec %200
               OpReturn
               OpFunctionEnd
