; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 90
; Schema: 0
               OpCapability Shader
               OpCapability ClipDistance
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %_ %inPos %outEyePos %outLightVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
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
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %outEyePos "outEyePos"
               OpName %outLightVec "outLightVec"
               OpName %clipPlane "clipPlane"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 2
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 1
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %outEyePos Location 2
               OpDecorate %outLightVec Location 3
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outEyePos = OpVariable %_ptr_Output_v3float Output
%outLightVec = OpVariable %_ptr_Output_v3float Output
      %int_3 = OpConstant %int 3
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_0 = OpConstant %float 0
   %float_n1 = OpConstant %float -1
  %float_1_5 = OpConstant %float 1.5
         %80 = OpConstantComposite %v4float %float_0 %float_n1 %float_0 %float_1_5
%_ptr_Output_float = OpTypePointer Output %float
       %main = OpFunction %void None %3
          %5 = OpLabel
  %clipPlane = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %31 = OpLoad %mat4v4float %30
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %34 = OpLoad %mat4v4float %33
         %35 = OpMatrixTimesMatrix %mat4v4float %31 %34
         %37 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %38 = OpLoad %mat4v4float %37
         %39 = OpMatrixTimesMatrix %mat4v4float %35 %38
         %41 = OpLoad %v3float %inPos
         %43 = OpCompositeExtract %float %41 0
         %44 = OpCompositeExtract %float %41 1
         %45 = OpCompositeExtract %float %41 2
         %46 = OpCompositeConstruct %v4float %43 %44 %45 %float_1
         %47 = OpMatrixTimesVector %v4float %39 %46
         %49 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %49 %47
         %51 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %52 = OpLoad %mat4v4float %51
         %53 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %54 = OpLoad %mat4v4float %53
         %55 = OpMatrixTimesMatrix %mat4v4float %52 %54
         %56 = OpLoad %v3float %inPos
         %57 = OpCompositeExtract %float %56 0
         %58 = OpCompositeExtract %float %56 1
         %59 = OpCompositeExtract %float %56 2
         %60 = OpCompositeConstruct %v4float %57 %58 %59 %float_1
         %61 = OpMatrixTimesVector %v4float %55 %60
         %62 = OpCompositeExtract %float %61 0
         %63 = OpCompositeExtract %float %61 1
         %64 = OpCompositeExtract %float %61 2
         %65 = OpCompositeConstruct %v3float %62 %63 %64
               OpStore %outEyePos %65
         %69 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3
         %70 = OpLoad %v4float %69
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpLoad %v3float %outEyePos
         %73 = OpFSub %v3float %71 %72
         %74 = OpExtInst %v3float %1 Normalize %73
               OpStore %outLightVec %74
               OpStore %clipPlane %80
         %81 = OpLoad %v3float %inPos
         %82 = OpCompositeExtract %float %81 0
         %83 = OpCompositeExtract %float %81 1
         %84 = OpCompositeExtract %float %81 2
         %85 = OpCompositeConstruct %v4float %82 %83 %84 %float_1
         %86 = OpLoad %v4float %clipPlane
         %87 = OpDot %float %85 %86
         %89 = OpAccessChain %_ptr_Output_float %_ %int_2 %int_0
               OpStore %89 %87
               OpReturn
               OpFunctionEnd
