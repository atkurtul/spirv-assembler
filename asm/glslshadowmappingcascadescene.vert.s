; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 77
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outNormal %inNormal %outUV %inUV %inPos %outPos %outViewPos %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "position"
               OpMemberName %PushConsts 1 "cascadeIndex"
               OpName %pushConsts "pushConsts"
               OpName %outPos "outPos"
               OpName %outViewPos "outViewPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpName %ubo "ubo"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpDecorate %outUV Location 4
               OpDecorate %inUV Location 1
               OpDecorate %inPos Location 0
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 1 Offset 16
               OpDecorate %PushConsts Block
               OpDecorate %outPos Location 3
               OpDecorate %outViewPos Location 2
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
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
 %PushConsts = OpTypeStruct %v4float %uint
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v4float = OpTypePointer PushConstant %v4float
     %outPos = OpVariable %_ptr_Output_v3float Output
 %outViewPos = OpVariable %_ptr_Output_v3float Output
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
    %float_1 = OpConstant %float 1
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %15 = OpLoad %v3float %inNormal
               OpStore %outNormal %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %25 = OpLoad %v3float %inPos
         %34 = OpAccessChain %_ptr_PushConstant_v4float %pushConsts %int_0
         %35 = OpLoad %v4float %34
         %36 = OpVectorShuffle %v3float %35 %35 0 1 2
         %37 = OpFAdd %v3float %25 %36
               OpStore %pos %37
         %39 = OpLoad %v3float %pos
               OpStore %outPos %39
         %47 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %48 = OpLoad %mat4v4float %47
         %49 = OpLoad %v3float %pos
         %51 = OpCompositeExtract %float %49 0
         %52 = OpCompositeExtract %float %49 1
         %53 = OpCompositeExtract %float %49 2
         %54 = OpCompositeConstruct %v4float %51 %52 %53 %float_1
         %55 = OpMatrixTimesVector %v4float %48 %54
         %56 = OpVectorShuffle %v3float %55 %55 0 1 2
               OpStore %outViewPos %56
         %60 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %61 = OpLoad %mat4v4float %60
         %62 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %63 = OpLoad %mat4v4float %62
         %64 = OpMatrixTimesMatrix %mat4v4float %61 %63
         %66 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %67 = OpLoad %mat4v4float %66
         %68 = OpMatrixTimesMatrix %mat4v4float %64 %67
         %69 = OpLoad %v3float %pos
         %70 = OpCompositeExtract %float %69 0
         %71 = OpCompositeExtract %float %69 1
         %72 = OpCompositeExtract %float %69 2
         %73 = OpCompositeConstruct %v4float %70 %71 %72 %float_1
         %74 = OpMatrixTimesVector %v4float %68 %73
         %76 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %76 %74
               OpReturn
               OpFunctionEnd
