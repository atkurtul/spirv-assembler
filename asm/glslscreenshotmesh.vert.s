; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 83
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %_ %inPos %outLightVec %outViewVec
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
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %pos "pos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
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
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
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
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_1 = OpConstant %float 1
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %float_n1 = OpConstant %float -1
         %73 = OpConstantComposite %v3float %float_1 %float_n1 %float_1
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %27 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %28 = OpLoad %mat4v4float %27
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %31 = OpLoad %mat4v4float %30
         %32 = OpMatrixTimesMatrix %mat4v4float %28 %31
         %34 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %35 = OpLoad %mat4v4float %34
         %36 = OpMatrixTimesMatrix %mat4v4float %32 %35
         %39 = OpLoad %v4float %inPos
         %40 = OpMatrixTimesVector %v4float %36 %39
         %42 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %42 %40
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %46 = OpLoad %mat4v4float %45
         %47 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %48 = OpLoad %mat4v4float %47
         %49 = OpMatrixTimesMatrix %mat4v4float %46 %48
         %50 = OpLoad %v4float %inPos
         %51 = OpVectorShuffle %v3float %50 %50 0 1 2
         %53 = OpCompositeExtract %float %51 0
         %54 = OpCompositeExtract %float %51 1
         %55 = OpCompositeExtract %float %51 2
         %56 = OpCompositeConstruct %v4float %53 %54 %55 %float_1
         %57 = OpMatrixTimesVector %v4float %49 %56
               OpStore %pos %57
         %58 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %59 = OpLoad %mat4v4float %58
         %61 = OpCompositeExtract %v4float %59 0
         %62 = OpVectorShuffle %v3float %61 %61 0 1 2
         %63 = OpCompositeExtract %v4float %59 1
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpCompositeExtract %v4float %59 2
         %66 = OpVectorShuffle %v3float %65 %65 0 1 2
         %67 = OpCompositeConstruct %mat3v3float %62 %64 %66
         %68 = OpLoad %v3float %inNormal
         %69 = OpMatrixTimesVector %v3float %67 %68
               OpStore %outNormal %69
               OpStore %lightPos %73
         %75 = OpLoad %v3float %lightPos
         %76 = OpLoad %v4float %pos
         %77 = OpVectorShuffle %v3float %76 %76 0 1 2
         %78 = OpFSub %v3float %75 %77
               OpStore %outLightVec %78
         %80 = OpLoad %v4float %pos
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpFNegate %v3float %81
               OpStore %outViewVec %82
               OpReturn
               OpFunctionEnd
