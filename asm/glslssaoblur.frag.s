; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 82
; Schema: 0
               OpCapability Shader
               OpCapability ImageQuery
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %n "n"
               OpName %texelSize "texelSize"
               OpName %samplerSSAO "samplerSSAO"
               OpName %result "result"
               OpName %x "x"
               OpName %y "y"
               OpName %offset "offset"
               OpName %inUV "inUV"
               OpName %outFragColor "outFragColor"
               OpDecorate %samplerSSAO DescriptorSet 0
               OpDecorate %samplerSSAO Binding 0
               OpDecorate %inUV Location 0
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
      %int_0 = OpConstant %int 0
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %float_1 = OpConstant %float 1
         %15 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %16 = OpTypeSampledImage %15
%_ptr_UniformConstant_16 = OpTypePointer UniformConstant %16
%samplerSSAO = OpVariable %_ptr_UniformConstant_16 UniformConstant
      %v2int = OpTypeVector %int 2
%_ptr_Function_float = OpTypePointer Function %float
    %float_0 = OpConstant %float 0
     %int_n2 = OpConstant %int -2
      %int_2 = OpConstant %int 2
       %bool = OpTypeBool
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
      %int_1 = OpConstant %int 1
%_ptr_Output_float = OpTypePointer Output %float
%outFragColor = OpVariable %_ptr_Output_float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
          %n = OpVariable %_ptr_Function_int Function
  %texelSize = OpVariable %_ptr_Function_v2float Function
     %result = OpVariable %_ptr_Function_float Function
          %x = OpVariable %_ptr_Function_int Function
          %y = OpVariable %_ptr_Function_int Function
     %offset = OpVariable %_ptr_Function_v2float Function
               OpStore %n %int_0
         %19 = OpLoad %16 %samplerSSAO
         %20 = OpImage %15 %19
         %22 = OpImageQuerySizeLod %v2int %20 %int_0
         %23 = OpConvertSToF %v2float %22
         %24 = OpCompositeConstruct %v2float %float_1 %float_1
         %25 = OpFDiv %v2float %24 %23
               OpStore %texelSize %25
               OpStore %result %float_0
               OpStore %x %int_n2
               OpBranch %31
         %31 = OpLabel
               OpLoopMerge %33 %34 None
               OpBranch %35
         %35 = OpLabel
         %36 = OpLoad %int %x
         %39 = OpSLessThan %bool %36 %int_2
               OpBranchConditional %39 %32 %33
         %32 = OpLabel
               OpStore %y %int_n2
               OpBranch %41
         %41 = OpLabel
               OpLoopMerge %43 %44 None
               OpBranch %45
         %45 = OpLabel
         %46 = OpLoad %int %y
         %47 = OpSLessThan %bool %46 %int_2
               OpBranchConditional %47 %42 %43
         %42 = OpLabel
         %49 = OpLoad %int %x
         %50 = OpConvertSToF %float %49
         %51 = OpLoad %int %y
         %52 = OpConvertSToF %float %51
         %53 = OpCompositeConstruct %v2float %50 %52
         %54 = OpLoad %v2float %texelSize
         %55 = OpFMul %v2float %53 %54
               OpStore %offset %55
         %56 = OpLoad %16 %samplerSSAO
         %59 = OpLoad %v2float %inUV
         %60 = OpLoad %v2float %offset
         %61 = OpFAdd %v2float %59 %60
         %63 = OpImageSampleImplicitLod %v4float %56 %61
         %66 = OpCompositeExtract %float %63 0
         %67 = OpLoad %float %result
         %68 = OpFAdd %float %67 %66
               OpStore %result %68
         %69 = OpLoad %int %n
         %71 = OpIAdd %int %69 %int_1
               OpStore %n %71
               OpBranch %44
         %44 = OpLabel
         %72 = OpLoad %int %y
         %73 = OpIAdd %int %72 %int_1
               OpStore %y %73
               OpBranch %41
         %43 = OpLabel
               OpBranch %34
         %34 = OpLabel
         %74 = OpLoad %int %x
         %75 = OpIAdd %int %74 %int_1
               OpStore %x %75
               OpBranch %31
         %33 = OpLabel
         %78 = OpLoad %float %result
         %79 = OpLoad %int %n
         %80 = OpConvertSToF %float %79
         %81 = OpFDiv %float %78 %80
               OpStore %outFragColor %81
               OpReturn
               OpFunctionEnd
