; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 100
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outAlpha %inAlpha %outType %inType %outRotation %inRotation %_ %inPos %inSize
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outAlpha "outAlpha"
               OpName %inAlpha "inAlpha"
               OpName %outType "outType"
               OpName %inType "inType"
               OpName %outRotation "outRotation"
               OpName %inRotation "inRotation"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "viewportDim"
               OpMemberName %UBO 3 "pointSize"
               OpName %ubo "ubo"
               OpName %inPos "inPos"
               OpName %spriteSize "spriteSize"
               OpName %inSize "inSize"
               OpName %eyePos "eyePos"
               OpName %projectedCorner "projectedCorner"
               OpDecorate %outColor Location 0
               OpDecorate %inColor Location 1
               OpDecorate %outAlpha Location 1
               OpDecorate %inAlpha Location 2
               OpDecorate %outType Flat
               OpDecorate %outType Location 2
               OpDecorate %inType Location 5
               OpDecorate %outRotation Location 3
               OpDecorate %inRotation Location 4
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 3 Offset 136
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %inPos Location 0
               OpDecorate %inSize Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
    %inColor = OpVariable %_ptr_Input_v4float Input
%_ptr_Output_float = OpTypePointer Output %float
   %outAlpha = OpVariable %_ptr_Output_float Output
%_ptr_Input_float = OpTypePointer Input %float
    %inAlpha = OpVariable %_ptr_Input_float Input
        %int = OpTypeInt 32 1
%_ptr_Output_int = OpTypePointer Output %int
    %outType = OpVariable %_ptr_Output_int Output
%_ptr_Input_int = OpTypePointer Input %int
     %inType = OpVariable %_ptr_Input_int Input
%outRotation = OpVariable %_ptr_Output_float Output
 %inRotation = OpVariable %_ptr_Input_float Input
%gl_PerVertex = OpTypeStruct %v4float %float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
    %v2float = OpTypeVector %float 2
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %v2float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %inPos = OpVariable %_ptr_Input_v4float Input
    %v3float = OpTypeVector %float 3
    %float_1 = OpConstant %float 1
%_ptr_Function_float = OpTypePointer Function %float
    %float_8 = OpConstant %float 8
     %inSize = OpVariable %_ptr_Input_float Input
%_ptr_Function_v4float = OpTypePointer Function %v4float
  %float_0_5 = OpConstant %float 0.5
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
     %uint_3 = OpConstant %uint 3
      %int_2 = OpConstant %int 2
     %uint_0 = OpConstant %uint 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
       %main = OpFunction %void None %3
          %5 = OpLabel
 %spriteSize = OpVariable %_ptr_Function_float Function
     %eyePos = OpVariable %_ptr_Function_v4float Function
%projectedCorner = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v4float %inColor
               OpStore %outColor %12
         %17 = OpLoad %float %inAlpha
               OpStore %outAlpha %17
         %23 = OpLoad %int %inType
               OpStore %outType %23
         %26 = OpLoad %float %inRotation
               OpStore %outRotation %26
         %37 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %38 = OpLoad %mat4v4float %37
         %40 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %41 = OpLoad %mat4v4float %40
         %42 = OpMatrixTimesMatrix %mat4v4float %38 %41
         %45 = OpLoad %v4float %inPos
         %46 = OpVectorShuffle %v3float %45 %45 0 1 2
         %48 = OpCompositeExtract %float %46 0
         %49 = OpCompositeExtract %float %46 1
         %50 = OpCompositeExtract %float %46 2
         %51 = OpCompositeConstruct %v4float %48 %49 %50 %float_1
         %52 = OpMatrixTimesVector %v4float %42 %51
         %53 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %53 %52
         %58 = OpLoad %float %inSize
         %59 = OpFMul %float %float_8 %58
               OpStore %spriteSize %59
         %62 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %63 = OpLoad %mat4v4float %62
         %64 = OpLoad %v4float %inPos
         %65 = OpVectorShuffle %v3float %64 %64 0 1 2
         %66 = OpCompositeExtract %float %65 0
         %67 = OpCompositeExtract %float %65 1
         %68 = OpCompositeExtract %float %65 2
         %69 = OpCompositeConstruct %v4float %66 %67 %68 %float_1
         %70 = OpMatrixTimesVector %v4float %63 %69
               OpStore %eyePos %70
         %72 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %73 = OpLoad %mat4v4float %72
         %75 = OpLoad %float %spriteSize
         %76 = OpFMul %float %float_0_5 %75
         %77 = OpLoad %float %spriteSize
         %78 = OpFMul %float %float_0_5 %77
         %81 = OpAccessChain %_ptr_Function_float %eyePos %uint_2
         %82 = OpLoad %float %81
         %84 = OpAccessChain %_ptr_Function_float %eyePos %uint_3
         %85 = OpLoad %float %84
         %86 = OpCompositeConstruct %v4float %76 %78 %82 %85
         %87 = OpMatrixTimesVector %v4float %73 %86
               OpStore %projectedCorner %87
         %91 = OpAccessChain %_ptr_Uniform_float %ubo %int_2 %uint_0
         %92 = OpLoad %float %91
         %93 = OpAccessChain %_ptr_Function_float %projectedCorner %uint_0
         %94 = OpLoad %float %93
         %95 = OpFMul %float %92 %94
         %96 = OpAccessChain %_ptr_Function_float %projectedCorner %uint_3
         %97 = OpLoad %float %96
         %98 = OpFDiv %float %95 %97
         %99 = OpAccessChain %_ptr_Output_float %_ %int_1
               OpStore %99 %98
               OpReturn
               OpFunctionEnd
