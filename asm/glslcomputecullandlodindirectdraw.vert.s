; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 80
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outNormal %inNormal %inPos %instanceScale %instancePos %_ %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %instanceScale "instanceScale"
               OpName %instancePos "instancePos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpName %ubo "ubo"
               OpName %wPos "wPos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %inPos Location 0
               OpDecorate %instanceScale Location 5
               OpDecorate %instancePos Location 4
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
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
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
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
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Input_float = OpTypePointer Input %float
%instanceScale = OpVariable %_ptr_Input_float Input
%instancePos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%gl_PerVertex = OpTypeStruct %v4float
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
%_ptr_Output_v4float = OpTypePointer Output %v4float
    %float_0 = OpConstant %float 0
   %float_10 = OpConstant %float 10
   %float_50 = OpConstant %float 50
         %69 = OpConstantComposite %v4float %float_0 %float_10 %float_50 %float_1
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
       %wPos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %15 = OpLoad %v3float %inNormal
               OpStore %outNormal %15
         %21 = OpLoad %v4float %inPos
         %22 = OpVectorShuffle %v3float %21 %21 0 1 2
         %25 = OpLoad %float %instanceScale
         %26 = OpVectorTimesScalar %v3float %22 %25
         %28 = OpLoad %v3float %instancePos
         %29 = OpFAdd %v3float %26 %28
         %31 = OpCompositeExtract %float %29 0
         %32 = OpCompositeExtract %float %29 1
         %33 = OpCompositeExtract %float %29 2
         %34 = OpCompositeConstruct %v4float %31 %32 %33 %float_1
               OpStore %pos %34
         %45 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %46 = OpLoad %mat4v4float %45
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %46 %49
         %51 = OpLoad %v4float %pos
         %52 = OpMatrixTimesVector %v4float %50 %51
         %54 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %54 %52
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %57 = OpLoad %mat4v4float %56
         %58 = OpLoad %v4float %pos
         %59 = OpVectorShuffle %v3float %58 %58 0 1 2
         %60 = OpCompositeExtract %float %59 0
         %61 = OpCompositeExtract %float %59 1
         %62 = OpCompositeExtract %float %59 2
         %63 = OpCompositeConstruct %v4float %60 %61 %62 %float_1
         %64 = OpMatrixTimesVector %v4float %57 %63
               OpStore %wPos %64
               OpStore %lPos %69
         %71 = OpLoad %v4float %lPos
         %72 = OpVectorShuffle %v3float %71 %71 0 1 2
         %73 = OpLoad %v4float %pos
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpFSub %v3float %72 %74
               OpStore %outLightVec %75
         %77 = OpLoad %v4float %pos
         %78 = OpVectorShuffle %v3float %77 %77 0 1 2
         %79 = OpFNegate %v3float %78
               OpStore %outViewVec %79
               OpReturn
               OpFunctionEnd
