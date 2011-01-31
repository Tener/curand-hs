
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_t (
  module HS_CURAND_H_S_t
) where

import Foreign
import Foreign.C.Types
import HS_CURAND_H_S_n

type T_char1 = S_char1
type T_char2 = S_char2
type T_char3 = S_char3
type T_char4 = S_char4
type T_cudaError_t = CInt
type T_cudaEvent_t = Ptr (S_CUevent_st)
type T_cudaGraphicsResource_t = Ptr (S_cudaGraphicsResource)
type T_cudaStream_t = Ptr (S_CUstream_st)
type T_cudaUUID_t = S_CUuuid_st
type T_curandDirectionVectorSet_t = CInt
type T_curandDirectionVectors32_t = CUInt
type T_curandGenerator_t = Ptr (S_curandGenerator_st)
type T_curandOrdering_t = CInt
type T_curandRngType_t = CInt
type T_curandStatus_t = CInt
type T_dim3 = S_dim3
type T_double1 = S_double1
type T_double2 = S_double2
type T_double3 = S_double3
type T_double4 = S_double4
type T_float1 = S_float1
type T_float2 = S_float2
type T_float3 = S_float3
type T_float4 = S_float4
type T_int1 = S_int1
type T_int2 = S_int2
type T_int3 = S_int3
type T_int4 = S_int4
type T_long1 = S_long1
type T_long2 = S_long2
type T_long3 = S_long3
type T_long4 = S_long4
type T_longlong1 = S_longlong1
type T_longlong2 = S_longlong2
type T_longlong3 = S_longlong3
type T_longlong4 = S_longlong4
type T_ptrdiff_t = CPtrdiff
type T_short1 = S_short1
type T_short2 = S_short2
type T_short3 = S_short3
type T_short4 = S_short4
type T_size_t = CSize
type T_uchar1 = S_uchar1
type T_uchar2 = S_uchar2
type T_uchar3 = S_uchar3
type T_uchar4 = S_uchar4
type T_uint1 = S_uint1
type T_uint2 = S_uint2
type T_uint3 = S_uint3
type T_uint4 = S_uint4
type T_ulong1 = S_ulong1
type T_ulong2 = S_ulong2
type T_ulong3 = S_ulong3
type T_ulong4 = S_ulong4
type T_ulonglong1 = S_ulonglong1
type T_ulonglong2 = S_ulonglong2
type T_ulonglong3 = S_ulonglong3
type T_ulonglong4 = S_ulonglong4
type T_ushort1 = S_ushort1
type T_ushort2 = S_ushort2
type T_ushort3 = S_ushort3
type T_ushort4 = S_ushort4
type T_wchar_t = CWchar

