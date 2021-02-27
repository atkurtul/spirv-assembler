; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 91
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outPosition %inPos %gl_FragCoord %outNormal %inNormal %outAlbedo %inColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %linearDepth_f1_ "linearDepth(f1;"
               OpName %depth "depth"
               OpName %z "z"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "nearPlane"
               OpMemberName %UBO 4 "farPlane"
               OpName %ubo "ubo"
               OpName %outPosition "outPosition"
               OpName %inPos "inPos"
               OpName %gl_FragCoord "gl_FragCoord"
               OpName %param "param"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outAlbedo "outAlbedo"
               OpName %inColor "inColor"
               OpName %inUV "inUV"
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpMemberDecorate %UBO 3 Offset 192
               OpMemberDecorate %UBO 4 Offset 196
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outPosition Location 0
               OpDecorate %inPos Location 3
               OpDecorate %gl_FragCoord BuiltIn FragCoord
               OpDecorate %outNormal Location 1
               OpDecorate %inNormal Location 0
               OpDecorate %outAlbedo Location 2
               OpDecorate %inColor Location 2
               OpDecorate %inUV Location 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %8 = OpTypeFunction %float %_ptr_Function_float
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
      %int_4 = OpConstant %int 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outPosition = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_FragCoord = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_2 = OpConstant %uint 2
%_ptr_Input_float = OpTypePointer Input %float
  %outNormal = OpVariable %_ptr_Output_v4float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
  %float_0_5 = OpConstant %float 0.5
  %outAlbedo = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %param = OpVariable %_ptr_Function_float Function
         %54 = OpLoad %v3float %inPos
         %61 = OpAccessChain %_ptr_Input_float %gl_FragCoord %uint_2
         %62 = OpLoad %float %61
               OpStore %param %62
         %63 = OpFunctionCall %float %linearDepth_f1_ %param
         %64 = OpCompositeExtract %float %54 0
         %65 = OpCompositeExtract %float %54 1
         %66 = OpCompositeExtract %float %54 2
         %67 = OpCompositeConstruct %v4float %64 %65 %66 %63
               OpStore %outPosition %67
         %70 = OpLoad %v3float %inNormal
         %71 = OpExtInst %v3float %1 Normalize %70
         %73 = OpVectorTimesScalar %v3float %71 %float_0_5
         %74 = OpCompositeConstruct %v3float %float_0_5 %float_0_5 %float_0_5
         %75 = OpFAdd %v3float %73 %74
         %76 = OpCompositeExtract %float %75 0
         %77 = OpCompositeExtract %float %75 1
         %78 = OpCompositeExtract %float %75 2
         %79 = OpCompositeConstruct %v4float %76 %77 %78 %float_1
               OpStore %outNormal %79
         %82 = OpLoad %v3float %inColor
         %83 = OpVectorTimesScalar %v3float %82 %float_2
         %84 = OpCompositeExtract %float %83 0
         %85 = OpCompositeExtract %float %83 1
         %86 = OpCompositeExtract %float %83 2
         %87 = OpCompositeConstruct %v4float %84 %85 %86 %float_1
               OpStore %outAlbedo %87
               OpReturn
               OpFunctionEnd
%linearDepth_f1_ = OpFunction %float None %8
      %depth = OpFunctionParameter %_ptr_Function_float
         %11 = OpLabel
          %z = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %float %depth
         %15 = OpFMul %float %13 %float_2
         %17 = OpFSub %float %15 %float_1
               OpStore %z %17
         %26 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %27 = OpLoad %float %26
         %28 = OpFMul %float %float_2 %27
         %30 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
         %31 = OpLoad %float %30
         %32 = OpFMul %float %28 %31
         %33 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
         %34 = OpLoad %float %33
         %35 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %36 = OpLoad %float %35
         %37 = OpFAdd %float %34 %36
         %38 = OpLoad %float %z
         %39 = OpAccessChain %_ptr_Uniform_float %ubo %int_4
         %40 = OpLoad %float %39
         %41 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %42 = OpLoad %float %41
         %43 = OpFSub %float %40 %42
         %44 = OpFMul %float %38 %43
         %45 = OpFSub %float %37 %44
         %46 = OpFDiv %float %32 %45
               OpReturnValue %46
               OpFunctionEnd
