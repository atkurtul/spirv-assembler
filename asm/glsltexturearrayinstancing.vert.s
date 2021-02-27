; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 66
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUV %inUV %gl_InstanceIndex %_ %inPos
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUV "outUV"
               OpName %inUV "inUV"
               OpName %Instance "Instance"
               OpMemberName %Instance 0 "model"
               OpMemberName %Instance 1 "arrayIndex"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "view"
               OpMemberName %UBO 2 "instance"
               OpName %ubo "ubo"
               OpName %gl_InstanceIndex "gl_InstanceIndex"
               OpName %modelView "modelView"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpMemberName %gl_PerVertex 1 "gl_PointSize"
               OpMemberName %gl_PerVertex 2 "gl_ClipDistance"
               OpMemberName %gl_PerVertex 3 "gl_CullDistance"
               OpName %_ ""
               OpName %inPos "inPos"
               OpDecorate %outUV Location 0
               OpDecorate %inUV Location 1
               OpMemberDecorate %Instance 0 ColMajor
               OpMemberDecorate %Instance 0 Offset 0
               OpMemberDecorate %Instance 0 MatrixStride 16
               OpMemberDecorate %Instance 1 Offset 64
               OpDecorate %_arr_Instance_uint_8 ArrayStride 80
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 Offset 128
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpDecorate %gl_InstanceIndex BuiltIn InstanceIndex
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpMemberDecorate %gl_PerVertex 1 BuiltIn PointSize
               OpMemberDecorate %gl_PerVertex 2 BuiltIn ClipDistance
               OpMemberDecorate %gl_PerVertex 3 BuiltIn CullDistance
               OpDecorate %gl_PerVertex Block
               OpDecorate %inPos Location 0
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
      %outUV = OpVariable %_ptr_Output_v3float Output
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
   %Instance = OpTypeStruct %mat4v4float %v4float
       %uint = OpTypeInt 32 0
     %uint_8 = OpConstant %uint 8
%_arr_Instance_uint_8 = OpTypeArray %Instance %uint_8
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %_arr_Instance_uint_8
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
        %int = OpTypeInt 32 1
      %int_2 = OpConstant %int 2
%_ptr_Input_int = OpTypePointer Input %int
%gl_InstanceIndex = OpVariable %_ptr_Input_int Input
      %int_1 = OpConstant %int 1
     %uint_0 = OpConstant %uint 0
%_ptr_Uniform_float = OpTypePointer Uniform %float
%_ptr_Function_mat4v4float = OpTypePointer Function %mat4v4float
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
      %int_0 = OpConstant %int 0
     %uint_1 = OpConstant %uint 1
%_arr_float_uint_1 = OpTypeArray %float %uint_1
%gl_PerVertex = OpTypeStruct %v4float %float %_arr_float_uint_1 %_arr_float_uint_1
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
       %main = OpFunction %void None %3
          %5 = OpLabel
  %modelView = OpVariable %_ptr_Function_mat4v4float Function
         %13 = OpLoad %v2float %inUV
         %27 = OpLoad %int %gl_InstanceIndex
         %31 = OpAccessChain %_ptr_Uniform_float %ubo %int_2 %27 %int_1 %uint_0
         %32 = OpLoad %float %31
         %33 = OpCompositeExtract %float %13 0
         %34 = OpCompositeExtract %float %13 1
         %35 = OpCompositeConstruct %v3float %33 %34 %32
               OpStore %outUV %35
         %39 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %40 = OpLoad %mat4v4float %39
         %41 = OpLoad %int %gl_InstanceIndex
         %43 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_2 %41 %int_0
         %44 = OpLoad %mat4v4float %43
         %45 = OpMatrixTimesMatrix %mat4v4float %40 %44
               OpStore %modelView %45
         %51 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %52 = OpLoad %mat4v4float %51
         %53 = OpLoad %mat4v4float %modelView
         %54 = OpMatrixTimesMatrix %mat4v4float %52 %53
         %57 = OpLoad %v3float %inPos
         %59 = OpCompositeExtract %float %57 0
         %60 = OpCompositeExtract %float %57 1
         %61 = OpCompositeExtract %float %57 2
         %62 = OpCompositeConstruct %v4float %59 %60 %61 %float_1
         %63 = OpMatrixTimesVector %v4float %54 %62
         %65 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %65 %63
               OpReturn
               OpFunctionEnd
