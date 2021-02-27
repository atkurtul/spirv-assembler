; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 19
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outFragColor %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outFragColor "outFragColor"
               OpName %inColor "inColor"
               OpDecorate %outFragColor Location 0
               OpDecorate %inColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
  %float_0_5 = OpConstant %float 0.5
       %main = OpFunction %void None %3
          %5 = OpLabel
         %13 = OpLoad %v3float %inColor
         %15 = OpCompositeExtract %float %13 0
         %16 = OpCompositeExtract %float %13 1
         %17 = OpCompositeExtract %float %13 2
         %18 = OpCompositeConstruct %v4float %15 %16 %17 %float_0_5
               OpStore %outFragColor %18
               OpReturn
               OpFunctionEnd
