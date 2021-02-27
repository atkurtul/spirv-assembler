; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 122
; Schema: 0
               OpCapability Shader
               OpCapability SampledCubeArray
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inPos %inNormal %inLightVec %inViewVec %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %cI "cI"
               OpName %inPos "inPos"
               OpName %cR "cR"
               OpName %inNormal "inNormal"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "invModel"
               OpMemberName %UBO 3 "lodBias"
               OpMemberName %UBO 4 "cubeMapIndex"
               OpName %ubo "ubo"
               OpName %color "color"
               OpName %samplerCubeMapArray "samplerCubeMapArray"
               OpName %N "N"
               OpName %L "L"
               OpName %inLightVec "inLightVec"
               OpName %V "V"
               OpName %inViewVec "inViewVec"
               OpName %R "R"
               OpName %ambient "ambient"
               OpName %diffuse "diffuse"
               OpName %specular "specular"
               OpName %outFragColor "outFragColor"
               OpDecorate %inPos Location 0
               OpDecorate %inNormal Location 1
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
               OpDecorate %samplerCubeMapArray DescriptorSet 0
               OpDecorate %samplerCubeMapArray Binding 1
               OpDecorate %inLightVec Location 3
               OpDecorate %inViewVec Location 2
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %int = OpTypeInt 32 1
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %float %int
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_2 = OpConstant %int 2
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
    %float_0 = OpConstant %float 0
   %float_n1 = OpConstant %float -1
    %v2float = OpTypeVector %float 2
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %50 = OpTypeImage %float Cube 0 1 0 1 Unknown
         %51 = OpTypeSampledImage %50
%_ptr_UniformConstant_51 = OpTypePointer UniformConstant %51
%samplerCubeMapArray = OpVariable %_ptr_UniformConstant_51 UniformConstant
      %int_4 = OpConstant %int 4
%_ptr_Uniform_int = OpTypePointer Uniform %int
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
  %float_0_5 = OpConstant %float 0.5
         %88 = OpConstantComposite %v3float %float_0_5 %float_0_5 %float_0_5
    %float_1 = OpConstant %float 1
         %98 = OpConstantComposite %v3float %float_1 %float_1 %float_1
   %float_16 = OpConstant %float 16
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
         %cI = OpVariable %_ptr_Function_v3float Function
         %cR = OpVariable %_ptr_Function_v3float Function
      %color = OpVariable %_ptr_Function_v4float Function
          %N = OpVariable %_ptr_Function_v3float Function
          %L = OpVariable %_ptr_Function_v3float Function
          %V = OpVariable %_ptr_Function_v3float Function
          %R = OpVariable %_ptr_Function_v3float Function
    %ambient = OpVariable %_ptr_Function_v3float Function
    %diffuse = OpVariable %_ptr_Function_v3float Function
   %specular = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inPos
         %13 = OpExtInst %v3float %1 Normalize %12
               OpStore %cI %13
         %15 = OpLoad %v3float %cI
         %17 = OpLoad %v3float %inNormal
         %18 = OpExtInst %v3float %1 Normalize %17
         %19 = OpExtInst %v3float %1 Reflect %15 %18
               OpStore %cR %19
         %28 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %29 = OpLoad %mat4v4float %28
         %30 = OpLoad %v3float %cR
         %32 = OpCompositeExtract %float %30 0
         %33 = OpCompositeExtract %float %30 1
         %34 = OpCompositeExtract %float %30 2
         %35 = OpCompositeConstruct %v4float %32 %33 %34 %float_0
         %36 = OpMatrixTimesVector %v4float %29 %35
         %37 = OpCompositeExtract %float %36 0
         %38 = OpCompositeExtract %float %36 1
         %39 = OpCompositeExtract %float %36 2
         %40 = OpCompositeConstruct %v3float %37 %38 %39
               OpStore %cR %40
         %43 = OpLoad %v3float %cR
         %44 = OpVectorShuffle %v2float %43 %43 1 2
         %45 = OpVectorTimesScalar %v2float %44 %float_n1
         %46 = OpLoad %v3float %cR
         %47 = OpVectorShuffle %v3float %46 %45 0 3 4
               OpStore %cR %47
         %54 = OpLoad %51 %samplerCubeMapArray
         %55 = OpLoad %v3float %cR
         %58 = OpAccessChain %_ptr_Uniform_int %ubo %int_4
         %59 = OpLoad %int %58
         %60 = OpConvertSToF %float %59
         %61 = OpCompositeExtract %float %55 0
         %62 = OpCompositeExtract %float %55 1
         %63 = OpCompositeExtract %float %55 2
         %64 = OpCompositeConstruct %v4float %61 %62 %63 %60
         %67 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %68 = OpLoad %float %67
         %69 = OpImageSampleExplicitLod %v4float %54 %64 Lod %68
               OpStore %color %69
         %71 = OpLoad %v3float %inNormal
         %72 = OpExtInst %v3float %1 Normalize %71
               OpStore %N %72
         %75 = OpLoad %v3float %inLightVec
         %76 = OpExtInst %v3float %1 Normalize %75
               OpStore %L %76
         %79 = OpLoad %v3float %inViewVec
         %80 = OpExtInst %v3float %1 Normalize %79
               OpStore %V %80
         %82 = OpLoad %v3float %L
         %83 = OpFNegate %v3float %82
         %84 = OpLoad %v3float %N
         %85 = OpExtInst %v3float %1 Reflect %83 %84
               OpStore %R %85
         %89 = OpLoad %v4float %color
         %90 = OpVectorShuffle %v3float %89 %89 0 1 2
         %91 = OpFMul %v3float %88 %90
               OpStore %ambient %91
         %93 = OpLoad %v3float %N
         %94 = OpLoad %v3float %L
         %95 = OpDot %float %93 %94
         %96 = OpExtInst %float %1 FMax %95 %float_0
         %99 = OpVectorTimesScalar %v3float %98 %96
               OpStore %diffuse %99
        %101 = OpLoad %v3float %R
        %102 = OpLoad %v3float %V
        %103 = OpDot %float %101 %102
        %104 = OpExtInst %float %1 FMax %103 %float_0
        %106 = OpExtInst %float %1 Pow %104 %float_16
        %107 = OpVectorTimesScalar %v3float %88 %106
               OpStore %specular %107
        %110 = OpLoad %v3float %ambient
        %111 = OpLoad %v3float %diffuse
        %112 = OpLoad %v4float %color
        %113 = OpVectorShuffle %v3float %112 %112 0 1 2
        %114 = OpFMul %v3float %111 %113
        %115 = OpFAdd %v3float %110 %114
        %116 = OpLoad %v3float %specular
        %117 = OpFAdd %v3float %115 %116
        %118 = OpCompositeExtract %float %117 0
        %119 = OpCompositeExtract %float %117 1
        %120 = OpCompositeExtract %float %117 2
        %121 = OpCompositeConstruct %v4float %118 %119 %120 %float_1
               OpStore %outFragColor %121
               OpReturn
               OpFunctionEnd
