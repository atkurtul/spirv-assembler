; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 102
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inPos %outFragColor %gl_FrontFacing %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %tmp "tmp"
               OpName %inPos "inPos"
               OpName %projCoord "projCoord"
               OpName %outFragColor "outFragColor"
               OpName %gl_FrontFacing "gl_FrontFacing"
               OpName %reflection "reflection"
               OpName %x "x"
               OpName %y "y"
               OpName %samplerColor "samplerColor"
               OpName %inUV "inUV"
               OpDecorate %inPos Location 1
               OpDecorate %outFragColor Location 0
               OpDecorate %gl_FrontFacing BuiltIn FrontFacing
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inUV Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %float_1 = OpConstant %float 1
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_ptr_Input_float = OpTypePointer Input %float
         %24 = OpConstantComposite %v4float %float_1 %float_1 %float_1 %float_1
  %float_0_5 = OpConstant %float 0.5
         %28 = OpConstantComposite %v4float %float_0_5 %float_0_5 %float_0_5 %float_0_5
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %float_0 = OpConstant %float 0
         %34 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_1
       %bool = OpTypeBool
%_ptr_Input_bool = OpTypePointer Input %bool
%gl_FrontFacing = OpVariable %_ptr_Input_bool Input
         %42 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_0
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
     %int_n3 = OpConstant %int -3
      %int_3 = OpConstant %int 3
         %63 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %64 = OpTypeSampledImage %63
%_ptr_UniformConstant_64 = OpTypePointer UniformConstant %64
%samplerColor = OpVariable %_ptr_UniformConstant_64 UniformConstant
     %uint_0 = OpConstant %uint 0
%_ptr_Function_float = OpTypePointer Function %float
%float_0_001953125 = OpConstant %float 0.001953125
     %uint_1 = OpConstant %uint 1
    %v2float = OpTypeVector %float 2
   %float_49 = OpConstant %float 49
      %int_1 = OpConstant %int 1
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
        %tmp = OpVariable %_ptr_Function_v4float Function
  %projCoord = OpVariable %_ptr_Function_v4float Function
 %reflection = OpVariable %_ptr_Function_v4float Function
          %x = OpVariable %_ptr_Function_int Function
          %y = OpVariable %_ptr_Function_int Function
         %16 = OpAccessChain %_ptr_Input_float %inPos %uint_3
         %17 = OpLoad %float %16
         %18 = OpFDiv %float %float_1 %17
         %19 = OpCompositeConstruct %v4float %18 %18 %18 %18
               OpStore %tmp %19
         %21 = OpLoad %v4float %inPos
         %22 = OpLoad %v4float %tmp
         %23 = OpFMul %v4float %21 %22
               OpStore %projCoord %23
         %25 = OpLoad %v4float %projCoord
         %26 = OpFAdd %v4float %25 %24
               OpStore %projCoord %26
         %29 = OpLoad %v4float %projCoord
         %30 = OpFMul %v4float %29 %28
               OpStore %projCoord %30
               OpStore %outFragColor %34
         %38 = OpLoad %bool %gl_FrontFacing
               OpSelectionMerge %40 None
               OpBranchConditional %38 %39 %40
         %39 = OpLabel
               OpStore %reflection %42
               OpStore %x %int_n3
               OpBranch %47
         %47 = OpLabel
               OpLoopMerge %49 %50 None
               OpBranch %51
         %51 = OpLabel
         %52 = OpLoad %int %x
         %54 = OpSLessThanEqual %bool %52 %int_3
               OpBranchConditional %54 %48 %49
         %48 = OpLabel
               OpStore %y %int_n3
               OpBranch %56
         %56 = OpLabel
               OpLoopMerge %58 %59 None
               OpBranch %60
         %60 = OpLabel
         %61 = OpLoad %int %y
         %62 = OpSLessThanEqual %bool %61 %int_3
               OpBranchConditional %62 %57 %58
         %57 = OpLabel
         %67 = OpLoad %64 %samplerColor
         %70 = OpAccessChain %_ptr_Function_float %projCoord %uint_0
         %71 = OpLoad %float %70
         %72 = OpLoad %int %x
         %73 = OpConvertSToF %float %72
         %75 = OpFMul %float %73 %float_0_001953125
         %76 = OpFAdd %float %71 %75
         %78 = OpAccessChain %_ptr_Function_float %projCoord %uint_1
         %79 = OpLoad %float %78
         %80 = OpLoad %int %y
         %81 = OpConvertSToF %float %80
         %82 = OpFMul %float %81 %float_0_001953125
         %83 = OpFAdd %float %79 %82
         %85 = OpCompositeConstruct %v2float %76 %83
         %86 = OpImageSampleImplicitLod %v4float %67 %85
         %88 = OpCompositeConstruct %v4float %float_49 %float_49 %float_49 %float_49
         %89 = OpFDiv %v4float %86 %88
         %90 = OpLoad %v4float %reflection
         %91 = OpFAdd %v4float %90 %89
               OpStore %reflection %91
               OpBranch %59
         %59 = OpLabel
         %92 = OpLoad %int %y
         %94 = OpIAdd %int %92 %int_1
               OpStore %y %94
               OpBranch %56
         %58 = OpLabel
               OpBranch %50
         %50 = OpLabel
         %95 = OpLoad %int %x
         %96 = OpIAdd %int %95 %int_1
               OpStore %x %96
               OpBranch %47
         %49 = OpLabel
         %97 = OpLoad %v4float %reflection
         %98 = OpLoad %v4float %outFragColor
         %99 = OpFAdd %v4float %98 %97
               OpStore %outFragColor %99
               OpBranch %40
         %40 = OpLabel
               OpReturn
               OpFunctionEnd
