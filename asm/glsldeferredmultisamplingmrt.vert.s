; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 101
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
    %v3float = OpTypeVector %float 3
    %float_1 = OpConstant %float 1
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
%gl_PerVertex = OpTypeStruct %v4float
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
         %13 = OpLoad %v4float %inPos
         %14 = OpVectorShuffle %v3float %13 %13 0 1 2
         %16 = OpCompositeExtract %float %14 0
         %17 = OpCompositeExtract %float %14 1
         %18 = OpCompositeExtract %float %14 2
         %19 = OpCompositeConstruct %v4float %16 %17 %18 %float_1
         %31 = OpLoad %int %gl_InstanceIndex
         %33 = OpAccessChain %_ptr_Uniform_v4float %ubo %int_3 %31
         %34 = OpLoad %v4float %33
         %35 = OpFAdd %v4float %19 %34
               OpStore %tmpPos %35
         %41 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %42 = OpLoad %mat4v4float %41
         %44 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2
         %45 = OpLoad %mat4v4float %44
         %46 = OpMatrixTimesMatrix %mat4v4float %42 %45
         %48 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %49 = OpLoad %mat4v4float %48
         %50 = OpMatrixTimesMatrix %mat4v4float %46 %49
         %51 = OpLoad %v4float %tmpPos
         %52 = OpMatrixTimesVector %v4float %50 %51
         %54 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %54 %52
         %60 = OpLoad %v2float %inUV
               OpStore %outUV %60
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %64 = OpLoad %mat4v4float %63
         %65 = OpLoad %v4float %tmpPos
         %66 = OpMatrixTimesVector %v4float %64 %65
         %67 = OpCompositeExtract %float %66 0
         %68 = OpCompositeExtract %float %66 1
         %69 = OpCompositeExtract %float %66 2
         %70 = OpCompositeConstruct %v3float %67 %68 %69
               OpStore %outWorldPos %70
         %74 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %75 = OpLoad %mat4v4float %74
         %76 = OpCompositeExtract %v4float %75 0
         %77 = OpVectorShuffle %v3float %76 %76 0 1 2
         %78 = OpCompositeExtract %v4float %75 1
         %79 = OpVectorShuffle %v3float %78 %78 0 1 2
         %80 = OpCompositeExtract %v4float %75 2
         %81 = OpVectorShuffle %v3float %80 %80 0 1 2
         %82 = OpCompositeConstruct %mat3v3float %77 %79 %81
         %83 = OpExtInst %mat3v3float %1 MatrixInverse %82
         %84 = OpTranspose %mat3v3float %83
               OpStore %mNormal %84
         %86 = OpLoad %mat3v3float %mNormal
         %89 = OpLoad %v3float %inNormal
         %90 = OpExtInst %v3float %1 Normalize %89
         %91 = OpMatrixTimesVector %v3float %86 %90
               OpStore %outNormal %91
         %93 = OpLoad %mat3v3float %mNormal
         %95 = OpLoad %v3float %inTangent
         %96 = OpExtInst %v3float %1 Normalize %95
         %97 = OpMatrixTimesVector %v3float %93 %96
               OpStore %outTangent %97
        %100 = OpLoad %v3float %inColor
               OpStore %outColor %100
               OpReturn
               OpFunctionEnd
