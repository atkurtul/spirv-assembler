; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 77
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outPosition %inWorldPos %inNormal %outNormal %outAlbedo %inColor %gl_FragCoord %outColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %linearDepth_f1_ "linearDepth(f1;"
               OpName %depth "depth"
               OpName %z "z"
               OpName %NEAR_PLANE "NEAR_PLANE"
               OpName %FAR_PLANE "FAR_PLANE"
               OpName %outPosition "outPosition"
               OpName %inWorldPos "inWorldPos"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %outNormal "outNormal"
               OpName %outAlbedo "outAlbedo"
               OpName %inColor "inColor"
               OpName %gl_FragCoord "gl_FragCoord"
               OpName %param "param"
               OpName %outColor "outColor"
               OpDecorate %NEAR_PLANE SpecId 0
               OpDecorate %FAR_PLANE SpecId 1
               OpDecorate %outPosition Location 1
               OpDecorate %inWorldPos Location 2
               OpDecorate %inNormal Location 0
               OpDecorate %outNormal Location 2
               OpDecorate %outAlbedo Location 3
               OpDecorate %inColor Location 1
               OpDecorate %gl_FragCoord BuiltIn FragCoord
               OpDecorate %outColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
          %8 = OpTypeFunction %float %_ptr_Function_float
    %float_2 = OpConstant %float 2
    %float_1 = OpConstant %float 1
 %NEAR_PLANE = OpSpecConstant %float 0.100000001
  %FAR_PLANE = OpSpecConstant %float 256
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outPosition = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
  %outNormal = OpVariable %_ptr_Output_v4float Output
  %outAlbedo = OpVariable %_ptr_Output_v4float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_v4float = OpTypePointer Input %v4float
%gl_FragCoord = OpVariable %_ptr_Input_v4float Input
     %uint_2 = OpConstant %uint 2
%_ptr_Input_float = OpTypePointer Input %float
     %uint_3 = OpConstant %uint 3
%_ptr_Output_float = OpTypePointer Output %float
   %outColor = OpVariable %_ptr_Output_v4float Output
    %float_0 = OpConstant %float 0
         %76 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
      %param = OpVariable %_ptr_Function_float Function
         %36 = OpLoad %v3float %inWorldPos
         %37 = OpCompositeExtract %float %36 0
         %38 = OpCompositeExtract %float %36 1
         %39 = OpCompositeExtract %float %36 2
         %40 = OpCompositeConstruct %v4float %37 %38 %39 %float_1
               OpStore %outPosition %40
         %44 = OpLoad %v3float %inNormal
         %45 = OpExtInst %v3float %1 Normalize %44
               OpStore %N %45
         %48 = OpAccessChain %_ptr_Function_float %N %uint_1
         %49 = OpLoad %float %48
         %50 = OpFNegate %float %49
         %51 = OpAccessChain %_ptr_Function_float %N %uint_1
               OpStore %51 %50
         %53 = OpLoad %v3float %N
         %54 = OpCompositeExtract %float %53 0
         %55 = OpCompositeExtract %float %53 1
         %56 = OpCompositeExtract %float %53 2
         %57 = OpCompositeConstruct %v4float %54 %55 %56 %float_1
               OpStore %outNormal %57
         %60 = OpLoad %v3float %inColor
         %61 = OpLoad %v4float %outAlbedo
         %62 = OpVectorShuffle %v4float %61 %60 4 5 6 3
               OpStore %outAlbedo %62
         %68 = OpAccessChain %_ptr_Input_float %gl_FragCoord %uint_2
         %69 = OpLoad %float %68
               OpStore %param %69
         %70 = OpFunctionCall %float %linearDepth_f1_ %param
         %73 = OpAccessChain %_ptr_Output_float %outPosition %uint_3
               OpStore %73 %70
               OpStore %outColor %76
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
         %19 = OpFMul %float %float_2 %NEAR_PLANE
         %21 = OpFMul %float %19 %FAR_PLANE
         %22 = OpFAdd %float %FAR_PLANE %NEAR_PLANE
         %23 = OpLoad %float %z
         %24 = OpFSub %float %FAR_PLANE %NEAR_PLANE
         %25 = OpFMul %float %23 %24
         %26 = OpFSub %float %22 %25
         %27 = OpFDiv %float %21 %26
               OpReturnValue %27
               OpFunctionEnd
