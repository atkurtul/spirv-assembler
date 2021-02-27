; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 23
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inPos %inLightPos %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %lightVec "lightVec"
               OpName %inPos "inPos"
               OpName %inLightPos "inLightPos"
               OpName %outFragColor "outFragColor"
               OpDecorate %inPos Location 0
               OpDecorate %inLightPos Location 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %v4float = OpTypeVector %float 4
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%_ptr_Input_v3float = OpTypePointer Input %v3float
 %inLightPos = OpVariable %_ptr_Input_v3float Input
%_ptr_Output_float = OpTypePointer Output %float
%outFragColor = OpVariable %_ptr_Output_float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %lightVec = OpVariable %_ptr_Function_v3float Function
         %13 = OpLoad %v4float %inPos
         %14 = OpVectorShuffle %v3float %13 %13 0 1 2
         %17 = OpLoad %v3float %inLightPos
         %18 = OpFSub %v3float %14 %17
               OpStore %lightVec %18
         %21 = OpLoad %v3float %lightVec
         %22 = OpExtInst %float %1 Length %21
               OpStore %outFragColor %22
               OpReturn
               OpFunctionEnd
