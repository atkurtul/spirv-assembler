; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 91
; Schema: 0
               OpCapability Shader
               OpCapability MultiView
               OpExtension "SPV_KHR_multiview"
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outNormal %gl_ViewIndex %inNormal %inPos %outLightVec %outViewVec %_
               OpSource GLSL 450
               OpSourceExtension "GL_EXT_multiview"
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outNormal "outNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "lightPos"
               OpName %ubo "ubo"
               OpName %gl_ViewIndex "gl_ViewIndex"
               OpName %inNormal "inNormal"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %worldPos "worldPos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 2
               OpDecorate %outNormal Location 0
               OpDecorate %_arr_mat4v4float_uint_2 ArrayStride 64
               OpDecorate %_arr_mat4v4float_uint_2_0 ArrayStride 64
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 128
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 256
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %gl_ViewIndex BuiltIn ViewIndex
               OpDecorate %inNormal Location 1
               OpDecorate %inPos Location 0
               OpDecorate %outLightVec Location 3
               OpDecorate %outViewVec Location 2
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
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
%_arr_mat4v4float_uint_2 = OpTypeArray %mat4v4float %uint_2
%_arr_mat4v4float_uint_2_0 = OpTypeArray %mat4v4float %uint_2
        %UBO = OpTypeStruct %_arr_mat4v4float_uint_2 %_arr_mat4v4float_uint_2_0 %v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
%_ptr_Input_int = OpTypePointer Input %int
%gl_ViewIndex = OpVariable %_ptr_Input_int Input
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%mat3v3float = OpTypeMatrix %v3float 3
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Function_v3float = OpTypePointer Function %v3float
      %int_2 = OpConstant %int 2
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
   %worldPos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %27 = OpLoad %int %gl_ViewIndex
         %29 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %27
         %30 = OpLoad %mat4v4float %29
         %32 = OpCompositeExtract %v4float %30 0
         %33 = OpVectorShuffle %v3float %32 %32 0 1 2
         %34 = OpCompositeExtract %v4float %30 1
         %35 = OpVectorShuffle %v3float %34 %34 0 1 2
         %36 = OpCompositeExtract %v4float %30 2
         %37 = OpVectorShuffle %v3float %36 %36 0 1 2
         %38 = OpCompositeConstruct %mat3v3float %33 %35 %37
         %40 = OpLoad %v3float %inNormal
         %41 = OpMatrixTimesVector %v3float %38 %40
               OpStore %outNormal %41
         %45 = OpLoad %v3float %inPos
         %47 = OpCompositeExtract %float %45 0
         %48 = OpCompositeExtract %float %45 1
         %49 = OpCompositeExtract %float %45 2
         %50 = OpCompositeConstruct %v4float %47 %48 %49 %float_1
               OpStore %pos %50
         %52 = OpLoad %int %gl_ViewIndex
         %53 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %52
         %54 = OpLoad %mat4v4float %53
         %55 = OpLoad %v4float %pos
         %56 = OpMatrixTimesVector %v4float %54 %55
               OpStore %worldPos %56
         %59 = OpLoad %int %gl_ViewIndex
         %60 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1 %59
         %61 = OpLoad %mat4v4float %60
         %64 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_2
         %65 = OpLoad %v4float %64
         %66 = OpMatrixTimesVector %v4float %61 %65
         %67 = OpCompositeExtract %float %66 0
         %68 = OpCompositeExtract %float %66 1
         %69 = OpCompositeExtract %float %66 2
         %70 = OpCompositeConstruct %v3float %67 %68 %69
               OpStore %lPos %70
         %72 = OpLoad %v3float %lPos
         %73 = OpLoad %v4float %worldPos
         %74 = OpVectorShuffle %v3float %73 %73 0 1 2
         %75 = OpFSub %v3float %72 %74
               OpStore %outLightVec %75
         %77 = OpLoad %v4float %worldPos
         %78 = OpVectorShuffle %v3float %77 %77 0 1 2
         %79 = OpFNegate %v3float %78
               OpStore %outViewVec %79
         %84 = OpLoad %int %gl_ViewIndex
         %85 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0 %84
         %86 = OpLoad %mat4v4float %85
         %87 = OpLoad %v4float %worldPos
         %88 = OpMatrixTimesVector %v4float %86 %87
         %90 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %90 %88
               OpReturn
               OpFunctionEnd
