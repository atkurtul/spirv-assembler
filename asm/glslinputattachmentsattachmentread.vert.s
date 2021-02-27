; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 37
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %_ %gl_VertexIndex
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %gl_VertexIndex "gl_VertexIndex"
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %gl_VertexIndex BuiltIn VertexIndex
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %int = OpTypeInt 32 1
      %int_0 = OpConstant %int 0
%_ptr_Input_int = OpTypePointer Input %int
%gl_VertexIndex = OpVariable %_ptr_Input_int Input
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %v2float = OpTypeVector %float 2
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %15 = OpLoad %int %gl_VertexIndex
         %17 = OpShiftLeftLogical %int %15 %int_1
         %19 = OpBitwiseAnd %int %17 %int_2
         %20 = OpConvertSToF %float %19
         %21 = OpLoad %int %gl_VertexIndex
         %22 = OpBitwiseAnd %int %21 %int_2
         %23 = OpConvertSToF %float %22
         %25 = OpCompositeConstruct %v2float %20 %23
         %27 = OpVectorTimesScalar %v2float %25 %float_2
         %29 = OpCompositeConstruct %v2float %float_1 %float_1
         %30 = OpFSub %v2float %27 %29
         %32 = OpCompositeExtract %float %30 0
         %33 = OpCompositeExtract %float %30 1
         %34 = OpCompositeConstruct %v4float %32 %33 %float_0 %float_1
         %36 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %36 %34
               OpReturn
               OpFunctionEnd
