; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 38
; Schema: 0
               OpCapability Shader
               OpCapability SampledCubeArray
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outFragColor %inUVW
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outFragColor "outFragColor"
               OpName %samplerCubeMapArray "samplerCubeMapArray"
               OpName %inUVW "inUVW"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "invModel"
               OpMemberName %UBO 3 "lodBias"
               OpMemberName %UBO 4 "cubeMapIndex"
               OpName %ubo "ubo"
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerCubeMapArray DescriptorSet 0
               OpDecorate %samplerCubeMapArray Binding 1
               OpDecorate %inUVW Location 0
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
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %10 = OpTypeImage %float Cube 0 1 0 1 Unknown
         %11 = OpTypeSampledImage %10
%_ptr_UniformConstant_11 = OpTypePointer UniformConstant %11
%samplerCubeMapArray = OpVariable %_ptr_UniformConstant_11 UniformConstant
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inUVW = OpVariable %_ptr_Input_v3float Input
%mat4v4float = OpTypeMatrix %v4float 4
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_4 = OpConstant %int 4
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
       %main = OpFunction %void None %3
          %5 = OpLabel
         %14 = OpLoad %11 %samplerCubeMapArray
         %18 = OpLoad %v3float %inUVW
         %26 = OpAccessChain %_ptr_Uniform_int %ubo %int_4
         %27 = OpLoad %int %26
         %28 = OpConvertSToF %float %27
         %29 = OpCompositeExtract %float %18 0
         %30 = OpCompositeExtract %float %18 1
         %31 = OpCompositeExtract %float %18 2
         %32 = OpCompositeConstruct %v4float %29 %30 %31 %28
         %35 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %36 = OpLoad %float %35
         %37 = OpImageSampleExplicitLod %v4float %14 %32 Lod %36
               OpStore %outFragColor %37
               OpReturn
               OpFunctionEnd
