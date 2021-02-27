; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 97
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %inPos %gl_InstanceIndex %_ %outUV %inUV %outWorldPos %outNormal %inNormal %outTangent %inTangent %outColor %inColor
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %tmpPos "tmpPos"
               OpName %inPos "inPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "model"
               OpMemberName %UBO 2 "view"
               OpMemberName %UBO 3 "instancePos"
               OpName %ubo "ubo"
               OpName %gl_InstanceIndex "gl_InstanceIndex"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outWorldPos "outWorldPos"
               OpName %mNormal "mNormal"
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %outTangent "outTangent"
               OpName %inTangent "inTangent"
               OpName %outColor "outColor"
               OpName %inColor "inColor"
               OpDecorate %inPos Location 0
               OpDecorate %_arr_v4float_uint_3 ArrayStride 16
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
               OpDecorate %gl_InstanceIndex BuiltIn InstanceIndex
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %outUV Location 1
               OpDecorate %inUV Location 1
               OpDecorate %outWorldPos Location 3
               OpDecorate %outNormal Location 0
               OpDecorate %inNormal Location 3
               OpDecorate %outTangent Location 4
               OpDecorate %inTangent Location 4
               OpDecorate %outColor Location 2
               OpDecorate %inColor Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
%_ptr_Input_v4float = OpTypePointer Input %v4float
      %inPos = OpVariable %_ptr_Input_v4float Input
%mat4v4float = OpTypeMatrix %v4float 4
       %uint = OpTypeInt 32 0
     %uint_3 = OpConstant %uint 3
%_arr_v4float_uint_3 = OpTypeArray %v4float %uint_3
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float %_arr_v4float_uint_3
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_3 = OpConstant %int 3
%_ptr_Input_int = OpTypePointer Input %int
%gl_InstanceIndex = OpVariable %_ptr_Input_int Input
%_ptr_Uniform_v4float = OpTypePointer Uniform %v4float
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_2 = OpConstant %int 2
      %int_1 = OpConstant %int 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
%outWorldPos = OpVariable %_ptr_Output_v3float Output
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
  %outNormal = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
 %outTangent = OpVariable %_ptr_Output_v3float Output
  %inTangent = OpVariable %_ptr_Input_v3float Input
   %outColor = OpVariable %_ptr_Output_v3float Output
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
     %tmpPos = OpVariable %_ptr_Function_v4float Function
    %mNormal = OpVariable %_ptr_Function_mat3v3float Function
         %12 = OpLoad %v4float %inPos
         %24 = OpLoad %int %gl_InstanceIndex
         %26 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3 %24
         %27 = OpLoad %v4float %26
         %28 = OpFAdd %v4float %12 %27
               OpStore %tmpPos %28
         %36 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %37 = OpLoad %mat4v4float %36
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %40 = OpLoad %mat4v4float %39
         %41 = OpMatrixTimesMatrix %mat4v4float %37 %40
         %43 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %44 = OpLoad %mat4v4float %43
         %45 = OpMatrixTimesMatrix %mat4v4float %41 %44
         %46 = OpLoad %v4float %tmpPos
         %47 = OpMatrixTimesVector %v4float %45 %46
         %49 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %49 %47
         %55 = OpLoad %v2float %inUV
               OpStore %outUV %55
         %59 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %60 = OpLoad %mat4v4float %59
         %61 = OpLoad %v4float %tmpPos
         %62 = OpMatrixTimesVector %v4float %60 %61
         %63 = OpCompositeExtract %float %62 0
         %64 = OpCompositeExtract %float %62 1
         %65 = OpCompositeExtract %float %62 2
         %66 = OpCompositeConstruct %v3float %63 %64 %65
               OpStore %outWorldPos %66
         %70 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %71 = OpLoad %mat4v4float %70
         %72 = OpCompositeExtract %v4float %71 0
         %73 = OpVectorShuffle %v3float %72 %72 0 1 2
         %74 = OpCompositeExtract %v4float %71 1
         %75 = OpVectorShuffle %v3float %74 %74 0 1 2
         %76 = OpCompositeExtract %v4float %71 2
         %77 = OpVectorShuffle %v3float %76 %76 0 1 2
         %78 = OpCompositeConstruct %mat3v3float %73 %75 %77
         %79 = OpExtInst %mat3v3float %1 MatrixInverse %78
         %80 = OpTranspose %mat3v3float %79
               OpStore %mNormal %80
         %82 = OpLoad %mat3v3float %mNormal
         %85 = OpLoad %v3float %inNormal
         %86 = OpExtInst %v3float %1 Normalize %85
         %87 = OpMatrixTimesVector %v3float %82 %86
               OpStore %outNormal %87
         %89 = OpLoad %mat3v3float %mNormal
         %91 = OpLoad %v3float %inTangent
         %92 = OpExtInst %v3float %1 Normalize %91
         %93 = OpMatrixTimesVector %v3float %89 %92
               OpStore %outTangent %93
         %96 = OpLoad %v3float %inColor
               OpStore %outColor %96
               OpReturn
               OpFunctionEnd
