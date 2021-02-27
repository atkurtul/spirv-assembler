; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 87
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
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %lightPos "lightPos"
               OpName %pos "pos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpDecorate %outColor Location 2
               OpDecorate %inColor Location 2
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
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
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %float_n5 = OpConstant %float -5
    %float_0 = OpConstant %float 0
         %53 = OpConstantComposite %v3float %float_n5 %float_n5 %float_0
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %lightPos = OpVariable %_ptr_Function_v3float Function
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %34 = OpLoad %mat4v4float %33
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %37 = OpLoad %mat4v4float %36
         %38 = OpMatrixTimesMatrix %mat4v4float %34 %37
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %41 = OpLoad %mat4v4float %40
         %42 = OpMatrixTimesMatrix %mat4v4float %38 %41
         %45 = OpLoad %v4float %inPos
         %46 = OpMatrixTimesVector %v4float %42 %45
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
               OpStore %lightPos %53
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %57 = OpLoad %mat4v4float %56
         %58 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %59 = OpLoad %mat4v4float %58
         %60 = OpMatrixTimesMatrix %mat4v4float %57 %59
         %61 = OpLoad %v4float %inPos
         %62 = OpMatrixTimesVector %v4float %60 %61
               OpStore %pos %62
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %64 = OpLoad %mat4v4float %63
         %65 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %66 = OpLoad %mat4v4float %65
         %67 = OpMatrixTimesMatrix %mat4v4float %64 %66
         %69 = OpCompositeExtract %v4float %67 0
         %70 = OpVectorShuffle %v3float %69 %69 0 1 2
         %71 = OpCompositeExtract %v4float %67 1
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpCompositeExtract %v4float %67 2
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpCompositeConstruct %mat3v3float %70 %72 %74
         %76 = OpLoad %v3float %inNormal
         %77 = OpMatrixTimesVector %v3float %75 %76
               OpStore %outNormal %77
         %79 = OpLoad %v3float %lightPos
         %80 = OpLoad %v4float %pos
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpFSub %v3float %79 %81
               OpStore %outLightVec %82
         %84 = OpLoad %v4float %pos
         %85 = OpVectorShuffle %v3float %84 %84 0 1 2
         %86 = OpFNegate %v3float %85
               OpStore %outViewVec %86
               OpReturn
               OpFunctionEnd
