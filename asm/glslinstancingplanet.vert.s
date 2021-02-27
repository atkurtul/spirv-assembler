; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 99
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outUV %inUV %_ %inPos %outNormal %inNormal %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
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
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
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
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
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
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %18 = OpLoad %v2float %inUV
               OpStore %outUV %18
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %34 = OpLoad %mat4v4float %33
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %37 = OpLoad %mat4v4float %36
         %38 = OpMatrixTimesMatrix %mat4v4float %34 %37
         %40 = OpLoad %v3float %inPos
         %42 = OpCompositeExtract %float %40 0
         %43 = OpCompositeExtract %float %40 1
         %44 = OpCompositeExtract %float %40 2
         %45 = OpCompositeConstruct %v4float %42 %43 %44 %float_1
         %46 = OpMatrixTimesVector %v4float %38 %45
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
         %51 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %52 = OpLoad %mat4v4float %51
         %53 = OpLoad %v3float %inPos
         %54 = OpCompositeExtract %float %53 0
         %55 = OpCompositeExtract %float %53 1
         %56 = OpCompositeExtract %float %53 2
         %57 = OpCompositeConstruct %v4float %54 %55 %56 %float_1
         %58 = OpMatrixTimesVector %v4float %52 %57
               OpStore %pos %58
         %60 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %61 = OpLoad %mat4v4float %60
         %63 = OpCompositeExtract %v4float %61 0
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpCompositeExtract %v4float %61 1
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpCompositeExtract %v4float %61 2
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
         %69 = OpCompositeConstruct %mat3v3float %64 %66 %68
         %71 = OpLoad %v3float %inNormal
         %72 = OpMatrixTimesVector %v3float %69 %71
               OpStore %outNormal %72
         %75 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %76 = OpLoad %mat4v4float %75
         %77 = OpCompositeExtract %v4float %76 0
         %78 = OpVectorShuffle %v3float %77 %77 0 1 2
         %79 = OpCompositeExtract %v4float %76 1
         %80 = OpVectorShuffle %v3float %79 %79 0 1 2
         %81 = OpCompositeExtract %v4float %76 2
         %82 = OpVectorShuffle %v3float %81 %81 0 1 2
         %83 = OpCompositeConstruct %mat3v3float %78 %80 %82
         %86 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %87 = OpLoad %v4float %86
         %88 = OpVectorShuffle %v3float %87 %87 0 1 2
         %89 = OpMatrixTimesVector %v3float %83 %88
               OpStore %lPos %89
         %91 = OpLoad %v3float %lPos
         %92 = OpLoad %v4float %pos
         %93 = OpVectorShuffle %v3float %92 %92 0 1 2
         %94 = OpFSub %v3float %91 %93
               OpStore %outLightVec %94
         %96 = OpLoad %v4float %pos
         %97 = OpVectorShuffle %v3float %96 %96 0 1 2
         %98 = OpFNegate %v3float %97
               OpStore %outViewVec %98
               OpReturn
               OpFunctionEnd
