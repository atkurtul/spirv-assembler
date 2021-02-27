; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 113
; Schema: 0
               OpCapability Shader
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
               OpName %ubo "ubo"
               OpName %color "color"
               OpName %samplerColor "samplerColor"
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
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
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
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
    %float_0 = OpConstant %float 0
   %float_n1 = OpConstant %float -1
    %v2float = OpTypeVector %float 2
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %50 = OpTypeImage %float Cube 0 0 0 1 Unknown
         %51 = OpTypeSampledImage %50
%_ptr_UniformConstant_51 = OpTypePointer UniformConstant %51
%samplerColor = OpVariable %_ptr_UniformConstant_51 UniformConstant
      %int_3 = OpConstant %int 3
%_ptr_Uniform_float = OpTypePointer Uniform %float
 %inLightVec = OpVariable %_ptr_Input_v3float Input
  %inViewVec = OpVariable %_ptr_Input_v3float Input
  %float_0_5 = OpConstant %float 0.5
         %79 = OpConstantComposite %v3float %float_0_5 %float_0_5 %float_0_5
    %float_1 = OpConstant %float 1
         %89 = OpConstantComposite %v3float %float_1 %float_1 %float_1
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
         %44 = OpVectorShuffle %v2float %43 %43 0 1
         %45 = OpVectorTimesScalar %v2float %44 %float_n1
         %46 = OpLoad %v3float %cR
         %47 = OpVectorShuffle %v3float %46 %45 3 4 2
               OpStore %cR %47
         %54 = OpLoad %51 %samplerColor
         %55 = OpLoad %v3float %cR
         %58 = OpAccessChain %_ptr_Uniform_float %ubo %int_3
         %59 = OpLoad %float %58
         %60 = OpImageSampleImplicitLod %v4float %54 %55 Bias %59
               OpStore %color %60
         %62 = OpLoad %v3float %inNormal
         %63 = OpExtInst %v3float %1 Normalize %62
               OpStore %N %63
         %66 = OpLoad %v3float %inLightVec
         %67 = OpExtInst %v3float %1 Normalize %66
               OpStore %L %67
         %70 = OpLoad %v3float %inViewVec
         %71 = OpExtInst %v3float %1 Normalize %70
               OpStore %V %71
         %73 = OpLoad %v3float %L
         %74 = OpFNegate %v3float %73
         %75 = OpLoad %v3float %N
         %76 = OpExtInst %v3float %1 Reflect %74 %75
               OpStore %R %76
         %80 = OpLoad %v4float %color
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpFMul %v3float %79 %81
               OpStore %ambient %82
         %84 = OpLoad %v3float %N
         %85 = OpLoad %v3float %L
         %86 = OpDot %float %84 %85
         %87 = OpExtInst %float %1 FMax %86 %float_0
         %90 = OpVectorTimesScalar %v3float %89 %87
               OpStore %diffuse %90
         %92 = OpLoad %v3float %R
         %93 = OpLoad %v3float %V
         %94 = OpDot %float %92 %93
         %95 = OpExtInst %float %1 FMax %94 %float_0
         %97 = OpExtInst %float %1 Pow %95 %float_16
         %98 = OpVectorTimesScalar %v3float %79 %97
               OpStore %specular %98
        %101 = OpLoad %v3float %ambient
        %102 = OpLoad %v3float %diffuse
        %103 = OpLoad %v4float %color
        %104 = OpVectorShuffle %v3float %103 %103 0 1 2
        %105 = OpFMul %v3float %102 %104
        %106 = OpFAdd %v3float %101 %105
        %107 = OpLoad %v3float %specular
        %108 = OpFAdd %v3float %106 %107
        %109 = OpCompositeExtract %float %108 0
        %110 = OpCompositeExtract %float %108 1
        %111 = OpCompositeExtract %float %108 2
        %112 = OpCompositeConstruct %v4float %109 %110 %111 %float_1
               OpStore %outFragColor %112
               OpReturn
               OpFunctionEnd
