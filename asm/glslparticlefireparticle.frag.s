; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 118
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inAlpha %inRotation %gl_PointCoord %inType %outFragColor %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %alpha "alpha"
               OpName %inAlpha "inAlpha"
               OpName %rotCenter "rotCenter"
               OpName %rotCos "rotCos"
               OpName %inRotation "inRotation"
               OpName %rotSin "rotSin"
               OpName %rotUV "rotUV"
               OpName %gl_PointCoord "gl_PointCoord"
               OpName %inType "inType"
               OpName %color "color"
               OpName %samplerFire "samplerFire"
               OpName %outFragColor "outFragColor"
               OpName %samplerSmoke "samplerSmoke"
               OpName %inColor "inColor"
               OpDecorate %inAlpha Location 1
               OpDecorate %inRotation Location 3
               OpDecorate %gl_PointCoord BuiltIn PointCoord
               OpDecorate %inType Flat
               OpDecorate %inType Location 2
               OpDecorate %samplerFire DescriptorSet 0
               OpDecorate %samplerFire Binding 2
               OpDecorate %outFragColor Location 0
               OpDecorate %samplerSmoke DescriptorSet 0
               OpDecorate %samplerSmoke Binding 1
               OpDecorate %inColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
%_ptr_Function_float = OpTypePointer Function %float
%_ptr_Input_float = OpTypePointer Input %float
    %inAlpha = OpVariable %_ptr_Input_float Input
    %float_1 = OpConstant %float 1
       %bool = OpTypeBool
    %float_2 = OpConstant %float 2
  %float_0_5 = OpConstant %float 0.5
 %inRotation = OpVariable %_ptr_Input_float Input
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
%_ptr_Input_v2float = OpTypePointer Input %v2float
%gl_PointCoord = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
     %uint_1 = OpConstant %uint 1
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
     %inType = OpVariable %_ptr_Input_int Input
      %int_0 = OpConstant %int 0
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %83 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %84 = OpTypeSampledImage %83
%_ptr_UniformConstant_84 = OpTypePointer UniformConstant %84
%samplerFire = OpVariable %_ptr_UniformConstant_84 UniformConstant
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_0 = OpConstant %float 0
     %uint_3 = OpConstant %uint 3
%_ptr_Output_float = OpTypePointer Output %float
%samplerSmoke = OpVariable %_ptr_UniformConstant_84 UniformConstant
    %v3float = OpTypeVector %float 3
%_ptr_Input_v4float = OpTypePointer Input %v4float
    %inColor = OpVariable %_ptr_Input_v4float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
      %alpha = OpVariable %_ptr_Function_float Function
         %15 = OpVariable %_ptr_Function_float Function
  %rotCenter = OpVariable %_ptr_Function_float Function
     %rotCos = OpVariable %_ptr_Function_float Function
     %rotSin = OpVariable %_ptr_Function_float Function
      %rotUV = OpVariable %_ptr_Function_v2float Function
      %color = OpVariable %_ptr_Function_v4float Function
         %11 = OpLoad %float %inAlpha
         %14 = OpFOrdLessThanEqual %bool %11 %float_1
               OpSelectionMerge %17 None
               OpBranchConditional %14 %16 %19
         %16 = OpLabel
         %18 = OpLoad %float %inAlpha
               OpStore %15 %18
               OpBranch %17
         %19 = OpLabel
         %21 = OpLoad %float %inAlpha
         %22 = OpFSub %float %float_2 %21
               OpStore %15 %22
               OpBranch %17
         %17 = OpLabel
         %23 = OpLoad %float %15
               OpStore %alpha %23
               OpStore %rotCenter %float_0_5
         %28 = OpLoad %float %inRotation
         %29 = OpExtInst %float %1 Cos %28
               OpStore %rotCos %29
         %31 = OpLoad %float %inRotation
         %32 = OpExtInst %float %1 Sin %31
               OpStore %rotSin %32
         %36 = OpLoad %float %rotCos
         %41 = OpAccessChain %_ptr_Input_float %gl_PointCoord %uint_0
         %42 = OpLoad %float %41
         %43 = OpLoad %float %rotCenter
         %44 = OpFSub %float %42 %43
         %45 = OpFMul %float %36 %44
         %46 = OpLoad %float %rotSin
         %48 = OpAccessChain %_ptr_Input_float %gl_PointCoord %uint_1
         %49 = OpLoad %float %48
         %50 = OpLoad %float %rotCenter
         %51 = OpFSub %float %49 %50
         %52 = OpFMul %float %46 %51
         %53 = OpFAdd %float %45 %52
         %54 = OpLoad %float %rotCenter
         %55 = OpFAdd %float %53 %54
         %56 = OpLoad %float %rotCos
         %57 = OpAccessChain %_ptr_Input_float %gl_PointCoord %uint_1
         %58 = OpLoad %float %57
         %59 = OpLoad %float %rotCenter
         %60 = OpFSub %float %58 %59
         %61 = OpFMul %float %56 %60
         %62 = OpLoad %float %rotSin
         %63 = OpAccessChain %_ptr_Input_float %gl_PointCoord %uint_0
         %64 = OpLoad %float %63
         %65 = OpLoad %float %rotCenter
         %66 = OpFSub %float %64 %65
         %67 = OpFMul %float %62 %66
         %68 = OpFSub %float %61 %67
         %69 = OpLoad %float %rotCenter
         %70 = OpFAdd %float %68 %69
         %71 = OpCompositeConstruct %v2float %55 %70
               OpStore %rotUV %71
         %75 = OpLoad %int %inType
         %77 = OpIEqual %bool %75 %int_0
               OpSelectionMerge %79 None
               OpBranchConditional %77 %78 %96
         %78 = OpLabel
         %87 = OpLoad %84 %samplerFire
         %88 = OpLoad %v2float %rotUV
         %89 = OpImageSampleImplicitLod %v4float %87 %88
               OpStore %color %89
         %95 = OpAccessChain %_ptr_Output_float %outFragColor %uint_3
               OpStore %95 %float_0
               OpBranch %79
         %96 = OpLabel
         %98 = OpLoad %84 %samplerSmoke
         %99 = OpLoad %v2float %rotUV
        %100 = OpImageSampleImplicitLod %v4float %98 %99
               OpStore %color %100
        %101 = OpAccessChain %_ptr_Function_float %color %uint_3
        %102 = OpLoad %float %101
        %103 = OpLoad %float %alpha
        %104 = OpFMul %float %102 %103
        %105 = OpAccessChain %_ptr_Output_float %outFragColor %uint_3
               OpStore %105 %104
               OpBranch %79
         %79 = OpLabel
        %107 = OpLoad %v4float %color
        %108 = OpVectorShuffle %v3float %107 %107 0 1 2
        %111 = OpLoad %v4float %inColor
        %112 = OpVectorShuffle %v3float %111 %111 0 1 2
        %113 = OpFMul %v3float %108 %112
        %114 = OpLoad %float %alpha
        %115 = OpVectorTimesScalar %v3float %113 %114
        %116 = OpLoad %v4float %outFragColor
        %117 = OpVectorShuffle %v4float %116 %115 4 5 6 3
               OpStore %outFragColor %117
               OpReturn
               OpFunctionEnd
