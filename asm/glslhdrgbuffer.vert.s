; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 127
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Vertex %main "main" %outUVW %inPos %outPos %_ %outNormal %inNormal %outLightVec %outViewVec
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outUVW "outUVW"
               OpName %inPos "inPos"
               OpName %type "type"
               OpName %outPos "outPos"
               OpName %UBO "UBO"
               OpMemberName %UBO 0 "projection"
               OpMemberName %UBO 1 "modelview"
               OpMemberName %UBO 2 "inverseModelview"
               OpName %ubo "ubo"
               OpName %gl_PerVertex "gl_PerVertex"
               OpMemberName %gl_PerVertex 0 "gl_Position"
               OpName %_ ""
               OpName %outNormal "outNormal"
               OpName %inNormal "inNormal"
               OpName %lightPos "lightPos"
               OpName %outLightVec "outLightVec"
               OpName %outViewVec "outViewVec"
               OpDecorate %outUVW Location 0
               OpDecorate %inPos Location 0
               OpDecorate %type SpecId 0
               OpDecorate %outPos Location 1
               OpMemberDecorate %UBO 0 ColMajor
               OpMemberDecorate %UBO 0 Offset 0
               OpMemberDecorate %UBO 0 MatrixStride 16
               OpMemberDecorate %UBO 1 ColMajor
               OpMemberDecorate %UBO 1 Offset 64
               OpMemberDecorate %UBO 1 MatrixStride 16
               OpMemberDecorate %UBO 2 ColMajor
               OpMemberDecorate %UBO 2 Offset 128
               OpMemberDecorate %UBO 2 MatrixStride 16
               OpDecorate %UBO Block
               OpDecorate %ubo DescriptorSet 0
               OpDecorate %ubo Binding 0
               OpMemberDecorate %gl_PerVertex 0 BuiltIn Position
               OpDecorate %gl_PerVertex Block
               OpDecorate %outNormal Location 2
               OpDecorate %inNormal Location 1
               OpDecorate %outLightVec Location 4
               OpDecorate %outViewVec Location 3
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v3float = OpTypeVector %float 3
%_ptr_Output_v3float = OpTypePointer Output %v3float
     %outUVW = OpVariable %_ptr_Output_v3float Output
%_ptr_Input_v3float = OpTypePointer Input %v3float
      %inPos = OpVariable %_ptr_Input_v3float Input
        %int = OpTypeInt 32 1
       %type = OpSpecConstant %int 0
     %outPos = OpVariable %_ptr_Output_v3float Output
    %v4float = OpTypeVector %float 4
%mat4v4float = OpTypeMatrix %v4float 4
        %UBO = OpTypeStruct %mat4v4float %mat4v4float %mat4v4float
%_ptr_Uniform_UBO = OpTypePointer Uniform %UBO
        %ubo = OpVariable %_ptr_Uniform_UBO Uniform
      %int_1 = OpConstant %int 1
%_ptr_Uniform_mat4v4float = OpTypePointer Uniform %mat4v4float
%mat3v3float = OpTypeMatrix %v3float 3
%gl_PerVertex = OpTypeStruct %v4float
%_ptr_Output_gl_PerVertex = OpTypePointer Output %gl_PerVertex
          %_ = OpVariable %_ptr_Output_gl_PerVertex Output
      %int_0 = OpConstant %int 0
    %float_1 = OpConstant %float 1
%_ptr_Output_v4float = OpTypePointer Output %v4float
  %outNormal = OpVariable %_ptr_Output_v3float Output
   %inNormal = OpVariable %_ptr_Input_v3float Input
%_ptr_Function_v3float = OpTypePointer Function %v3float
    %float_0 = OpConstant %float 0
   %float_n5 = OpConstant %float -5
    %float_5 = OpConstant %float 5
        %119 = OpConstantComposite %v3float %float_0 %float_n5 %float_5
%outLightVec = OpVariable %_ptr_Output_v3float Output
 %outViewVec = OpVariable %_ptr_Output_v3float Output
       %main = OpFunction %void None %3
          %5 = OpLabel
   %lightPos = OpVariable %_ptr_Function_v3float Function
         %12 = OpLoad %v3float %inPos
               OpStore %outUVW %12
               OpSelectionMerge %17 None
               OpSwitch %type %17 0 %15 1 %16
         %15 = OpLabel
         %26 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %27 = OpLoad %mat4v4float %26
         %29 = OpCompositeExtract %v4float %27 0
         %30 = OpVectorShuffle %v3float %29 %29 0 1 2
         %31 = OpCompositeExtract %v4float %27 1
         %32 = OpVectorShuffle %v3float %31 %31 0 1 2
         %33 = OpCompositeExtract %v4float %27 2
         %34 = OpVectorShuffle %v3float %33 %33 0 1 2
         %35 = OpCompositeConstruct %mat3v3float %30 %32 %34
         %36 = OpLoad %v3float %inPos
         %37 = OpMatrixTimesVector %v3float %35 %36
         %38 = OpCompositeExtract %float %37 0
         %39 = OpCompositeExtract %float %37 1
         %40 = OpCompositeExtract %float %37 2
         %41 = OpCompositeConstruct %v3float %38 %39 %40
               OpStore %outPos %41
         %46 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %47 = OpLoad %mat4v4float %46
         %48 = OpLoad %v3float %outPos
         %50 = OpCompositeExtract %float %48 0
         %51 = OpCompositeExtract %float %48 1
         %52 = OpCompositeExtract %float %48 2
         %53 = OpCompositeConstruct %v4float %50 %51 %52 %float_1
         %54 = OpMatrixTimesVector %v4float %47 %53
         %55 = OpCompositeExtract %float %54 0
         %56 = OpCompositeExtract %float %54 1
         %57 = OpCompositeExtract %float %54 2
         %58 = OpCompositeExtract %float %54 3
         %59 = OpCompositeConstruct %v4float %55 %56 %57 %58
         %61 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %61 %59
               OpBranch %17
         %16 = OpLabel
         %63 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %64 = OpLoad %mat4v4float %63
         %65 = OpLoad %v3float %inPos
         %66 = OpCompositeExtract %float %65 0
         %67 = OpCompositeExtract %float %65 1
         %68 = OpCompositeExtract %float %65 2
         %69 = OpCompositeConstruct %v4float %66 %67 %68 %float_1
         %70 = OpMatrixTimesVector %v4float %64 %69
         %71 = OpCompositeExtract %float %70 0
         %72 = OpCompositeExtract %float %70 1
         %73 = OpCompositeExtract %float %70 2
         %74 = OpCompositeConstruct %v3float %71 %72 %73
               OpStore %outPos %74
         %75 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_0
         %76 = OpLoad %mat4v4float %75
         %77 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %78 = OpLoad %mat4v4float %77
         %79 = OpMatrixTimesMatrix %mat4v4float %76 %78
         %80 = OpLoad %v3float %inPos
         %81 = OpCompositeExtract %float %80 0
         %82 = OpCompositeExtract %float %80 1
         %83 = OpCompositeExtract %float %80 2
         %84 = OpCompositeConstruct %v4float %81 %82 %83 %float_1
         %85 = OpMatrixTimesVector %v4float %79 %84
         %86 = OpAccessChain %_ptr_Output_v4float %_ %int_0
               OpStore %86 %85
               OpBranch %17
         %17 = OpLabel
         %89 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
         %90 = OpLoad %mat4v4float %89
         %91 = OpLoad %v3float %inPos
         %92 = OpCompositeExtract %float %91 0
         %93 = OpCompositeExtract %float %91 1
         %94 = OpCompositeExtract %float %91 2
         %95 = OpCompositeConstruct %v4float %92 %93 %94 %float_1
         %96 = OpMatrixTimesVector %v4float %90 %95
         %97 = OpCompositeExtract %float %96 0
         %98 = OpCompositeExtract %float %96 1
         %99 = OpCompositeExtract %float %96 2
        %100 = OpCompositeConstruct %v3float %97 %98 %99
               OpStore %outPos %100
        %102 = OpAccessChain %_ptr_Uniform_mat4v4float %ubo %int_1
        %103 = OpLoad %mat4v4float %102
        %104 = OpCompositeExtract %v4float %103 0
        %105 = OpVectorShuffle %v3float %104 %104 0 1 2
        %106 = OpCompositeExtract %v4float %103 1
        %107 = OpVectorShuffle %v3float %106 %106 0 1 2
        %108 = OpCompositeExtract %v4float %103 2
        %109 = OpVectorShuffle %v3float %108 %108 0 1 2
        %110 = OpCompositeConstruct %mat3v3float %105 %107 %109
        %112 = OpLoad %v3float %inNormal
        %113 = OpMatrixTimesVector %v3float %110 %112
               OpStore %outNormal %113
               OpStore %lightPos %119
        %121 = OpLoad %v3float %lightPos
        %122 = OpLoad %v3float %outPos
        %123 = OpFSub %v3float %121 %122
               OpStore %outLightVec %123
        %125 = OpLoad %v3float %outPos
        %126 = OpFNegate %v3float %125
               OpStore %outViewVec %126
               OpReturn
               OpFunctionEnd
