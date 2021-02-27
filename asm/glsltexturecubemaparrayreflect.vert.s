; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 80
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %inPos %outPos %outNormal %inNormal %outLightVec %outViewVec
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
               OpMemberName %UBO 2 "invModel"
               OpMemberName %UBO 3 "lodBias"
               OpMemberName %UBO 4 "cubeMapIndex"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outPos "outPos"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
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
               OpMemberDecorate %UBO 4 Offset 196
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outPos Location 0
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 1
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Output_v3float = OpTypePointer Output %v3float
     %outPos = OpVariable %_ptr_Output_v3float Output
  %outNormal = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %float_0 = OpConstant %float 0
   %float_n5 = OpConstant %float -5
    %float_5 = OpConstant %float 5
         %72 = OpConstantComposite %v3float %float_0 %float_n5 %float_5
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %21 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %22 = OpLoad %mat4v4float %21
         %24 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %25 = OpLoad %mat4v4float %24
         %26 = OpMatrixTimesMatrix %mat4v4float %22 %25
         %30 = OpLoad %v3float %inPos
         %32 = OpCompositeExtract %float %30 0
         %33 = OpCompositeExtract %float %30 1
         %34 = OpCompositeExtract %float %30 2
         %35 = OpCompositeConstruct %v4float %32 %33 %34 %float_1
         %36 = OpMatrixTimesVector %v4float %26 %35
         %38 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %38 %36
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %42 = OpLoad %mat4v4float %41
         %43 = OpLoad %v3float %inPos
         %44 = OpCompositeExtract %float %43 0
         %45 = OpCompositeExtract %float %43 1
         %46 = OpCompositeExtract %float %43 2
         %47 = OpCompositeConstruct %v4float %44 %45 %46 %float_1
         %48 = OpMatrixTimesVector %v4float %42 %47
         %49 = OpCompositeExtract %float %48 0
         %50 = OpCompositeExtract %float %48 1
         %51 = OpCompositeExtract %float %48 2
         %52 = OpCompositeConstruct %v3float %49 %50 %51
               OpStore %outPos %52
         %54 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %55 = OpLoad %mat4v4float %54
         %57 = OpCompositeExtract %v4float %55 0
         %58 = OpVectorShuffle %v3float %57 %57 0 1 2
         %59 = OpCompositeExtract %v4float %55 1
         %60 = OpVectorShuffle %v3float %59 %59 0 1 2
         %61 = OpCompositeExtract %v4float %55 2
         %62 = OpVectorShuffle %v3float %61 %61 0 1 2
         %63 = OpCompositeConstruct %mat3v3float %58 %60 %62
         %65 = OpLoad %v3float %inNormal
         %66 = OpMatrixTimesVector %v3float %63 %65
               OpStore %outNormal %66
               OpStore %lightPos %72
         %74 = OpLoad %v3float %lightPos
         %75 = OpLoad %v3float %outPos
         %76 = OpFSub %v3float %74 %75
               OpStore %outLightVec %76
         %78 = OpLoad %v3float %outPos
         %79 = OpFNegate %v3float %78
               OpStore %outViewVec %79
               OpReturn
               OpFunctionEnd
