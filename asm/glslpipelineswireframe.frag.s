; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 18
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
  %float_1_5 = OpConstant %float 1.5
       %main = OpFunction %void None %3
          %5 = OpLabel
         %13 = OpLoad %v3float %inColor
         %15 = OpVectorTimesScalar %v3float %13 %float_1_5
         %16 = OpLoad %v4float %outFragColor
         %17 = OpVectorShuffle %v4float %16 %15 4 5 6 3
               OpStore %outFragColor %17
               OpReturn
               OpFunctionEnd
