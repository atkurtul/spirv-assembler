; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 20
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outFragColor %inUVW
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outFragColor "outFragColor"
               OpName %samplerCubeMap "samplerCubeMap"
               OpName %inUVW "inUVW"
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerCubeMap DescriptorSet 0
               OpDecorate %samplerCubeMap Binding 1
               OpDecorate %inUVW Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %10 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerCubeMap = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inUVW = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
         %14 = OpLoad %11 %samplerCubeMap
         %18 = OpLoad %v3float %inUVW
         %19 = OpImageSampleImplicitLod %v4float %14 %18
               OpStore %outFragColor %19
               OpReturn
               OpFunctionEnd
