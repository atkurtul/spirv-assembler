; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 38
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %outColor %outGradientPos %inGradientPos %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpName %_ ""
               OpName %outColor "outColor"
               OpName %outGradientPos "outGradientPos"
               OpName %inGradientPos "inGradientPos"
               OpName %inPos "inPos"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpDecorate %gl_PerVertex Block
               OpDecorate %outColor Location 0
               OpDecorate %outGradientPos Location 1
               OpDecorate %inGradientPos Location 1
               OpDecorate %inPos Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float %float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_1 = OpConstant %int 1
    %float_8 = OpConstant %float 8
%_ptr_Output_float = OpTypePointer Output %float
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %outColor = OpVariable %_ptr_Output_v4float Output
%float_0_0350000001 = OpConstant %float 0.0350000001
         %19 = OpConstantComposite %v4float %float_0_0350000001 %float_0_0350000001 %float_0_0350000001 %float_0_0350000001
%outGradientPos = OpVariable %_ptr_Output_float Output
%_ptr_Input_v4float = OpTypePointer Input %v4float
%inGradientPos = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
      %int_0 = OpConstant %int 0
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
      %inPos = OpVariable %_ptr_Input_v2float Input
    %float_1 = OpConstant %float 1
       %main = OpFunction %void None %3
          %5 = OpLabel
         %15 = OpAccessChain %_ptr_Output_float %_ %int_1
               OpStore %15 %float_8
               OpStore %outColor %19
         %26 = OpAccessChain %_ptr_Input_float %inGradientPos %uint_0
         %27 = OpLoad %float %26
               OpStore %outGradientPos %27
         %32 = OpLoad %v2float %inPos
         %34 = OpCompositeExtract %float %32 0
         %35 = OpCompositeExtract %float %32 1
         %36 = OpCompositeConstruct %v4float %34 %35 %float_1 %float_1
         %37 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %37 %36
               OpReturn
               OpFunctionEnd
