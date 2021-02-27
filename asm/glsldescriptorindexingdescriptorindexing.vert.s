; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 57
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %outTexIndex %inTextureIndex %inPos %_
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %outTexIndex "outTexIndex"
               OpName %inTextureIndex "inTextureIndex"
               OpName %pos "pos"
               OpName %inPos "inPos"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %Matrices "Matrices"
               OpMemberName %Matrices 0 "projection"
               OpMemberName %Matrices 1 "view"
               OpMemberName %Matrices 2 "model"
               OpName %matrices "matrices"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpDecorate %outTexIndex Flat
               OpDecorate %outTexIndex Location 1
               OpDecorate %inTextureIndex Location 2
               OpDecorate %inPos Location 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpMemberDecorate %Matrices 0 ColMajor
               OpMemberDecorate %Matrices 0 Offset 0
               OpMemberDecorate %Matrices 0 MatrixStride 16
               OpMemberDecorate %Matrices 1 ColMajor
               OpMemberDecorate %Matrices 1 Offset 64
               OpMemberDecorate %Matrices 1 MatrixStride 16
               OpMemberDecorate %Matrices 2 ColMajor
               OpMemberDecorate %Matrices 2 Offset 128
               OpMemberDecorate %Matrices 2 MatrixStride 16
               OpDecorate %Matrices Block
               OpDecorate %matrices DescriptorSet 0
               OpDecorate %matrices Binding 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v2float = OpTypeVector %float 2
%_ptr_Output_v2float = OpTypePointer Output %v2float
      %outUV = OpVariable %_ptr_Output_v2float Output
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
        %int = OpTypeInt 32 1
%_ptr_Output_int = OpTypePointer Output %int
%outTexIndex = OpVariable %_ptr_Output_int Output
%_ptr_Input_int = OpTypePointer Input %int
%inTextureIndex = OpVariable %_ptr_Input_int Input
    %v4float = OpTypeVector %float 4
%_ptr_Function_v4float = OpTypePointer Function %v4float
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
       %uint = OpTypeInt 32 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
%mat4v4float = OpTypeMatrix %v4float 4
   %Matrices = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_Matrices = OpTypePointer Uniform %Matrices
   %matrices = OpVariable %_ptr_Uniform_Matrices Uniform
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_1 = OpConstant %int 1
      %int_2 = OpConstant %int 2
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
        %pos = OpVariable %_ptr_Function_v4float Function
         %12 = OpLoad %v2float %inUV
               OpStore %outUV %12
         %18 = OpLoad %int %inTextureIndex
               OpStore %outTexIndex %18
         %25 = OpLoad %v3float %inPos
         %27 = OpCompositeExtract %float %25 0
         %28 = OpCompositeExtract %float %25 1
         %29 = OpCompositeExtract %float %25 2
         %30 = OpCompositeConstruct %v4float %27 %28 %29 %float_1
               OpStore %pos %30
         %43 = OpAccessChain %_ptr_Uniform_mat4v4float %matrices %int_0
         %44 = OpLoad %mat4v4float %43
         %46 = OpAccessChain %_ptr_Uniform_mat4v4float %matrices %int_1
         %47 = OpLoad %mat4v4float %46
         %48 = OpMatrixTimesMatrix %mat4v4float %44 %47
         %50 = OpAccessChain %_ptr_Uniform_mat4v4float %matrices %int_2
         %51 = OpLoad %mat4v4float %50
         %52 = OpMatrixTimesMatrix %mat4v4float %48 %51
         %53 = OpLoad %v4float %pos
         %54 = OpMatrixTimesVector %v4float %52 %53
         %56 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %56 %54
               OpReturn
               OpFunctionEnd
