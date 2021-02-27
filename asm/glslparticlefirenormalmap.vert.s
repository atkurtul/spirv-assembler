; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 167
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %outLightDir %inNormal %inTangent %outLightVec %outLightVecB %outViewVec %outUV %inUV %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %vertexPosition "vertexPosition"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "normal"
               OpMemberName %UBO 3 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outLightDir "outLightDir"
               OpName %biTangent "biTangent"
               OpName %inNormal "inNormal"
               OpName %inTangent "inTangent"
               OpName %tbnMatrix "tbnMatrix"
               OpName %outLightVec "outLightVec"
               OpName %lightDist "lightDist"
               OpName %outLightVecB "outLightVecB"
               OpName %outViewVec "outViewVec"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outLightDir Location 3
               OpDecorate %inNormal Location 2
               OpDecorate %inTangent Location 3
               OpDecorate %outLightVec Location 1
               OpDecorate %outLightVecB Location 2
               OpDecorate %outViewVec Location 4
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outLightDir = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
      %int_0 = OpConstant %int 0
      %int_2 = OpConstant %int 2
%outLightVec = OpVariable %_ptr_Output_v3float Output
%outLightVecB = OpVariable %_ptr_Output_v3float Output
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Output_float = OpTypePointer Output %float
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
 %outViewVec = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
%vertexPosition = OpVariable %_ptr_Function_v3float Function
  %biTangent = OpVariable %_ptr_Function_v3float Function
  %tbnMatrix = OpVariable %_ptr_Function_mat3v3float Function
  %lightDist = OpVariable %_ptr_Function_v3float Function
         %18 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %19 = OpLoad %mat4v4float %18
         %22 = OpLoad %v3float %inPos
         %24 = OpCompositeExtract %float %22 0
         %25 = OpCompositeExtract %float %22 1
         %26 = OpCompositeExtract %float %22 2
         %27 = OpCompositeConstruct %v4float %24 %25 %26 %float_1
         %28 = OpMatrixTimesVector %v4float %19 %27
         %29 = OpCompositeExtract %float %28 0
         %30 = OpCompositeExtract %float %28 1
         %31 = OpCompositeExtract %float %28 2
         %32 = OpCompositeConstruct %v3float %29 %30 %31
               OpStore %vertexPosition %32
         %37 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %38 = OpLoad %v4float %37
         %39 = OpVectorShuffle %v3float %38 %38 0 1 2
         %40 = OpLoad %v3float %vertexPosition
         %41 = OpFSub %v3float %39 %40
         %42 = OpExtInst %v3float %1 Normalize %41
               OpStore %outLightDir %42
         %45 = OpLoad %v3float %inNormal
         %48 = OpLoad %v4float %inTangent
         %49 = OpVectorShuffle %v3float %48 %48 0 1 2
         %50 = OpExtInst %v3float %1 Cross %45 %49
               OpStore %biTangent %50
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %57 = OpLoad %mat4v4float %56
         %58 = OpCompositeExtract %v4float %57 0
         %59 = OpVectorShuffle %v3float %58 %58 0 1 2
         %60 = OpCompositeExtract %v4float %57 1
         %61 = OpVectorShuffle %v3float %60 %60 0 1 2
         %62 = OpCompositeExtract %v4float %57 2
         %63 = OpVectorShuffle %v3float %62 %62 0 1 2
         %64 = OpCompositeConstruct %mat3v3float %59 %61 %63
         %65 = OpLoad %v4float %inTangent
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpMatrixTimesVector %v3float %64 %66
         %68 = OpAccessChain %_ptr_Function_v3float %tbnMatrix %int_0
               OpStore %68 %67
         %69 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %70 = OpLoad %mat4v4float %69
         %71 = OpCompositeExtract %v4float %70 0
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpCompositeExtract %v4float %70 1
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpCompositeExtract %v4float %70 2
         %76 = OpVectorShuffle %v3float %75 %75 0 1 2
         %77 = OpCompositeConstruct %mat3v3float %72 %74 %76
         %78 = OpLoad %v3float %biTangent
         %79 = OpMatrixTimesVector %v3float %77 %78
         %80 = OpAccessChain %_ptr_Function_v3float %tbnMatrix %int_1
               OpStore %80 %79
         %81 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %82 = OpLoad %mat4v4float %81
         %83 = OpCompositeExtract %v4float %82 0
         %84 = OpVectorShuffle %v3float %83 %83 0 1 2
         %85 = OpCompositeExtract %v4float %82 1
         %86 = OpVectorShuffle %v3float %85 %85 0 1 2
         %87 = OpCompositeExtract %v4float %82 2
         %88 = OpVectorShuffle %v3float %87 %87 0 1 2
         %89 = OpCompositeConstruct %mat3v3float %84 %86 %88
         %90 = OpLoad %v3float %inNormal
         %91 = OpMatrixTimesVector %v3float %89 %90
         %92 = OpAccessChain %_ptr_Function_v3float %tbnMatrix %int_2
               OpStore %92 %91
         %94 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %95 = OpLoad %v4float %94
         %96 = OpVectorShuffle %v3float %95 %95 0 1 2
         %97 = OpLoad %v3float %vertexPosition
         %98 = OpFSub %v3float %96 %97
         %99 = OpCompositeExtract %float %98 0
        %100 = OpCompositeExtract %float %98 1
        %101 = OpCompositeExtract %float %98 2
        %102 = OpCompositeConstruct %v3float %99 %100 %101
        %103 = OpLoad %mat3v3float %tbnMatrix
        %104 = OpVectorTimesMatrix %v3float %102 %103
               OpStore %outLightVec %104
        %106 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
        %107 = OpLoad %v4float %106
        %108 = OpVectorShuffle %v3float %107 %107 0 1 2
        %109 = OpLoad %v3float %inPos
        %110 = OpFSub %v3float %108 %109
               OpStore %lightDist %110
        %112 = OpLoad %v4float %inTangent
        %113 = OpVectorShuffle %v3float %112 %112 0 1 2
        %114 = OpLoad %v3float %lightDist
        %115 = OpDot %float %113 %114
        %119 = OpAccessChain %_ptr_Output_float %outLightVecB %uint_0
               OpStore %119 %115
        %120 = OpLoad %v3float %biTangent
        %121 = OpLoad %v3float %lightDist
        %122 = OpDot %float %120 %121
        %124 = OpAccessChain %_ptr_Output_float %outLightVecB %uint_1
               OpStore %124 %122
        %125 = OpLoad %v3float %inNormal
        %126 = OpLoad %v3float %lightDist
        %127 = OpDot %float %125 %126
        %129 = OpAccessChain %_ptr_Output_float %outLightVecB %uint_2
               OpStore %129 %127
        %131 = OpLoad %v4float %inTangent
        %132 = OpVectorShuffle %v3float %131 %131 0 1 2
        %133 = OpLoad %v3float %inPos
        %134 = OpDot %float %132 %133
        %135 = OpAccessChain %_ptr_Output_float %outViewVec %uint_0
               OpStore %135 %134
        %136 = OpLoad %v3float %biTangent
        %137 = OpLoad %v3float %inPos
        %138 = OpDot %float %136 %137
        %139 = OpAccessChain %_ptr_Output_float %outViewVec %uint_1
               OpStore %139 %138
        %140 = OpLoad %v3float %inNormal
        %141 = OpLoad %v3float %inPos
        %142 = OpDot %float %140 %141
        %143 = OpAccessChain %_ptr_Output_float %outViewVec %uint_2
               OpStore %143 %142
        %149 = OpLoad %v2float %inUV
               OpStore %outUV %149
        %154 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %155 = OpLoad %mat4v4float %154
        %156 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %157 = OpLoad %mat4v4float %156
        %158 = OpMatrixTimesMatrix %mat4v4float %155 %157
        %159 = OpLoad %v3float %inPos
        %160 = OpCompositeExtract %float %159 0
        %161 = OpCompositeExtract %float %159 1
        %162 = OpCompositeExtract %float %159 2
        %163 = OpCompositeConstruct %v4float %160 %161 %162 %float_1
        %164 = OpMatrixTimesVector %v4float %158 %163
        %166 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %166 %164
               OpReturn
               OpFunctionEnd
