; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 69
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %_ %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
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
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpDecorate %outUV Location 0
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
    %v3float = OpTypeVector %float 3
%mat3v3float = OpTypeMatrix %v3float 3
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %12 = OpLoad %v2float %inUV
               OpStore %outUV %12
         %27 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %28 = OpLoad %mat4v4float %27
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %31 = OpLoad %mat4v4float %30
         %34 = OpCompositeExtract %v4float %31 0
         %35 = OpVectorShuffle %v3float %34 %34 0 1 2
         %36 = OpCompositeExtract %v4float %31 1
         %37 = OpVectorShuffle %v3float %36 %36 0 1 2
         %38 = OpCompositeExtract %v4float %31 2
         %39 = OpVectorShuffle %v3float %38 %38 0 1 2
         %40 = OpCompositeConstruct %mat3v3float %35 %37 %39
         %43 = OpCompositeExtract %float %40 0 0
         %44 = OpCompositeExtract %float %40 0 1
         %45 = OpCompositeExtract %float %40 0 2
         %46 = OpCompositeExtract %float %40 1 0
         %47 = OpCompositeExtract %float %40 1 1
         %48 = OpCompositeExtract %float %40 1 2
         %49 = OpCompositeExtract %float %40 2 0
         %50 = OpCompositeExtract %float %40 2 1
         %51 = OpCompositeExtract %float %40 2 2
         %52 = OpCompositeConstruct %v4float %43 %44 %45 %float_0
         %53 = OpCompositeConstruct %v4float %46 %47 %48 %float_0
         %54 = OpCompositeConstruct %v4float %49 %50 %51 %float_0
         %55 = OpCompositeConstruct %v4float %float_0 %float_0 %float_0 %float_1
         %56 = OpCompositeConstruct %mat4v4float %52 %53 %54 %55
         %57 = OpMatrixTimesMatrix %mat4v4float %28 %56
         %60 = OpLoad %v4float %inPos
         %61 = OpVectorShuffle %v3float %60 %60 0 1 2
         %62 = OpCompositeExtract %float %61 0
         %63 = OpCompositeExtract %float %61 1
         %64 = OpCompositeExtract %float %61 2
         %65 = OpCompositeConstruct %v4float %62 %63 %64 %float_1
         %66 = OpMatrixTimesVector %v4float %57 %65
         %68 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %68 %66
               OpReturn
               OpFunctionEnd
