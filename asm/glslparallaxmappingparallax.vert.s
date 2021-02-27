; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 138
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outTangentFragPos %outUV %inUV %inNormal %inTangent %outTangentLightPos %outTangentViewPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpMemberName %UBO 3 "lightPos"
               OpMemberName %UBO 4 "cameraPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outTangentFragPos "outTangentFragPos"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %T "T"
               OpName %inTangent "inTangent"
               OpName %B "B"
               OpName %TBN "TBN"
               OpName %outTangentLightPos "outTangentLightPos"
               OpName %outTangentViewPos "outTangentViewPos"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
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
               OpMemberDecorate %UBO 4 Offset 208
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outTangentFragPos Location 3
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %inNormal Location 2
               OpDecorate %inTangent Location 3
               OpDecorate %outTangentLightPos Location 1
               OpDecorate %outTangentViewPos Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outTangentFragPos = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
  %inTangent = OpVariable %_ptr_Input_v4float Input
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
    %float_0 = OpConstant %float 0
%outTangentLightPos = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outTangentViewPos = OpVariable %_ptr_Output_v3float Output
      %int_4 = OpConstant %int 4
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %T = OpVariable %_ptr_Function_v3float Function
          %B = OpVariable %_ptr_Function_v3float Function
        %TBN = OpVariable %_ptr_Function_mat3v3float Function
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %22 = OpLoad %mat4v4float %21
         %24 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %25 = OpLoad %mat4v4float %24
         %26 = OpMatrixTimesMatrix %mat4v4float %22 %25
         %28 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %29 = OpLoad %mat4v4float %28
         %30 = OpMatrixTimesMatrix %mat4v4float %26 %29
         %34 = OpLoad %v3float %inPos
         %36 = OpCompositeExtract %float %34 0
         %37 = OpCompositeExtract %float %34 1
         %38 = OpCompositeExtract %float %34 2
         %39 = OpCompositeConstruct %v4float %36 %37 %38 %float_1
         %40 = OpMatrixTimesVector %v4float %30 %39
         %42 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %42 %40
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %46 = OpLoad %mat4v4float %45
         %47 = OpLoad %v3float %inPos
         %48 = OpCompositeExtract %float %47 0
         %49 = OpCompositeExtract %float %47 1
         %50 = OpCompositeExtract %float %47 2
         %51 = OpCompositeConstruct %v4float %48 %49 %50 %float_1
         %52 = OpMatrixTimesVector %v4float %46 %51
         %53 = OpCompositeExtract %float %52 0
         %54 = OpCompositeExtract %float %52 1
         %55 = OpCompositeExtract %float %52 2
         %56 = OpCompositeConstruct %v3float %53 %54 %55
               OpStore %outTangentFragPos %56
         %62 = OpLoad %v2float %inUV
               OpStore %outUV %62
         %65 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %66 = OpLoad %mat4v4float %65
         %68 = OpCompositeExtract %v4float %66 0
         %69 = OpVectorShuffle %v3float %68 %68 0 1 2
         %70 = OpCompositeExtract %v4float %66 1
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpCompositeExtract %v4float %66 2
         %73 = OpVectorShuffle %v3float %72 %72 0 1 2
         %74 = OpCompositeConstruct %mat3v3float %69 %71 %73
         %76 = OpLoad %v3float %inNormal
         %77 = OpMatrixTimesVector %v3float %74 %76
         %78 = OpExtInst %v3float %1 Normalize %77
               OpStore %N %78
         %80 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %81 = OpLoad %mat4v4float %80
         %82 = OpCompositeExtract %v4float %81 0
         %83 = OpVectorShuffle %v3float %82 %82 0 1 2
         %84 = OpCompositeExtract %v4float %81 1
         %85 = OpVectorShuffle %v3float %84 %84 0 1 2
         %86 = OpCompositeExtract %v4float %81 2
         %87 = OpVectorShuffle %v3float %86 %86 0 1 2
         %88 = OpCompositeConstruct %mat3v3float %83 %85 %87
         %91 = OpLoad %v4float %inTangent
         %92 = OpVectorShuffle %v3float %91 %91 0 1 2
         %93 = OpMatrixTimesVector %v3float %88 %92
         %94 = OpExtInst %v3float %1 Normalize %93
               OpStore %T %94
         %96 = OpLoad %v3float %N
         %97 = OpLoad %v3float %T
         %98 = OpExtInst %v3float %1 Cross %96 %97
         %99 = OpExtInst %v3float %1 Normalize %98
               OpStore %B %99
        %102 = OpLoad %v3float %T
        %103 = OpLoad %v3float %B
        %104 = OpLoad %v3float %N
        %106 = OpCompositeExtract %float %102 0
        %107 = OpCompositeExtract %float %102 1
        %108 = OpCompositeExtract %float %102 2
        %109 = OpCompositeExtract %float %103 0
        %110 = OpCompositeExtract %float %103 1
        %111 = OpCompositeExtract %float %103 2
        %112 = OpCompositeExtract %float %104 0
        %113 = OpCompositeExtract %float %104 1
        %114 = OpCompositeExtract %float %104 2
        %115 = OpCompositeConstruct %v3float %106 %107 %108
        %116 = OpCompositeConstruct %v3float %109 %110 %111
        %117 = OpCompositeConstruct %v3float %112 %113 %114
        %118 = OpCompositeConstruct %mat3v3float %115 %116 %117
        %119 = OpTranspose %mat3v3float %118
               OpStore %TBN %119
        %121 = OpLoad %mat3v3float %TBN
        %124 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
        %125 = OpLoad %v4float %124
        %126 = OpVectorShuffle %v3float %125 %125 0 1 2
        %127 = OpMatrixTimesVector %v3float %121 %126
               OpStore %outTangentLightPos %127
        %129 = OpLoad %mat3v3float %TBN
        %131 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_4
        %132 = OpLoad %v4float %131
        %133 = OpVectorShuffle %v3float %132 %132 0 1 2
        %134 = OpMatrixTimesVector %v3float %129 %133
               OpStore %outTangentViewPos %134
        %135 = OpLoad %mat3v3float %TBN
        %136 = OpLoad %v3float %outTangentFragPos
        %137 = OpMatrixTimesVector %v3float %135 %136
               OpStore %outTangentFragPos %137
               OpReturn
               OpFunctionEnd
