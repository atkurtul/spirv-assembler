; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 105
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inPos %_ %outLightVec %outViewVec %inColor
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outColor "outColor"
               OpName %PushBlock "PushBlock"
               OpMemberName %PushBlock 0 "baseColorFactor"
               OpName %material "material"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "model"
               OpName %ubo "ubo"
               OpName %Node "Node"
               OpMemberName %Node 0 "matrix"
               OpName %node "node"
               OpName %localpos "localpos"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %inColor "inColor"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpMemberDecorate %PushBlock 0 Offset 0
               OpDecorate %PushBlock Block
               OpDecorate %inPos Location 0
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
               OpMemberDecorate %Node 0 ColMajor
               OpMemberDecorate %Node 0 Offset 0
               OpMemberDecorate %Node 0 MatrixStride 16
               OpDecorate %Node Block
               OpDecorate %node DescriptorSet 1
               OpDecorate %node Binding 0
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
               OpDecorate %inColor Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
  %PushBlock = OpTypeStruct %v4float
%_ptr_PushConstant_PushBlock = OpTypePointer PushConstant %PushBlock
   %material = OpVariable %_ptr_PushConstant_PushBlock PushConstant
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_PushConstant_v4float = OpTypePointer PushConstant %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
       %Node = OpTypeStruct %mat4v4float
%_ptr_Uniform_Node = OpTypePointer Uniform %Node
       %node = OpVariable %_ptr_Uniform_Node Uniform
%_ptr_Output_v4float = OpTypePointer Output %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %float_10 = OpConstant %float 10
  %float_n10 = OpConstant %float -10
         %94 = OpConstantComposite %v3float %float_10 %float_n10 %float_10
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
   %localpos = OpVariable %_ptr_Function_v4float Function
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %21 = OpAccessChain %_ptr_PushConstant_v4float %material %int_0
         %22 = OpLoad %v4float %21
         %23 = OpVectorShuffle %v3float %22 %22 0 1 2
               OpStore %outColor %23
         %27 = OpLoad %v3float %inPos
         %29 = OpCompositeExtract %float %27 0
         %30 = OpCompositeExtract %float %27 1
         %31 = OpCompositeExtract %float %27 2
         %32 = OpCompositeConstruct %v4float %29 %30 %31 %float_1
               OpStore %pos %32
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %42 = OpLoad %mat4v4float %41
         %44 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %45 = OpLoad %mat4v4float %44
         %46 = OpMatrixTimesMatrix %mat4v4float %42 %45
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %46 %49
         %54 = OpAccessChain %_ptr_Uniform_mat4v4float %node %int_0
         %55 = OpLoad %mat4v4float %54
         %56 = OpMatrixTimesMatrix %mat4v4float %50 %55
         %57 = OpLoad %v4float %pos
         %58 = OpMatrixTimesVector %v4float %56 %57
         %60 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %60 %58
         %61 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %62 = OpLoad %mat4v4float %61
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %64 = OpLoad %mat4v4float %63
         %65 = OpMatrixTimesMatrix %mat4v4float %62 %64
         %66 = OpAccessChain %_ptr_Uniform_mat4v4float %node %int_0
         %67 = OpLoad %mat4v4float %66
         %68 = OpMatrixTimesMatrix %mat4v4float %65 %67
         %70 = OpCompositeExtract %v4float %68 0
         %71 = OpVectorShuffle %v3float %70 %70 0 1 2
         %72 = OpCompositeExtract %v4float %68 1
         %73 = OpVectorShuffle %v3float %72 %72 0 1 2
         %74 = OpCompositeExtract %v4float %68 2
         %75 = OpVectorShuffle %v3float %74 %74 0 1 2
         %76 = OpCompositeConstruct %mat3v3float %71 %73 %75
         %77 = OpLoad %v3float %inNormal
         %78 = OpMatrixTimesVector %v3float %76 %77
               OpStore %outNormal %78
         %80 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %81 = OpLoad %mat4v4float %80
         %82 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %83 = OpLoad %mat4v4float %82
         %84 = OpMatrixTimesMatrix %mat4v4float %81 %83
         %85 = OpAccessChain %_ptr_Uniform_mat4v4float %node %int_0
         %86 = OpLoad %mat4v4float %85
         %87 = OpMatrixTimesMatrix %mat4v4float %84 %86
         %88 = OpLoad %v4float %pos
         %89 = OpMatrixTimesVector %v4float %87 %88
               OpStore %localpos %89
               OpStore %lightPos %94
         %96 = OpLoad %v3float %lightPos
         %97 = OpLoad %v4float %localpos
         %98 = OpVectorShuffle %v3float %97 %97 0 1 2
         %99 = OpFSub %v3float %96 %98
               OpStore %outLightVec %99
        %101 = OpLoad %v4float %localpos
        %102 = OpVectorShuffle %v3float %101 %101 0 1 2
        %103 = OpFNegate %v3float %102
               OpStore %outViewVec %103
               OpReturn
               OpFunctionEnd
