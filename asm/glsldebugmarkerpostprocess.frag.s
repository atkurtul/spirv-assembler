; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 134
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %inUV %outFragColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %tc0 "tc0"
               OpName %inUV "inUV"
               OpName %tc1 "tc1"
               OpName %tc2 "tc2"
               OpName %tc3 "tc3"
               OpName %tc4 "tc4"
               OpName %tc5 "tc5"
               OpName %tc6 "tc6"
               OpName %tc7 "tc7"
               OpName %tc8 "tc8"
               OpName %col0 "col0"
               OpName %samplerColor "samplerColor"
               OpName %col1 "col1"
               OpName %col2 "col2"
               OpName %col3 "col3"
               OpName %col4 "col4"
               OpName %col5 "col5"
               OpName %col6 "col6"
               OpName %col7 "col7"
               OpName %col8 "col8"
               OpName %sum "sum"
               OpName %outFragColor "outFragColor"
               OpDecorate %inUV Location 0
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %outFragColor Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Function_v2float = OpTypePointer Function %v2float
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
%float_n0_00999999978 = OpConstant %float -0.00999999978
         %14 = OpConstantComposite %v2float %float_n0_00999999978 %float_n0_00999999978
    %float_0 = OpConstant %float 0
         %19 = OpConstantComposite %v2float %float_0 %float_n0_00999999978
%float_0_00999999978 = OpConstant %float 0.00999999978
         %24 = OpConstantComposite %v2float %float_0_00999999978 %float_n0_00999999978
         %28 = OpConstantComposite %v2float %float_n0_00999999978 %float_0
         %32 = OpConstantComposite %v2float %float_0 %float_0
         %36 = OpConstantComposite %v2float %float_0_00999999978 %float_0
         %40 = OpConstantComposite %v2float %float_n0_00999999978 %float_0_00999999978
         %44 = OpConstantComposite %v2float %float_0 %float_0_00999999978
         %48 = OpConstantComposite %v2float %float_0_00999999978 %float_0_00999999978
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
         %53 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %54 = OpTypeSampledImage %53
%_ptr_UniformConstant_54 = OpTypePointer UniformConstant %54
%samplerColor = OpVariable %_ptr_UniformConstant_54 UniformConstant
    %float_1 = OpConstant %float 1
    %float_2 = OpConstant %float 2
    %float_4 = OpConstant %float 4
   %float_16 = OpConstant %float 16
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
       %main = OpFunction %void None %3
          %5 = OpLabel
        %tc0 = OpVariable %_ptr_Function_v2float Function
        %tc1 = OpVariable %_ptr_Function_v2float Function
        %tc2 = OpVariable %_ptr_Function_v2float Function
        %tc3 = OpVariable %_ptr_Function_v2float Function
        %tc4 = OpVariable %_ptr_Function_v2float Function
        %tc5 = OpVariable %_ptr_Function_v2float Function
        %tc6 = OpVariable %_ptr_Function_v2float Function
        %tc7 = OpVariable %_ptr_Function_v2float Function
        %tc8 = OpVariable %_ptr_Function_v2float Function
       %col0 = OpVariable %_ptr_Function_v4float Function
       %col1 = OpVariable %_ptr_Function_v4float Function
       %col2 = OpVariable %_ptr_Function_v4float Function
       %col3 = OpVariable %_ptr_Function_v4float Function
       %col4 = OpVariable %_ptr_Function_v4float Function
       %col5 = OpVariable %_ptr_Function_v4float Function
       %col6 = OpVariable %_ptr_Function_v4float Function
       %col7 = OpVariable %_ptr_Function_v4float Function
       %col8 = OpVariable %_ptr_Function_v4float Function
        %sum = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v2float %inUV
         %15 = OpFAdd %v2float %12 %14
               OpStore %tc0 %15
         %17 = OpLoad %v2float %inUV
         %20 = OpFAdd %v2float %17 %19
               OpStore %tc1 %20
         %22 = OpLoad %v2float %inUV
         %25 = OpFAdd %v2float %22 %24
               OpStore %tc2 %25
         %27 = OpLoad %v2float %inUV
         %29 = OpFAdd %v2float %27 %28
               OpStore %tc3 %29
         %31 = OpLoad %v2float %inUV
         %33 = OpFAdd %v2float %31 %32
               OpStore %tc4 %33
         %35 = OpLoad %v2float %inUV
         %37 = OpFAdd %v2float %35 %36
               OpStore %tc5 %37
         %39 = OpLoad %v2float %inUV
         %41 = OpFAdd %v2float %39 %40
               OpStore %tc6 %41
         %43 = OpLoad %v2float %inUV
         %45 = OpFAdd %v2float %43 %44
               OpStore %tc7 %45
         %47 = OpLoad %v2float %inUV
         %49 = OpFAdd %v2float %47 %48
               OpStore %tc8 %49
         %57 = OpLoad %54 %samplerColor
         %58 = OpLoad %v2float %tc0
         %59 = OpImageSampleImplicitLod %v4float %57 %58
               OpStore %col0 %59
         %61 = OpLoad %54 %samplerColor
         %62 = OpLoad %v2float %tc1
         %63 = OpImageSampleImplicitLod %v4float %61 %62
               OpStore %col1 %63
         %65 = OpLoad %54 %samplerColor
         %66 = OpLoad %v2float %tc2
         %67 = OpImageSampleImplicitLod %v4float %65 %66
               OpStore %col2 %67
         %69 = OpLoad %54 %samplerColor
         %70 = OpLoad %v2float %tc3
         %71 = OpImageSampleImplicitLod %v4float %69 %70
               OpStore %col3 %71
         %73 = OpLoad %54 %samplerColor
         %74 = OpLoad %v2float %tc4
         %75 = OpImageSampleImplicitLod %v4float %73 %74
               OpStore %col4 %75
         %77 = OpLoad %54 %samplerColor
         %78 = OpLoad %v2float %tc5
         %79 = OpImageSampleImplicitLod %v4float %77 %78
               OpStore %col5 %79
         %81 = OpLoad %54 %samplerColor
         %82 = OpLoad %v2float %tc6
         %83 = OpImageSampleImplicitLod %v4float %81 %82
               OpStore %col6 %83
         %85 = OpLoad %54 %samplerColor
         %86 = OpLoad %v2float %tc7
         %87 = OpImageSampleImplicitLod %v4float %85 %86
               OpStore %col7 %87
         %89 = OpLoad %54 %samplerColor
         %90 = OpLoad %v2float %tc8
         %91 = OpImageSampleImplicitLod %v4float %89 %90
               OpStore %col8 %91
         %94 = OpLoad %v4float %col0
         %95 = OpVectorTimesScalar %v4float %94 %float_1
         %97 = OpLoad %v4float %col1
         %98 = OpVectorTimesScalar %v4float %97 %float_2
         %99 = OpFAdd %v4float %95 %98
        %100 = OpLoad %v4float %col2
        %101 = OpVectorTimesScalar %v4float %100 %float_1
        %102 = OpFAdd %v4float %99 %101
        %103 = OpLoad %v4float %col3
        %104 = OpVectorTimesScalar %v4float %103 %float_2
        %105 = OpFAdd %v4float %102 %104
        %107 = OpLoad %v4float %col4
        %108 = OpVectorTimesScalar %v4float %107 %float_4
        %109 = OpFAdd %v4float %105 %108
        %110 = OpLoad %v4float %col5
        %111 = OpVectorTimesScalar %v4float %110 %float_2
        %112 = OpFAdd %v4float %109 %111
        %113 = OpLoad %v4float %col6
        %114 = OpVectorTimesScalar %v4float %113 %float_1
        %115 = OpFAdd %v4float %112 %114
        %116 = OpLoad %v4float %col7
        %117 = OpVectorTimesScalar %v4float %116 %float_2
        %118 = OpFAdd %v4float %115 %117
        %119 = OpLoad %v4float %col8
        %120 = OpVectorTimesScalar %v4float %119 %float_1
        %121 = OpFAdd %v4float %118 %120
        %123 = OpCompositeConstruct %v4float %float_16 %float_16 %float_16 %float_16
        %124 = OpFDiv %v4float %121 %123
               OpStore %sum %124
        %128 = OpLoad %v4float %sum
        %129 = OpVectorShuffle %v3float %128 %128 0 1 2
        %130 = OpCompositeExtract %float %129 0
        %131 = OpCompositeExtract %float %129 1
        %132 = OpCompositeExtract %float %129 2
        %133 = OpCompositeConstruct %v4float %130 %131 %132 %float_1
               OpStore %outFragColor %133
               OpReturn
               OpFunctionEnd
