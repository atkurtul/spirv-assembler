; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 100
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %inUV %_ %inPos %outLightVec %outViewVec
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
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
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
               OpMemberDecorate %UBO 2 Offset 128
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
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
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %37 = OpLoad %mat4v4float %36
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %40 = OpLoad %mat4v4float %39
         %41 = OpMatrixTimesMatrix %mat4v4float %37 %40
         %43 = OpLoad %v3float %inPos
         %45 = OpCompositeExtract %float %43 0
         %46 = OpCompositeExtract %float %43 1
         %47 = OpCompositeExtract %float %43 2
         %48 = OpCompositeConstruct %v4float %45 %46 %47 %float_1
         %49 = OpMatrixTimesVector %v4float %41 %48
         %51 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %51 %49
         %54 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %55 = OpLoad %mat4v4float %54
         %56 = OpLoad %v3float %inPos
         %57 = OpCompositeExtract %float %56 0
         %58 = OpCompositeExtract %float %56 1
         %59 = OpCompositeExtract %float %56 2
         %60 = OpCompositeConstruct %v4float %57 %58 %59 %float_1
         %61 = OpMatrixTimesVector %v4float %55 %60
               OpStore %pos %61
         %62 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %63 = OpLoad %mat4v4float %62
         %65 = OpCompositeExtract %v4float %63 0
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpCompositeExtract %v4float %63 1
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
         %69 = OpCompositeExtract %v4float %63 2
         %70 = OpVectorShuffle %v3float %69 %69 0 1 2
         %71 = OpCompositeConstruct %mat3v3float %66 %68 %70
         %72 = OpLoad %v3float %inNormal
         %73 = OpMatrixTimesVector %v3float %71 %72
               OpStore %outNormal %73
         %76 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %77 = OpLoad %mat4v4float %76
         %78 = OpCompositeExtract %v4float %77 0
         %79 = OpVectorShuffle %v3float %78 %78 0 1 2
         %80 = OpCompositeExtract %v4float %77 1
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpCompositeExtract %v4float %77 2
         %83 = OpVectorShuffle %v3float %82 %82 0 1 2
         %84 = OpCompositeConstruct %mat3v3float %79 %81 %83
         %87 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %88 = OpLoad %v4float %87
         %89 = OpVectorShuffle %v3float %88 %88 0 1 2
         %90 = OpMatrixTimesVector %v3float %84 %89
               OpStore %lPos %90
         %92 = OpLoad %v3float %lPos
         %93 = OpLoad %v4float %pos
         %94 = OpVectorShuffle %v3float %93 %93 0 1 2
         %95 = OpFSub %v3float %92 %94
               OpStore %outLightVec %95
         %97 = OpLoad %v4float %pos
         %98 = OpVectorShuffle %v3float %97 %97 0 1 2
         %99 = OpFNegate %v3float %98
               OpStore %outViewVec %99
               OpReturn
               OpFunctionEnd
