; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 78
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inEyePos %inNormal %outFragColor %inTexIndex %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %r "r"
               OpName %inEyePos "inEyePos"
               OpName %inNormal "inNormal"
               OpName %r2 "r2"
               OpName %m "m"
               OpName %vN "vN"
               OpName %outFragColor "outFragColor"
               OpName %matCap "matCap"
               OpName %inTexIndex "inTexIndex"
               OpName %inColor "inColor"
               OpDecorate %inEyePos Location 1
               OpDecorate %inNormal Location 2
               OpDecorate %outFragColor Location 0
               OpDecorate %matCap DescriptorSet 0
               OpDecorate %matCap Binding 1
               OpDecorate %inTexIndex Flat
               OpDecorate %inTexIndex Location 3
               OpDecorate %inColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Function_v3float = OpTypePointer Function %v3float
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inEyePos = OpVariable %_ptr_Input_v3float Input
   %inNormal = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Function_float = OpTypePointer Function %float
     %uint_1 = OpConstant %uint 1
     %uint_2 = OpConstant %uint 2
    %float_1 = OpConstant %float 1
    %float_2 = OpConstant %float 2
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
  %float_0_5 = OpConstant %float 0.5
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
         %50 = OpTypeImage %float 2D 0 1 0 1 Unknown
         %51 = OpTypeSampledImage %50
%_ptr_UniformConstant_51 = OpTypePointer UniformConstant %51
     %matCap = OpVariable %_ptr_UniformConstant_51 UniformConstant
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
 %inTexIndex = OpVariable %_ptr_Input_int Input
    %inColor = OpVariable %_ptr_Input_v3float Input
%_ptr_Input_float = OpTypePointer Input %float
    %float_0 = OpConstant %float 0
       %main = OpFunction %void None %3
          %5 = OpLabel
          %r = OpVariable %_ptr_Function_v3float Function
         %r2 = OpVariable %_ptr_Function_v3float Function
          %m = OpVariable %_ptr_Function_float Function
         %vN = OpVariable %_ptr_Function_v2float Function
         %12 = OpLoad %v3float %inEyePos
         %14 = OpLoad %v3float %inNormal
         %15 = OpExtInst %v3float %1 Reflect %12 %14
               OpStore %r %15
         %20 = OpAccessChain %_ptr_Function_float %r %uint_0
         %21 = OpLoad %float %20
         %23 = OpAccessChain %_ptr_Function_float %r %uint_1
         %24 = OpLoad %float %23
         %26 = OpAccessChain %_ptr_Function_float %r %uint_2
         %27 = OpLoad %float %26
         %29 = OpFAdd %float %27 %float_1
         %30 = OpCompositeConstruct %v3float %21 %24 %29
               OpStore %r2 %30
         %33 = OpLoad %v3float %r2
         %34 = OpExtInst %float %1 Length %33
         %35 = OpFMul %float %float_2 %34
               OpStore %m %35
         %39 = OpLoad %v3float %r
         %40 = OpVectorShuffle %v2float %39 %39 0 1
         %41 = OpLoad %float %m
         %42 = OpCompositeConstruct %v2float %41 %41
         %43 = OpFDiv %v2float %40 %42
         %45 = OpCompositeConstruct %v2float %float_0_5 %float_0_5
         %46 = OpFAdd %v2float %43 %45
               OpStore %vN %46
         %54 = OpLoad %51 %matCap
         %55 = OpLoad %v2float %vN
         %59 = OpLoad %int %inTexIndex
         %60 = OpConvertSToF %float %59
         %61 = OpCompositeExtract %float %55 0
         %62 = OpCompositeExtract %float %55 1
         %63 = OpCompositeConstruct %v3float %61 %62 %60
         %64 = OpImageSampleImplicitLod %v4float %54 %63
         %65 = OpVectorShuffle %v3float %64 %64 0 1 2
         %68 = OpAccessChain %_ptr_Input_float %inColor %uint_0
         %69 = OpLoad %float %68
         %70 = OpFMul %float %69 %float_2
         %72 = OpExtInst %float %1 FClamp %70 %float_0 %float_1
         %73 = OpVectorTimesScalar %v3float %65 %72
         %74 = OpCompositeExtract %float %73 0
         %75 = OpCompositeExtract %float %73 1
         %76 = OpCompositeExtract %float %73 2
         %77 = OpCompositeConstruct %v4float %74 %75 %76 %float_1
               OpStore %outFragColor %77
               OpReturn
               OpFunctionEnd
