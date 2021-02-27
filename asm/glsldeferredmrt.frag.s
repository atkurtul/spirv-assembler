; SPIR-V
; Version: 1.0
; Generator: Google Shaderc over Glslang; 10
; Bound: 83
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %main "main" %outPosition %inWorldPos %inNormal %inTangent %inUV %outNormal %outAlbedo %inColor
               OpExecutionMode %main OriginUpperLeft
               OpSource GLSL 450
               OpSourceExtension "GL_GOOGLE_cpp_style_line_directive"
               OpSourceExtension "GL_GOOGLE_include_directive"
               OpName %main "main"
               OpName %outPosition "outPosition"
               OpName %inWorldPos "inWorldPos"
               OpName %N "N"
               OpName %inNormal "inNormal"
               OpName %T "T"
               OpName %inTangent "inTangent"
               OpName %B "B"
               OpName %TBN "TBN"
               OpName %tnorm "tnorm"
               OpName %samplerNormalMap "samplerNormalMap"
               OpName %inUV "inUV"
               OpName %outNormal "outNormal"
               OpName %outAlbedo "outAlbedo"
               OpName %samplerColor "samplerColor"
               OpName %inColor "inColor"
               OpDecorate %outPosition Location 0
               OpDecorate %inWorldPos Location 3
               OpDecorate %inNormal Location 0
               OpDecorate %inTangent Location 4
               OpDecorate %samplerNormalMap DescriptorSet 0
               OpDecorate %samplerNormalMap Binding 2
               OpDecorate %inUV Location 1
               OpDecorate %outNormal Location 1
               OpDecorate %outAlbedo Location 2
               OpDecorate %samplerColor DescriptorSet 0
               OpDecorate %samplerColor Binding 1
               OpDecorate %inColor Location 2
       %void = OpTypeVoid
          %3 = OpTypeFunction %void
      %float = OpTypeFloat 32
    %v4float = OpTypeVector %float 4
%_ptr_Output_v4float = OpTypePointer Output %v4float
%outPosition = OpVariable %_ptr_Output_v4float Output
    %v3float = OpTypeVector %float 3
%_ptr_Input_v3float = OpTypePointer Input %v3float
 %inWorldPos = OpVariable %_ptr_Input_v3float Input
    %float_1 = OpConstant %float 1
%_ptr_Function_v3float = OpTypePointer Function %v3float
   %inNormal = OpVariable %_ptr_Input_v3float Input
  %inTangent = OpVariable %_ptr_Input_v3float Input
%mat3v3float = OpTypeMatrix %v3float 3
%_ptr_Function_mat3v3float = OpTypePointer Function %mat3v3float
    %float_0 = OpConstant %float 0
         %54 = OpTypeImage %float 2D 0 0 0 1 Unknown
         %55 = OpTypeSampledImage %54
%_ptr_UniformConstant_55 = OpTypePointer UniformConstant %55
%samplerNormalMap = OpVariable %_ptr_UniformConstant_55 UniformConstant
    %v2float = OpTypeVector %float 2
%_ptr_Input_v2float = OpTypePointer Input %v2float
       %inUV = OpVariable %_ptr_Input_v2float Input
    %float_2 = OpConstant %float 2
         %67 = OpConstantComposite %v3float %float_1 %float_1 %float_1
  %outNormal = OpVariable %_ptr_Output_v4float Output
  %outAlbedo = OpVariable %_ptr_Output_v4float Output
%samplerColor = OpVariable %_ptr_UniformConstant_55 UniformConstant
    %inColor = OpVariable %_ptr_Input_v3float Input
       %main = OpFunction %void None %3
          %5 = OpLabel
          %N = OpVariable %_ptr_Function_v3float Function
          %T = OpVariable %_ptr_Function_v3float Function
          %B = OpVariable %_ptr_Function_v3float Function
        %TBN = OpVariable %_ptr_Function_mat3v3float Function
      %tnorm = OpVariable %_ptr_Function_v3float Function
         %13 = OpLoad %v3float %inWorldPos
         %15 = OpCompositeExtract %float %13 0
         %16 = OpCompositeExtract %float %13 1
         %17 = OpCompositeExtract %float %13 2
         %18 = OpCompositeConstruct %v4float %15 %16 %17 %float_1
               OpStore %outPosition %18
         %22 = OpLoad %v3float %inNormal
         %23 = OpExtInst %v3float %1 Normalize %22
               OpStore %N %23
         %26 = OpLoad %v3float %inTangent
         %27 = OpExtInst %v3float %1 Normalize %26
               OpStore %T %27
         %29 = OpLoad %v3float %N
         %30 = OpLoad %v3float %T
         %31 = OpExtInst %v3float %1 Cross %29 %30
               OpStore %B %31
         %35 = OpLoad %v3float %T
         %36 = OpLoad %v3float %B
         %37 = OpLoad %v3float %N
         %39 = OpCompositeExtract %float %35 0
         %40 = OpCompositeExtract %float %35 1
         %41 = OpCompositeExtract %float %35 2
         %42 = OpCompositeExtract %float %36 0
         %43 = OpCompositeExtract %float %36 1
         %44 = OpCompositeExtract %float %36 2
         %45 = OpCompositeExtract %float %37 0
         %46 = OpCompositeExtract %float %37 1
         %47 = OpCompositeExtract %float %37 2
         %48 = OpCompositeConstruct %v3float %39 %40 %41
         %49 = OpCompositeConstruct %v3float %42 %43 %44
         %50 = OpCompositeConstruct %v3float %45 %46 %47
         %51 = OpCompositeConstruct %mat3v3float %48 %49 %50
               OpStore %TBN %51
         %53 = OpLoad %mat3v3float %TBN
         %58 = OpLoad %55 %samplerNormalMap
         %62 = OpLoad %v2float %inUV
         %63 = OpImageSampleImplicitLod %v4float %58 %62
         %64 = OpVectorShuffle %v3float %63 %63 0 1 2
         %66 = OpVectorTimesScalar %v3float %64 %float_2
         %68 = OpFSub %v3float %66 %67
         %69 = OpExtInst %v3float %1 Normalize %68
         %70 = OpMatrixTimesVector %v3float %53 %69
               OpStore %tnorm %70
         %72 = OpLoad %v3float %tnorm
         %73 = OpCompositeExtract %float %72 0
         %74 = OpCompositeExtract %float %72 1
         %75 = OpCompositeExtract %float %72 2
         %76 = OpCompositeConstruct %v4float %73 %74 %75 %float_1
               OpStore %outNormal %76
         %79 = OpLoad %55 %samplerColor
         %80 = OpLoad %v2float %inUV
         %81 = OpImageSampleImplicitLod %v4float %79 %80
               OpStore %outAlbedo %81
               OpReturn
               OpFunctionEnd
