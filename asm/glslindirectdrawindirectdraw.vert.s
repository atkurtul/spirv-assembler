; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 177
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outColor %inColor %outUV %inUV %instanceTexIndex %instanceRot %outNormal %inNormal %inPos %instanceScale %instancePos %_ %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %instanceTexIndex "instanceTexIndex"
               OpName %s "s"
               OpName %instanceRot "instanceRot"
               OpName %c "c"
               OpName %mx "mx"
               OpName %my "my"
               OpName %mz "mz"
               OpName %rotMat "rotMat"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %instanceScale "instanceScale"
               OpName %instancePos "instancePos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpName %ubo "ubo"
               OpName %wPos "wPos"
               OpName %lPos "lPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outColor Location 1
               OpDecorate %inColor Location 3
               OpDecorate %outUV Location 2
               OpDecorate %inUV Location 2
               OpDecorate %instanceTexIndex Location 7
               OpDecorate %instanceRot Location 5
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 1
               OpDecorate %inPos Location 0
               OpDecorate %instanceScale Location 6
               OpDecorate %instancePos Location 4
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
   %outColor = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
    %inColor = OpVariable %_ptr_Input_v3float Input
      %outUV = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
        %int = OpTypeInt 32 1
%_ptr_Input_int = OpTypePointer Input %int
%instanceTexIndex = OpVariable %_ptr_Input_int Input
%_ptr_Function_float = OpTypePointer Function %float
%instanceRot = OpVariable %_ptr_Input_v3float Input
       %uint = OpTypeInt 32 0
     %uint_0 = OpConstant %uint 0
%_ptr_Input_float = OpTypePointer Input %float
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
      %int_0 = OpConstant %int 0
    %float_0 = OpConstant %float 0
%_ptr_Function_v4float = OpTypePointer Function %v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
    %float_1 = OpConstant %float 1
         %58 = OpConstantComposite %v4float %float_0 %float_0 %float_1 %float_0
      %int_3 = OpConstant %int 3
         %61 = OpConstantComposite %v4float %float_0 %float_0 %float_0 %float_1
     %uint_1 = OpConstant %uint 1
         %75 = OpConstantComposite %v4float %float_0 %float_1 %float_0 %float_0
     %uint_2 = OpConstant %uint 2
         %91 = OpConstantComposite %v4float %float_1 %float_0 %float_0 %float_0
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
%mat3v3float = OpTypeMatrix %v3float 3
      %inPos = OpVariable %_ptr_Input_v3float Input
%instanceScale = OpVariable %_ptr_Input_float Input
%instancePos = OpVariable %_ptr_Input_v3float Input
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
        %UBO = OpTypeStruct %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%_ptr_Output_v4float = OpTypePointer Output %v4float
   %float_n5 = OpConstant %float -5
        %166 = OpConstantComposite %v4float %float_0 %float_n5 %float_0 %float_1
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
          %s = OpVariable %_ptr_Function_float Function
          %c = OpVariable %_ptr_Function_float Function
         %mx = OpVariable %_ptr_Function_mat4v4float Function
         %my = OpVariable %_ptr_Function_mat4v4float Function
         %mz = OpVariable %_ptr_Function_mat4v4float Function
     %rotMat = OpVariable %_ptr_Function_mat4v4float Function
        %pos = OpVariable %_ptr_Function_v4float Function
       %wPos = OpVariable %_ptr_Function_v4float Function
       %lPos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v3float %inColor
               OpStore %outColor %12
         %17 = OpLoad %v2float %inUV
         %21 = OpLoad %int %instanceTexIndex
         %22 = OpConvertSToF %float %21
         %23 = OpCompositeExtract %float %17 0
         %24 = OpCompositeExtract %float %17 1
         %25 = OpCompositeConstruct %v3float %23 %24 %22
               OpStore %outUV %25
         %32 = OpAccessChain %_ptr_Input_float %instanceRot %uint_0
         %33 = OpLoad %float %32
         %34 = OpExtInst %float %1 Sin %33
               OpStore %s %34
         %36 = OpAccessChain %_ptr_Input_float %instanceRot %uint_0
         %37 = OpLoad %float %36
         %38 = OpExtInst %float %1 Cos %37
               OpStore %c %38
         %44 = OpLoad %float %c
         %45 = OpLoad %float %s
         %47 = OpCompositeConstruct %v4float %44 %45 %float_0 %float_0
         %49 = OpAccessChain %_ptr_Function_v4float %mx %int_0
               OpStore %49 %47
         %51 = OpLoad %float %s
         %52 = OpFNegate %float %51
         %53 = OpLoad %float %c
         %54 = OpCompositeConstruct %v4float %52 %53 %float_0 %float_0
         %55 = OpAccessChain %_ptr_Function_v4float %mx %int_1
               OpStore %55 %54
         %59 = OpAccessChain %_ptr_Function_v4float %mx %int_2
               OpStore %59 %58
         %62 = OpAccessChain %_ptr_Function_v4float %mx %int_3
               OpStore %62 %61
         %64 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
         %65 = OpLoad %float %64
         %66 = OpExtInst %float %1 Sin %65
               OpStore %s %66
         %67 = OpAccessChain %_ptr_Input_float %instanceRot %uint_1
         %68 = OpLoad %float %67
         %69 = OpExtInst %float %1 Cos %68
               OpStore %c %69
         %71 = OpLoad %float %c
         %72 = OpLoad %float %s
         %73 = OpCompositeConstruct %v4float %71 %float_0 %72 %float_0
         %74 = OpAccessChain %_ptr_Function_v4float %my %int_0
               OpStore %74 %73
         %76 = OpAccessChain %_ptr_Function_v4float %my %int_1
               OpStore %76 %75
         %77 = OpLoad %float %s
         %78 = OpFNegate %float %77
         %79 = OpLoad %float %c
         %80 = OpCompositeConstruct %v4float %78 %float_0 %79 %float_0
         %81 = OpAccessChain %_ptr_Function_v4float %my %int_2
               OpStore %81 %80
         %82 = OpAccessChain %_ptr_Function_v4float %my %int_3
               OpStore %82 %61
         %84 = OpAccessChain %_ptr_Input_float %instanceRot %uint_2
         %85 = OpLoad %float %84
         %86 = OpExtInst %float %1 Sin %85
               OpStore %s %86
         %87 = OpAccessChain %_ptr_Input_float %instanceRot %uint_2
         %88 = OpLoad %float %87
         %89 = OpExtInst %float %1 Cos %88
               OpStore %c %89
         %92 = OpAccessChain %_ptr_Function_v4float %mz %int_0
               OpStore %92 %91
         %93 = OpLoad %float %c
         %94 = OpLoad %float %s
         %95 = OpCompositeConstruct %v4float %float_0 %93 %94 %float_0
         %96 = OpAccessChain %_ptr_Function_v4float %mz %int_1
               OpStore %96 %95
         %97 = OpLoad %float %s
         %98 = OpFNegate %float %97
         %99 = OpLoad %float %c
        %100 = OpCompositeConstruct %v4float %float_0 %98 %99 %float_0
        %101 = OpAccessChain %_ptr_Function_v4float %mz %int_2
               OpStore %101 %100
        %102 = OpAccessChain %_ptr_Function_v4float %mz %int_3
               OpStore %102 %61
        %104 = OpLoad %mat4v4float %mz
        %105 = OpLoad %mat4v4float %my
        %106 = OpMatrixTimesMatrix %mat4v4float %104 %105
        %107 = OpLoad %mat4v4float %mx
        %108 = OpMatrixTimesMatrix %mat4v4float %106 %107
               OpStore %rotMat %108
        %111 = OpLoad %v3float %inNormal
        %112 = OpLoad %mat4v4float %rotMat
        %114 = OpCompositeExtract %v4float %112 0
        %115 = OpVectorShuffle %v3float %114 %114 0 1 2
        %116 = OpCompositeExtract %v4float %112 1
        %117 = OpVectorShuffle %v3float %116 %116 0 1 2
        %118 = OpCompositeExtract %v4float %112 2
        %119 = OpVectorShuffle %v3float %118 %118 0 1 2
        %120 = OpCompositeConstruct %mat3v3float %115 %117 %119
        %121 = OpVectorTimesMatrix %v3float %111 %120
               OpStore %outNormal %121
        %124 = OpLoad %v3float %inPos
        %126 = OpLoad %float %instanceScale
        %127 = OpVectorTimesScalar %v3float %124 %126
        %129 = OpLoad %v3float %instancePos
        %130 = OpFAdd %v3float %127 %129
        %131 = OpCompositeExtract %float %130 0
        %132 = OpCompositeExtract %float %130 1
        %133 = OpCompositeExtract %float %130 2
        %134 = OpCompositeConstruct %v4float %131 %132 %133 %float_1
        %135 = OpLoad %mat4v4float %rotMat
        %136 = OpVectorTimesMatrix %v4float %134 %135
               OpStore %pos %136
        %145 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
        %146 = OpLoad %mat4v4float %145
        %147 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %148 = OpLoad %mat4v4float %147
        %149 = OpMatrixTimesMatrix %mat4v4float %146 %148
        %150 = OpLoad %v4float %pos
        %151 = OpMatrixTimesVector %v4float %149 %150
        %153 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %153 %151
        %155 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %156 = OpLoad %mat4v4float %155
        %157 = OpLoad %v4float %pos
        %158 = OpVectorShuffle %v3float %157 %157 0 1 2
        %159 = OpCompositeExtract %float %158 0
        %160 = OpCompositeExtract %float %158 1
        %161 = OpCompositeExtract %float %158 2
        %162 = OpCompositeConstruct %v4float %159 %160 %161 %float_1
        %163 = OpMatrixTimesVector %v4float %156 %162
               OpStore %wPos %163
               OpStore %lPos %166
        %168 = OpLoad %v4float %lPos
        %169 = OpVectorShuffle %v3float %168 %168 0 1 2
        %170 = OpLoad %v4float %pos
        %171 = OpVectorShuffle %v3float %170 %170 0 1 2
        %172 = OpFSub %v3float %169 %171
               OpStore %outLightVec %172
        %174 = OpLoad %v4float %pos
        %175 = OpVectorShuffle %v3float %174 %174 0 1 2
        %176 = OpFNegate %v3float %175
               OpStore %outViewVec %176
               OpReturn
               OpFunctionEnd
