; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 178
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outFragColor %inUV
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outFragColor "outFragColor"
               OpName %samplePos "samplePos"
               OpName %x "x"
               OpName %inUV "inUV"
               OpName %y "y"
               OpName %uv "uv"
               OpName %uv_0 "uv"
               OpName %dist "dist"
               OpName %shadowCubeMap "shadowCubeMap"
               OpDecorate %outFragColor Location 0
               OpDecorate %inUV Location 0
               OpDecorate %shadowCubeMap DescriptorSet 0
               OpDecorate %shadowCubeMap Binding 1
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outFragColor = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%float_0_0500000007 = OpConstant %float 0.0500000007
         %12 = OpConstantComposite %v3float %float_0_0500000007 %float_0_0500000007 %float_0_0500000007
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %float_0 = OpConstant %float 0
         %18 = OpConstantComposite %v3float %float_0 %float_0 %float_0
        %int = OpTypeInt 32 1
%_ptr_Function_int = OpTypePointer Function %int
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
 %float_0_25 = OpConstant %float 0.25
     %uint_1 = OpConstant %uint 1
%float_0_333333343 = OpConstant %float 0.333333343
      %int_1 = OpConstant %int 1
       %bool = OpTypeBool
%_ptr_Function_v2float = OpTypePointer Function %v2float
    %float_4 = OpConstant %float 4
    %float_3 = OpConstant %float 3
    %float_2 = OpConstant %float 2
%_ptr_Function_float = OpTypePointer Function %float
    %float_1 = OpConstant %float 1
   %float_n1 = OpConstant %float -1
        %161 = OpTypeImage %float Cube 0 0 0 1 Unknown
        %162 = OpTypeSampledImage %161
%_ptr_UniformConstant_162 = OpTypePointer UniformConstant %162
%shadowCubeMap = OpVariable %_ptr_UniformConstant_162 UniformConstant
%float_0_00499999989 = OpConstant %float 0.00499999989
       %main = OpFunction %void None %3
          %5 = OpLabel
  %samplePos = OpVariable %_ptr_Function_v3float Function
          %x = OpVariable %_ptr_Function_int Function
          %y = OpVariable %_ptr_Function_int Function
         %uv = OpVariable %_ptr_Function_v2float Function
       %uv_0 = OpVariable %_ptr_Function_v2float Function
       %dist = OpVariable %_ptr_Function_float Function
         %13 = OpLoad %v4float %outFragColor
         %14 = OpVectorShuffle %v4float %13 %12 4 5 6 3
               OpStore %outFragColor %14
               OpStore %samplePos %18
         %28 = OpAccessChain %_ptr_Input_float %inUV %uint_0
         %29 = OpLoad %float %28
         %31 = OpFDiv %float %29 %float_0_25
         %32 = OpExtInst %float %1 Floor %31
         %33 = OpConvertFToS %int %32
               OpStore %x %33
         %36 = OpAccessChain %_ptr_Input_float %inUV %uint_1
         %37 = OpLoad %float %36
         %39 = OpFDiv %float %37 %float_0_333333343
         %40 = OpExtInst %float %1 Floor %39
         %41 = OpConvertFToS %int %40
               OpStore %y %41
         %42 = OpLoad %int %y
         %45 = OpIEqual %bool %42 %int_1
               OpSelectionMerge %47 None
               OpBranchConditional %45 %46 %109
         %46 = OpLabel
         %50 = OpAccessChain %_ptr_Input_float %inUV %uint_0
         %51 = OpLoad %float %50
         %53 = OpFMul %float %51 %float_4
         %54 = OpAccessChain %_ptr_Input_float %inUV %uint_1
         %55 = OpLoad %float %54
         %56 = OpFSub %float %55 %float_0_333333343
         %58 = OpFMul %float %56 %float_3
         %59 = OpCompositeConstruct %v2float %53 %58
               OpStore %uv %59
         %62 = OpAccessChain %_ptr_Function_float %uv %uint_0
         %63 = OpLoad %float %62
         %64 = OpLoad %int %x
         %65 = OpConvertSToF %float %64
         %67 = OpFMul %float %65 %float_1
         %68 = OpFSub %float %63 %67
         %69 = OpAccessChain %_ptr_Function_float %uv %uint_1
         %70 = OpLoad %float %69
         %71 = OpCompositeConstruct %v2float %68 %70
         %72 = OpVectorTimesScalar %v2float %71 %float_2
         %73 = OpCompositeConstruct %v2float %float_1 %float_1
         %74 = OpFSub %v2float %72 %73
               OpStore %uv %74
         %75 = OpLoad %int %x
               OpSelectionMerge %80 None
               OpSwitch %75 %80 0 %76 1 %77 2 %78 3 %79
         %76 = OpLabel
         %82 = OpAccessChain %_ptr_Function_float %uv %uint_1
         %83 = OpLoad %float %82
         %84 = OpAccessChain %_ptr_Function_float %uv %uint_0
         %85 = OpLoad %float %84
         %86 = OpCompositeConstruct %v3float %float_n1 %83 %85
               OpStore %samplePos %86
               OpBranch %80
         %77 = OpLabel
         %88 = OpAccessChain %_ptr_Function_float %uv %uint_0
         %89 = OpLoad %float %88
         %90 = OpAccessChain %_ptr_Function_float %uv %uint_1
         %91 = OpLoad %float %90
         %92 = OpCompositeConstruct %v3float %89 %91 %float_1
               OpStore %samplePos %92
               OpBranch %80
         %78 = OpLabel
         %94 = OpAccessChain %_ptr_Function_float %uv %uint_1
         %95 = OpLoad %float %94
         %96 = OpAccessChain %_ptr_Function_float %uv %uint_0
         %97 = OpLoad %float %96
         %98 = OpFNegate %float %97
         %99 = OpCompositeConstruct %v3float %float_1 %95 %98
               OpStore %samplePos %99
               OpBranch %80
         %79 = OpLabel
        %101 = OpAccessChain %_ptr_Function_float %uv %uint_0
        %102 = OpLoad %float %101
        %103 = OpFNegate %float %102
        %104 = OpAccessChain %_ptr_Function_float %uv %uint_1
        %105 = OpLoad %float %104
        %106 = OpCompositeConstruct %v3float %103 %105 %float_n1
               OpStore %samplePos %106
               OpBranch %80
         %80 = OpLabel
               OpBranch %47
        %109 = OpLabel
        %110 = OpLoad %int %x
        %111 = OpIEqual %bool %110 %int_1
               OpSelectionMerge %113 None
               OpBranchConditional %111 %112 %113
        %112 = OpLabel
        %115 = OpAccessChain %_ptr_Input_float %inUV %uint_0
        %116 = OpLoad %float %115
        %117 = OpFSub %float %116 %float_0_25
        %118 = OpFMul %float %117 %float_4
        %119 = OpAccessChain %_ptr_Input_float %inUV %uint_1
        %120 = OpLoad %float %119
        %121 = OpLoad %int %y
        %122 = OpConvertSToF %float %121
        %123 = OpFDiv %float %122 %float_3
        %124 = OpFSub %float %120 %123
        %125 = OpFMul %float %124 %float_3
        %126 = OpCompositeConstruct %v2float %118 %125
               OpStore %uv_0 %126
        %127 = OpLoad %v2float %uv_0
        %128 = OpVectorTimesScalar %v2float %127 %float_2
        %129 = OpCompositeConstruct %v2float %float_1 %float_1
        %130 = OpFSub %v2float %128 %129
               OpStore %uv_0 %130
        %131 = OpLoad %int %y
               OpSelectionMerge %134 None
               OpSwitch %131 %134 0 %132 2 %133
        %132 = OpLabel
        %135 = OpAccessChain %_ptr_Function_float %uv_0 %uint_0
        %136 = OpLoad %float %135
        %137 = OpAccessChain %_ptr_Function_float %uv_0 %uint_1
        %138 = OpLoad %float %137
        %139 = OpCompositeConstruct %v3float %136 %float_n1 %138
               OpStore %samplePos %139
               OpBranch %134
        %133 = OpLabel
        %141 = OpAccessChain %_ptr_Function_float %uv_0 %uint_0
        %142 = OpLoad %float %141
        %143 = OpAccessChain %_ptr_Function_float %uv_0 %uint_1
        %144 = OpLoad %float %143
        %145 = OpFNegate %float %144
        %146 = OpCompositeConstruct %v3float %142 %float_1 %145
               OpStore %samplePos %146
               OpBranch %134
        %134 = OpLabel
               OpBranch %113
        %113 = OpLabel
               OpBranch %47
         %47 = OpLabel
        %149 = OpAccessChain %_ptr_Function_float %samplePos %uint_0
        %150 = OpLoad %float %149
        %151 = OpFUnordNotEqual %bool %150 %float_0
               OpSelectionMerge %153 None
               OpBranchConditional %151 %152 %153
        %152 = OpLabel
        %154 = OpAccessChain %_ptr_Function_float %samplePos %uint_1
        %155 = OpLoad %float %154
        %156 = OpFUnordNotEqual %bool %155 %float_0
               OpBranch %153
        %153 = OpLabel
        %157 = OpPhi %bool %151 %47 %156 %152
               OpSelectionMerge %159 None
               OpBranchConditional %157 %158 %159
        %158 = OpLabel
        %165 = OpLoad %162 %shadowCubeMap
        %166 = OpLoad %v3float %samplePos
        %167 = OpImageSampleImplicitLod %v4float %165 %166
        %168 = OpVectorShuffle %v3float %167 %167 0 1 2
        %169 = OpExtInst %float %1 Length %168
        %171 = OpFMul %float %169 %float_0_00499999989
               OpStore %dist %171
        %172 = OpLoad %float %dist
        %173 = OpCompositeConstruct %v3float %172 %172 %172
        %174 = OpCompositeExtract %float %173 0
        %175 = OpCompositeExtract %float %173 1
        %176 = OpCompositeExtract %float %173 2
        %177 = OpCompositeConstruct %v4float %174 %175 %176 %float_1
               OpStore %outFragColor %177
               OpBranch %159
        %159 = OpLabel
               OpReturn
               OpFunctionEnd
