; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 53
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outNormal %inNormal %outColor %inColor %outUV %inUV %_ %inPos
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
               OpName %UBOMatrices "UBOMatrices"
               OpMemberName %UBOMatrices 0 "projection"
               OpMemberName %UBOMatrices 1 "view"
               OpMemberName %UBOMatrices 2 "model"
               OpName %uboMatrices "uboMatrices"
               OpName %inPos "inPos"
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBOMatrices 0 ColMajor
               OpMemberDecorate %UBOMatrices 0 Offset 0
               OpMemberDecorate %UBOMatrices 0 MatrixStride 16
               OpMemberDecorate %UBOMatrices 1 ColMajor
               OpMemberDecorate %UBOMatrices 1 Offset 64
               OpMemberDecorate %UBOMatrices 1 MatrixStride 16
               OpMemberDecorate %UBOMatrices 2 ColMajor
               OpMemberDecorate %UBOMatrices 2 Offset 128
               OpMemberDecorate %UBOMatrices 2 MatrixStride 16
               OpDecorate %UBOMatrices Block
               OpDecorate %uboMatrices DescriptorSet 0
               OpDecorate %uboMatrices Binding 0
               OpDecorate %inPos Location 0
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
%UBOMatrices = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBOMatrices = OpTypePointer Uniform %UBOMatrices
%uboMatrices = OpVariable %_ptr_Uniform_UBOMatrices Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %12 = OpLoad %v3float %inNormal
               OpStore %outNormal %12
         %15 = OpLoad %v3float %inColor
               OpStore %outColor %15
         %21 = OpLoad %v2float %inUV
               OpStore %outUV %21
         %33 = OpAccessChain %_ptr_Uniform_mat4v4float %uboMatrices %int_0
         %34 = OpLoad %mat4v4float %33
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %uboMatrices %int_1
         %37 = OpLoad %mat4v4float %36
         %38 = OpMatrixTimesMatrix %mat4v4float %34 %37
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %uboMatrices %int_2
         %41 = OpLoad %mat4v4float %40
         %42 = OpMatrixTimesMatrix %mat4v4float %38 %41
         %44 = OpLoad %v3float %inPos
         %46 = OpCompositeExtract %float %44 0
         %47 = OpCompositeExtract %float %44 1
         %48 = OpCompositeExtract %float %44 2
         %49 = OpCompositeConstruct %v4float %46 %47 %48 %float_1
         %50 = OpMatrixTimesVector %v4float %42 %49
         %52 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %52 %50
               OpReturn
               OpFunctionEnd
