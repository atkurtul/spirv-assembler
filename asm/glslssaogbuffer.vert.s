; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 83
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outUV %inUV %outPos %outNormal %inNormal %outColor %inColor
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
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outPos "outPos"
               OpName %normalMatrix "normalMatrix"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
               OpDecorate %outPos Location 3
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpDecorate %outColor Location 2
               OpDecorate %inColor Location 2
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_2 = OpConstant %int 2
      %int_1 = OpConstant %int 1
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
     %outPos = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
%normalMatrix = OpVariable %_ptr_Function_mat3v3float Function
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %22 = OpLoad %mat4v4float %21
         %24 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %25 = OpLoad %mat4v4float %24
         %26 = OpMatrixTimesMatrix %mat4v4float %22 %25
         %28 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %29 = OpLoad %mat4v4float %28
         %30 = OpMatrixTimesMatrix %mat4v4float %26 %29
         %33 = OpLoad %v4float %inPos
         %34 = OpMatrixTimesVector %v4float %30 %33
         %36 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %36 %34
         %42 = OpLoad %v2float %inUV
               OpStore %outUV %42
         %46 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %47 = OpLoad %mat4v4float %46
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %47 %49
         %51 = OpLoad %v4float %inPos
         %52 = OpMatrixTimesVector %v4float %50 %51
         %53 = OpCompositeExtract %float %52 0
         %54 = OpCompositeExtract %float %52 1
         %55 = OpCompositeExtract %float %52 2
         %56 = OpCompositeConstruct %v3float %53 %54 %55
               OpStore %outPos %56
         %60 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %61 = OpLoad %mat4v4float %60
         %62 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %63 = OpLoad %mat4v4float %62
         %64 = OpMatrixTimesMatrix %mat4v4float %61 %63
         %65 = OpCompositeExtract %v4float %64 0
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpCompositeExtract %v4float %64 1
         %68 = OpVectorShuffle %v3float %67 %67 0 1 2
         %69 = OpCompositeExtract %v4float %64 2
         %70 = OpVectorShuffle %v3float %69 %69 0 1 2
         %71 = OpCompositeConstruct %mat3v3float %66 %68 %70
         %72 = OpExtInst %mat3v3float %1 MatrixInverse %71
         %73 = OpTranspose %mat3v3float %72
               OpStore %normalMatrix %73
         %75 = OpLoad %mat3v3float %normalMatrix
         %78 = OpLoad %v3float %inNormal
         %79 = OpMatrixTimesVector %v3float %75 %78
               OpStore %outNormal %79
         %82 = OpLoad %v3float %inColor
               OpStore %outColor %82
               OpReturn
               OpFunctionEnd
