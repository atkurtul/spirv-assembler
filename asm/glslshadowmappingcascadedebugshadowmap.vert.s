; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 49
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %gl_VertexIndex %outCascadeIndex %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %gl_VertexIndex "gl_VertexIndex"
               OpName %outCascadeIndex "outCascadeIndex"
               OpName %PushConsts "PushConsts"
               OpMemberName %PushConsts 0 "position"
               OpMemberName %PushConsts 1 "cascadeIndex"
               OpName %pushConsts "pushConsts"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpDecorate %outUV Location 0
               OpDecorate %gl_VertexIndex BuiltIn VertexIndex
               OpDecorate %outCascadeIndex Location 1
               OpMemberDecorate %PushConsts 0 Offset 0
               OpMemberDecorate %PushConsts 1 Offset 16
               OpDecorate %PushConsts Block
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
%gl_VertexIndex = OpVariable %_ptr_Input_int Input
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
       %uint = OpTypeInt 32 0
%_ptr_Output_uint = OpTypePointer Output %uint
%outCascadeIndex = OpVariable %_ptr_Output_uint Output
    %v4float = OpTypeVector %float 4
 %PushConsts = OpTypeStruct %v4float %uint
%_ptr_PushConstant_PushConsts = OpTypePointer PushConstant %PushConsts
 %pushConsts = OpVariable %_ptr_PushConstant_PushConsts PushConstant
%_ptr_PushConstant_uint = OpTypePointer PushConstant %uint
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %13 = OpLoad %int %gl_VertexIndex
         %15 = OpShiftLeftLogical %int %13 %int_1
         %17 = OpBitwiseAnd %int %15 %int_2
         %18 = OpConvertSToF %float %17
         %19 = OpLoad %int %gl_VertexIndex
         %20 = OpBitwiseAnd %int %19 %int_2
         %21 = OpConvertSToF %float %20
         %22 = OpCompositeConstruct %v2float %18 %21
               OpStore %outUV %22
         %31 = OpAccessChain %_ptr_PushConstant_uint %pushConsts %int_1
         %32 = OpLoad %uint %31
               OpStore %outCascadeIndex %32
         %37 = OpLoad %v2float %outUV
         %39 = OpVectorTimesScalar %v2float %37 %float_2
         %41 = OpCompositeConstruct %v2float %float_1 %float_1
         %42 = OpFSub %v2float %39 %41
         %44 = OpCompositeExtract %float %42 0
         %45 = OpCompositeExtract %float %42 1
         %46 = OpCompositeConstruct %v4float %44 %45 %float_0 %float_1
         %48 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %48 %46
               OpReturn
               OpFunctionEnd
