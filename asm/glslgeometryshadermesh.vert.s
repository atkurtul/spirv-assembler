; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 80
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
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
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
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
%_ptr_Function_v4float = OpTypePointer Function %v4float
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
         %70 = OpConstantComposite %v3float %float_1 %float_1 %float_1
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
         %30 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %31 = OpLoad %mat4v4float %30
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %34 = OpLoad %mat4v4float %33
         %35 = OpMatrixTimesMatrix %mat4v4float %31 %34
         %37 = OpLoad %v3float %inPos
         %39 = OpCompositeExtract %float %37 0
         %40 = OpCompositeExtract %float %37 1
         %41 = OpCompositeExtract %float %37 2
         %42 = OpCompositeConstruct %v4float %39 %40 %41 %float_1
         %43 = OpMatrixTimesVector %v4float %35 %42
         %45 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %45 %43
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %49 = OpLoad %mat4v4float %48
         %50 = OpLoad %v3float %inPos
         %51 = OpCompositeExtract %float %50 0
         %52 = OpCompositeExtract %float %50 1
         %53 = OpCompositeExtract %float %50 2
         %54 = OpCompositeConstruct %v4float %51 %52 %53 %float_1
         %55 = OpMatrixTimesVector %v4float %49 %54
               OpStore %pos %55
         %56 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %57 = OpLoad %mat4v4float %56
         %59 = OpCompositeExtract %v4float %57 0
         %60 = OpVectorShuffle %v3float %59 %59 0 1 2
         %61 = OpCompositeExtract %v4float %57 1
         %62 = OpVectorShuffle %v3float %61 %61 0 1 2
         %63 = OpCompositeExtract %v4float %57 2
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %65 = OpCompositeConstruct %mat3v3float %60 %62 %64
         %66 = OpLoad %v3float %inNormal
         %67 = OpMatrixTimesVector %v3float %65 %66
               OpStore %outNormal %67
               OpStore %lightPos %70
         %72 = OpLoad %v3float %lightPos
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
