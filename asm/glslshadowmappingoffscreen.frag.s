; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 13
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %color
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %color "color"
               OpDecorate %color Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
      %color = OpVariable %_ptr_Output_v4float Output
    %float_1 = OpConstant %float 1
    %float_0 = OpConstant %float 0
         %12 = OpConstantComposite %v4float %float_1 %float_0 %float_0 %float_1
       %main = OpFunction %void None %3
          %5 = OpLabel
               OpStore %color %12
               OpReturn
               OpFunctionEnd
