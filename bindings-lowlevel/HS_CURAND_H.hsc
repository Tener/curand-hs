
#if __GLASGOW_HASKELL__ && __GLASGOW_HASKELL__ < 409
#include <Rts.h>
#endif
#include <HsFFI.h>

#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <ctype.h>

#ifndef __quote__
#define __quote__(x...) x
#endif

#ifndef offsetof
#define offsetof(t, f) ((size_t) &((t *)0)->f)
#endif


#if __NHC__
#define hsc_line(line, file) \
    printf ("# %d \"%s\"\n", line, file);
#else
#define hsc_line(line, file) \
    printf ("{-# LINE %d \"%s\" #-}\n", line, file);
#endif

#define hsc_const(x)                        \
    if ((x) < 0)                            \
        printf ("%ld", (long)(x));          \
    else                                    \
        printf ("%lu", (unsigned long)(x));

#define hsc_const_str(x)                                          \
    {                                                             \
        const char *s = (x);                                      \
        printf ("\"");                                            \
        while (*s != '\0')                                        \
        {                                                         \
            if (*s == '"' || *s == '\\')                          \
                printf ("\\%c", *s);                              \
            else if (*s >= 0x20 && *s <= 0x7E)                    \
                printf ("%c", *s);                                \
            else                                                  \
                printf ("\\%d%s",                                 \
                        (unsigned char) *s,                       \
                        s[1] >= '0' && s[1] <= '9' ? "\\&" : ""); \
            ++s;                                                  \
        }                                                         \
        printf ("\"");                                            \
    }

#define hsc_type(t)                                         \
    if ((t)(int)(t)1.4 == (t)1.4)                           \
        printf ("%s%d",                                     \
                (t)(-1) < (t)0 ? "Int" : "Word",            \
                sizeof (t) * 8);                            \
    else                                                    \
        printf ("%s",                                       \
                sizeof (t) >  sizeof (double) ? "LDouble" : \
                sizeof (t) == sizeof (double) ? "Double"  : \
                "Float");

#define hsc_peek(t, f) \
    printf ("(\\hsc_ptr -> peekByteOff hsc_ptr %ld)", (long) offsetof (__quote__(t), f));

#define hsc_poke(t, f) \
    printf ("(\\hsc_ptr -> pokeByteOff hsc_ptr %ld)", (long) offsetof (__quote__(t), f));

#define hsc_ptr(t, f) \
    printf ("(\\hsc_ptr -> hsc_ptr `plusPtr` %ld)", (long) offsetof (__quote__(t), f));

#define hsc_offset(t, f) \
    printf("(%ld)", (long) offsetof (__quote__(t), f));

#define hsc_size(t) \
    printf("(%ld)", (long) sizeof(t));

#define hsc_enum(t, f, print_name, x)         \
    print_name;                               \
    printf (" :: %s\n", #t);                  \
    print_name;                               \
    printf (" = %s ", #f);                    \
    if ((x) < 0)                              \
        printf ("(%ld)\n", (long)(x));        \
    else                                      \
        printf ("%lu\n", (unsigned long)(x));

#define hsc_haskellize(x)                                          \
    {                                                              \
        const char *s = (x);                                       \
        int upper = 0;                                             \
        if (*s != '\0')                                            \
        {                                                          \
            putchar (tolower (*s));                                \
            ++s;                                                   \
            while (*s != '\0')                                     \
            {                                                      \
                if (*s == '_')                                     \
                    upper = 1;                                     \
                else                                               \
                {                                                  \
                    putchar (upper ? toupper (*s) : tolower (*s)); \
                    upper = 0;                                     \
                }                                                  \
                ++s;                                               \
            }                                                      \
        }                                                          \
    }

#def void _dummy_force_HS_CURAND_H_hsc_c (void) { }
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}

-- Split begin/HS_CURAND_H

{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
#include "hs_curand.h"
#ifndef __quote__
#define __quote__(x...) x
#endif

module HS_CURAND_H(
  module HS_CURAND_H,
{-- #SPLIT#
  module HS_CURAND_H_C,
  module HS_CURAND_H_S,
  module HS_CURAND_H_F,
  module HS_CURAND_H_E,
  module HS_CURAND_H_S_d,
  module HS_CURAND_H_S_t,
  module HS_CURAND_H_S_n,
#SPLIT# --}
  module HSFFIG.FieldAccess,
  module Foreign,
  module Foreign.C.String,
  module Foreign.C.Types) where

import Foreign
import Foreign.Ptr
import Foreign.C.Types
import Foreign.C.String
import HSFFIG.FieldAccess
{-- #SPLIT#
import HS_CURAND_H_C
import HS_CURAND_H_S
import HS_CURAND_H_F
import HS_CURAND_H_E
import HS_CURAND_H_S_d
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HSFFIG.FieldAccess
#SPLIT# --}

-- Split end


-- Split begin/HS_CURAND_H_C_0

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_0 (
  module HS_CURAND_H_C_0
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C_1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_1 (
  module HS_CURAND_H_C_1
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C_2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_2 (
  module HS_CURAND_H_C_2
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C_3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_3 (
  module HS_CURAND_H_C_3
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C_4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_4 (
  module HS_CURAND_H_C_4
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C_5

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C_5 (
  module HS_CURAND_H_C_5
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_C

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_C (
  module HS_CURAND_H_C_0,
  module HS_CURAND_H_C_1,
  module HS_CURAND_H_C_2,
  module HS_CURAND_H_C_3,
  module HS_CURAND_H_C_4,
  module HS_CURAND_H_C_5,
  module HS_CURAND_H_C
) where

import Foreign
import Foreign.C.Types
import HS_CURAND_H_C_0
import HS_CURAND_H_C_1
import HS_CURAND_H_C_2
import HS_CURAND_H_C_3
import HS_CURAND_H_C_4
import HS_CURAND_H_C_5
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_S

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S (
  module HS_CURAND_H_S_S_CUevent_st,
  module HS_CURAND_H_S_S_CUstream_st,
  module HS_CURAND_H_S_S_CUuuid_st,
  module HS_CURAND_H_S_S_char1,
  module HS_CURAND_H_S_S_char2,
  module HS_CURAND_H_S_S_char3,
  module HS_CURAND_H_S_S_char4,
  module HS_CURAND_H_S_S_cudaArray,
  module HS_CURAND_H_S_S_cudaChannelFormatDesc,
  module HS_CURAND_H_S_S_cudaDeviceProp,
  module HS_CURAND_H_S_S_cudaExtent,
  module HS_CURAND_H_S_S_cudaFuncAttributes,
  module HS_CURAND_H_S_S_cudaGraphicsResource,
  module HS_CURAND_H_S_S_cudaMemcpy3DParms,
  module HS_CURAND_H_S_S_cudaPitchedPtr,
  module HS_CURAND_H_S_S_cudaPos,
  module HS_CURAND_H_S_S_curandGenerator_st,
  module HS_CURAND_H_S_S_dim3,
  module HS_CURAND_H_S_S_double1,
  module HS_CURAND_H_S_S_double2,
  module HS_CURAND_H_S_S_double3,
  module HS_CURAND_H_S_S_double4,
  module HS_CURAND_H_S_S_float1,
  module HS_CURAND_H_S_S_float2,
  module HS_CURAND_H_S_S_float3,
  module HS_CURAND_H_S_S_float4,
  module HS_CURAND_H_S_S_int1,
  module HS_CURAND_H_S_S_int2,
  module HS_CURAND_H_S_S_int3,
  module HS_CURAND_H_S_S_int4,
  module HS_CURAND_H_S_S_long1,
  module HS_CURAND_H_S_S_long2,
  module HS_CURAND_H_S_S_long3,
  module HS_CURAND_H_S_S_long4,
  module HS_CURAND_H_S_S_longlong1,
  module HS_CURAND_H_S_S_longlong2,
  module HS_CURAND_H_S_S_longlong3,
  module HS_CURAND_H_S_S_longlong4,
  module HS_CURAND_H_S_S_short1,
  module HS_CURAND_H_S_S_short2,
  module HS_CURAND_H_S_S_short3,
  module HS_CURAND_H_S_S_short4,
  module HS_CURAND_H_S_S_surfaceReference,
  module HS_CURAND_H_S_S_textureReference,
  module HS_CURAND_H_S_S_uchar1,
  module HS_CURAND_H_S_S_uchar2,
  module HS_CURAND_H_S_S_uchar3,
  module HS_CURAND_H_S_S_uchar4,
  module HS_CURAND_H_S_S_uint1,
  module HS_CURAND_H_S_S_uint2,
  module HS_CURAND_H_S_S_uint3,
  module HS_CURAND_H_S_S_uint4,
  module HS_CURAND_H_S_S_ulong1,
  module HS_CURAND_H_S_S_ulong2,
  module HS_CURAND_H_S_S_ulong3,
  module HS_CURAND_H_S_S_ulong4,
  module HS_CURAND_H_S_S_ulonglong1,
  module HS_CURAND_H_S_S_ulonglong2,
  module HS_CURAND_H_S_S_ulonglong3,
  module HS_CURAND_H_S_S_ulonglong4,
  module HS_CURAND_H_S_S_ushort1,
  module HS_CURAND_H_S_S_ushort2,
  module HS_CURAND_H_S_S_ushort3,
  module HS_CURAND_H_S_S_ushort4,
  module HS_CURAND_H_S
) where

import Foreign
import Foreign.C.Types
import HS_CURAND_H_S_S_CUevent_st
import HS_CURAND_H_S_S_CUstream_st
import HS_CURAND_H_S_S_CUuuid_st
import HS_CURAND_H_S_S_char1
import HS_CURAND_H_S_S_char2
import HS_CURAND_H_S_S_char3
import HS_CURAND_H_S_S_char4
import HS_CURAND_H_S_S_cudaArray
import HS_CURAND_H_S_S_cudaChannelFormatDesc
import HS_CURAND_H_S_S_cudaDeviceProp
import HS_CURAND_H_S_S_cudaExtent
import HS_CURAND_H_S_S_cudaFuncAttributes
import HS_CURAND_H_S_S_cudaGraphicsResource
import HS_CURAND_H_S_S_cudaMemcpy3DParms
import HS_CURAND_H_S_S_cudaPitchedPtr
import HS_CURAND_H_S_S_cudaPos
import HS_CURAND_H_S_S_curandGenerator_st
import HS_CURAND_H_S_S_dim3
import HS_CURAND_H_S_S_double1
import HS_CURAND_H_S_S_double2
import HS_CURAND_H_S_S_double3
import HS_CURAND_H_S_S_double4
import HS_CURAND_H_S_S_float1
import HS_CURAND_H_S_S_float2
import HS_CURAND_H_S_S_float3
import HS_CURAND_H_S_S_float4
import HS_CURAND_H_S_S_int1
import HS_CURAND_H_S_S_int2
import HS_CURAND_H_S_S_int3
import HS_CURAND_H_S_S_int4
import HS_CURAND_H_S_S_long1
import HS_CURAND_H_S_S_long2
import HS_CURAND_H_S_S_long3
import HS_CURAND_H_S_S_long4
import HS_CURAND_H_S_S_longlong1
import HS_CURAND_H_S_S_longlong2
import HS_CURAND_H_S_S_longlong3
import HS_CURAND_H_S_S_longlong4
import HS_CURAND_H_S_S_short1
import HS_CURAND_H_S_S_short2
import HS_CURAND_H_S_S_short3
import HS_CURAND_H_S_S_short4
import HS_CURAND_H_S_S_surfaceReference
import HS_CURAND_H_S_S_textureReference
import HS_CURAND_H_S_S_uchar1
import HS_CURAND_H_S_S_uchar2
import HS_CURAND_H_S_S_uchar3
import HS_CURAND_H_S_S_uchar4
import HS_CURAND_H_S_S_uint1
import HS_CURAND_H_S_S_uint2
import HS_CURAND_H_S_S_uint3
import HS_CURAND_H_S_S_uint4
import HS_CURAND_H_S_S_ulong1
import HS_CURAND_H_S_S_ulong2
import HS_CURAND_H_S_S_ulong3
import HS_CURAND_H_S_S_ulong4
import HS_CURAND_H_S_S_ulonglong1
import HS_CURAND_H_S_S_ulonglong2
import HS_CURAND_H_S_S_ulonglong3
import HS_CURAND_H_S_S_ulonglong4
import HS_CURAND_H_S_S_ushort1
import HS_CURAND_H_S_S_ushort2
import HS_CURAND_H_S_S_ushort3
import HS_CURAND_H_S_S_ushort4
#SPLIT# --}


-- Split end


-- Split begin/HS_CURAND_H_S_d

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_d (
  module HS_CURAND_H_S_d
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}

data V_sizeof = V_sizeof
data X_sizeof = X_sizeof
data D_sizeof = D_sizeof
data V_x = V_x
data X_x = X_x
data D_x = D_x
data V_y = V_y
data X_y = X_y
data D_y = D_y
data V_z = V_z
data X_z = X_z
data D_z = D_z
data V_w = V_w
data X_w = X_w
data D_w = D_w
data V_f = V_f
data X_f = X_f
data D_f = D_f
data V_name = V_name
data X_name = X_name
data D_name = D_name
data V_totalGlobalMem = V_totalGlobalMem
data X_totalGlobalMem = X_totalGlobalMem
data D_totalGlobalMem = D_totalGlobalMem
data V_sharedMemPerBlock = V_sharedMemPerBlock
data X_sharedMemPerBlock = X_sharedMemPerBlock
data D_sharedMemPerBlock = D_sharedMemPerBlock
data V_regsPerBlock = V_regsPerBlock
data X_regsPerBlock = X_regsPerBlock
data D_regsPerBlock = D_regsPerBlock
data V_warpSize = V_warpSize
data X_warpSize = X_warpSize
data D_warpSize = D_warpSize
data V_memPitch = V_memPitch
data X_memPitch = X_memPitch
data D_memPitch = D_memPitch
data V_maxThreadsPerBlock = V_maxThreadsPerBlock
data X_maxThreadsPerBlock = X_maxThreadsPerBlock
data D_maxThreadsPerBlock = D_maxThreadsPerBlock
data V_maxThreadsDim = V_maxThreadsDim
data X_maxThreadsDim = X_maxThreadsDim
data D_maxThreadsDim = D_maxThreadsDim
data V_maxGridSize = V_maxGridSize
data X_maxGridSize = X_maxGridSize
data D_maxGridSize = D_maxGridSize
data V_clockRate = V_clockRate
data X_clockRate = X_clockRate
data D_clockRate = D_clockRate
data V_totalConstMem = V_totalConstMem
data X_totalConstMem = X_totalConstMem
data D_totalConstMem = D_totalConstMem
data V_major = V_major
data X_major = X_major
data D_major = D_major
data V_minor = V_minor
data X_minor = X_minor
data D_minor = D_minor
data V_textureAlignment = V_textureAlignment
data X_textureAlignment = X_textureAlignment
data D_textureAlignment = D_textureAlignment
data V_deviceOverlap = V_deviceOverlap
data X_deviceOverlap = X_deviceOverlap
data D_deviceOverlap = D_deviceOverlap
data V_multiProcessorCount = V_multiProcessorCount
data X_multiProcessorCount = X_multiProcessorCount
data D_multiProcessorCount = D_multiProcessorCount
data V_kernelExecTimeoutEnabled = V_kernelExecTimeoutEnabled
data X_kernelExecTimeoutEnabled = X_kernelExecTimeoutEnabled
data D_kernelExecTimeoutEnabled = D_kernelExecTimeoutEnabled
data V_integrated = V_integrated
data X_integrated = X_integrated
data D_integrated = D_integrated
data V_canMapHostMemory = V_canMapHostMemory
data X_canMapHostMemory = X_canMapHostMemory
data D_canMapHostMemory = D_canMapHostMemory
data V_computeMode = V_computeMode
data X_computeMode = X_computeMode
data D_computeMode = D_computeMode
data V_maxTexture1D = V_maxTexture1D
data X_maxTexture1D = X_maxTexture1D
data D_maxTexture1D = D_maxTexture1D
data V_maxTexture2D = V_maxTexture2D
data X_maxTexture2D = X_maxTexture2D
data D_maxTexture2D = D_maxTexture2D
data V_maxTexture3D = V_maxTexture3D
data X_maxTexture3D = X_maxTexture3D
data D_maxTexture3D = D_maxTexture3D
data V_maxTexture2DArray = V_maxTexture2DArray
data X_maxTexture2DArray = X_maxTexture2DArray
data D_maxTexture2DArray = D_maxTexture2DArray
data V_surfaceAlignment = V_surfaceAlignment
data X_surfaceAlignment = X_surfaceAlignment
data D_surfaceAlignment = D_surfaceAlignment
data V_concurrentKernels = V_concurrentKernels
data X_concurrentKernels = X_concurrentKernels
data D_concurrentKernels = D_concurrentKernels
data V_ECCEnabled = V_ECCEnabled
data X_ECCEnabled = X_ECCEnabled
data D_ECCEnabled = D_ECCEnabled
data V_pciBusID = V_pciBusID
data X_pciBusID = X_pciBusID
data D_pciBusID = D_pciBusID
data V_pciDeviceID = V_pciDeviceID
data X_pciDeviceID = X_pciDeviceID
data D_pciDeviceID = D_pciDeviceID
data V_tccDriver = V_tccDriver
data X_tccDriver = X_tccDriver
data D_tccDriver = D_tccDriver
data V___cudaReserved = V___cudaReserved
data X___cudaReserved = X___cudaReserved
data D___cudaReserved = D___cudaReserved
data V_width = V_width
data X_width = X_width
data D_width = D_width
data V_height = V_height
data X_height = X_height
data D_height = D_height
data V_depth = V_depth
data X_depth = X_depth
data D_depth = D_depth
data V_sharedSizeBytes = V_sharedSizeBytes
data X_sharedSizeBytes = X_sharedSizeBytes
data D_sharedSizeBytes = D_sharedSizeBytes
data V_constSizeBytes = V_constSizeBytes
data X_constSizeBytes = X_constSizeBytes
data D_constSizeBytes = D_constSizeBytes
data V_localSizeBytes = V_localSizeBytes
data X_localSizeBytes = X_localSizeBytes
data D_localSizeBytes = D_localSizeBytes
data V_numRegs = V_numRegs
data X_numRegs = X_numRegs
data D_numRegs = D_numRegs
data V_ptxVersion = V_ptxVersion
data X_ptxVersion = X_ptxVersion
data D_ptxVersion = D_ptxVersion
data V_binaryVersion = V_binaryVersion
data X_binaryVersion = X_binaryVersion
data D_binaryVersion = D_binaryVersion
data V_srcArray = V_srcArray
data X_srcArray = X_srcArray
data D_srcArray = D_srcArray
data V_srcPos = V_srcPos
data X_srcPos = X_srcPos
data D_srcPos = D_srcPos
data V_srcPtr = V_srcPtr
data X_srcPtr = X_srcPtr
data D_srcPtr = D_srcPtr
data V_dstArray = V_dstArray
data X_dstArray = X_dstArray
data D_dstArray = D_dstArray
data V_dstPos = V_dstPos
data X_dstPos = X_dstPos
data D_dstPos = D_dstPos
data V_dstPtr = V_dstPtr
data X_dstPtr = X_dstPtr
data D_dstPtr = D_dstPtr
data V_extent = V_extent
data X_extent = X_extent
data D_extent = D_extent
data V_kind = V_kind
data X_kind = X_kind
data D_kind = D_kind
data V_ptr = V_ptr
data X_ptr = X_ptr
data D_ptr = D_ptr
data V_pitch = V_pitch
data X_pitch = X_pitch
data D_pitch = D_pitch
data V_xsize = V_xsize
data X_xsize = X_xsize
data D_xsize = D_xsize
data V_ysize = V_ysize
data X_ysize = X_ysize
data D_ysize = D_ysize
data V_channelDesc = V_channelDesc
data X_channelDesc = X_channelDesc
data D_channelDesc = D_channelDesc
data V_normalized = V_normalized
data X_normalized = X_normalized
data D_normalized = D_normalized
data V_filterMode = V_filterMode
data X_filterMode = X_filterMode
data D_filterMode = D_filterMode
data V_addressMode = V_addressMode
data X_addressMode = X_addressMode
data D_addressMode = D_addressMode

-- Split end



-- Split begin/HS_CURAND_H_S_t

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_t (
  module HS_CURAND_H_S_t
) where

import Foreign
import Foreign.C.Types
import HS_CURAND_H_S_n
#SPLIT# --}

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

-- Split end



-- Split begin/HS_CURAND_H_S_n

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_n (
  module HS_CURAND_H_S_n
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}

newtype S_CUevent_st = S_CUevent_st ()
newtype S_CUstream_st = S_CUstream_st ()
newtype S_CUuuid_st = S_CUuuid_st ()
newtype S_char1 = S_char1 ()
newtype S_char2 = S_char2 ()
newtype S_char3 = S_char3 ()
newtype S_char4 = S_char4 ()
newtype S_cudaArray = S_cudaArray ()
newtype S_cudaChannelFormatDesc = S_cudaChannelFormatDesc ()
newtype S_cudaDeviceProp = S_cudaDeviceProp ()
newtype S_cudaExtent = S_cudaExtent ()
newtype S_cudaFuncAttributes = S_cudaFuncAttributes ()
newtype S_cudaGraphicsResource = S_cudaGraphicsResource ()
newtype S_cudaMemcpy3DParms = S_cudaMemcpy3DParms ()
newtype S_cudaPitchedPtr = S_cudaPitchedPtr ()
newtype S_cudaPos = S_cudaPos ()
newtype S_curandGenerator_st = S_curandGenerator_st ()
newtype S_dim3 = S_dim3 ()
newtype S_double1 = S_double1 ()
newtype S_double2 = S_double2 ()
newtype S_double3 = S_double3 ()
newtype S_double4 = S_double4 ()
newtype S_float1 = S_float1 ()
newtype S_float2 = S_float2 ()
newtype S_float3 = S_float3 ()
newtype S_float4 = S_float4 ()
newtype S_int1 = S_int1 ()
newtype S_int2 = S_int2 ()
newtype S_int3 = S_int3 ()
newtype S_int4 = S_int4 ()
newtype S_long1 = S_long1 ()
newtype S_long2 = S_long2 ()
newtype S_long3 = S_long3 ()
newtype S_long4 = S_long4 ()
newtype S_longlong1 = S_longlong1 ()
newtype S_longlong2 = S_longlong2 ()
newtype S_longlong3 = S_longlong3 ()
newtype S_longlong4 = S_longlong4 ()
newtype S_short1 = S_short1 ()
newtype S_short2 = S_short2 ()
newtype S_short3 = S_short3 ()
newtype S_short4 = S_short4 ()
newtype S_surfaceReference = S_surfaceReference ()
newtype S_textureReference = S_textureReference ()
newtype S_uchar1 = S_uchar1 ()
newtype S_uchar2 = S_uchar2 ()
newtype S_uchar3 = S_uchar3 ()
newtype S_uchar4 = S_uchar4 ()
newtype S_uint1 = S_uint1 ()
newtype S_uint2 = S_uint2 ()
newtype S_uint3 = S_uint3 ()
newtype S_uint4 = S_uint4 ()
newtype S_ulong1 = S_ulong1 ()
newtype S_ulong2 = S_ulong2 ()
newtype S_ulong3 = S_ulong3 ()
newtype S_ulong4 = S_ulong4 ()
newtype S_ulonglong1 = S_ulonglong1 ()
newtype S_ulonglong2 = S_ulonglong2 ()
newtype S_ulonglong3 = S_ulonglong3 ()
newtype S_ulonglong4 = S_ulonglong4 ()
newtype S_ushort1 = S_ushort1 ()
newtype S_ushort2 = S_ushort2 ()
newtype S_ushort3 = S_ushort3 ()
newtype S_ushort4 = S_ushort4 ()

-- Split end


--


-- Split begin/HS_CURAND_H_S_S_CUevent_st

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_CUevent_st (
  module HS_CURAND_H_S_S_CUevent_st
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_CUstream_st

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_CUstream_st (
  module HS_CURAND_H_S_S_CUstream_st
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_CUuuid_st

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_CUuuid_st (
  module HS_CURAND_H_S_S_CUuuid_st
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_char1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_char1 (
  module HS_CURAND_H_S_S_char1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_char1 ((CSChar)) V_x where
  z --> V_x = (#peek __quote__(struct char1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct char1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_char1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct char1))

instance Storable S_char1 where
  sizeOf _ = (#size __quote__(struct char1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct char1"
  poke _ = error $ "peek and poke cannot be used with struct char1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_char2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_char2 (
  module HS_CURAND_H_S_S_char2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_char3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_char3 (
  module HS_CURAND_H_S_S_char3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_x where
  z --> V_x = (#peek __quote__(struct char3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct char3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_y where
  z --> V_y = (#peek __quote__(struct char3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct char3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_z where
  z --> V_z = (#peek __quote__(struct char3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct char3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_char3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct char3))

instance Storable S_char3 where
  sizeOf _ = (#size __quote__(struct char3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct char3"
  poke _ = error $ "peek and poke cannot be used with struct char3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_char4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_char4 (
  module HS_CURAND_H_S_S_char4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaArray

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaArray (
  module HS_CURAND_H_S_S_cudaArray
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaChannelFormatDesc

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaChannelFormatDesc (
  module HS_CURAND_H_S_S_cudaChannelFormatDesc
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_x where
  z --> V_x = (#peek __quote__(struct cudaChannelFormatDesc), x) z
  (z, V_x) <-- v = (#poke __quote__(struct cudaChannelFormatDesc), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_y where
  z --> V_y = (#peek __quote__(struct cudaChannelFormatDesc), y) z
  (z, V_y) <-- v = (#poke __quote__(struct cudaChannelFormatDesc), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_z where
  z --> V_z = (#peek __quote__(struct cudaChannelFormatDesc), z) z
  (z, V_z) <-- v = (#poke __quote__(struct cudaChannelFormatDesc), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_w where
  z --> V_w = (#peek __quote__(struct cudaChannelFormatDesc), w) z
  (z, V_w) <-- v = (#poke __quote__(struct cudaChannelFormatDesc), w) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_f where
  z --> V_f = (#peek __quote__(struct cudaChannelFormatDesc), f) z
  (z, V_f) <-- v = (#poke __quote__(struct cudaChannelFormatDesc), f) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaChannelFormatDesc))

instance Storable S_cudaChannelFormatDesc where
  sizeOf _ = (#size __quote__(struct cudaChannelFormatDesc))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaChannelFormatDesc"
  poke _ = error $ "peek and poke cannot be used with struct cudaChannelFormatDesc"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaDeviceProp

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaDeviceProp (
  module HS_CURAND_H_S_S_cudaDeviceProp
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CChar)) V_name where
  z --> V_name = (#peek __quote__(struct cudaDeviceProp), name) z
  (z, V_name) <-- v = (#poke __quote__(struct cudaDeviceProp), name) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_name where
  z --> D_name = return [(#const( 256 ))]
  (z, D_name) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_totalGlobalMem where
  z --> V_totalGlobalMem = (#peek __quote__(struct cudaDeviceProp), totalGlobalMem) z
  (z, V_totalGlobalMem) <-- v = (#poke __quote__(struct cudaDeviceProp), totalGlobalMem) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_sharedMemPerBlock where
  z --> V_sharedMemPerBlock = (#peek __quote__(struct cudaDeviceProp), sharedMemPerBlock) z
  (z, V_sharedMemPerBlock) <-- v = (#poke __quote__(struct cudaDeviceProp), sharedMemPerBlock) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_regsPerBlock where
  z --> V_regsPerBlock = (#peek __quote__(struct cudaDeviceProp), regsPerBlock) z
  (z, V_regsPerBlock) <-- v = (#poke __quote__(struct cudaDeviceProp), regsPerBlock) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_warpSize where
  z --> V_warpSize = (#peek __quote__(struct cudaDeviceProp), warpSize) z
  (z, V_warpSize) <-- v = (#poke __quote__(struct cudaDeviceProp), warpSize) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_memPitch where
  z --> V_memPitch = (#peek __quote__(struct cudaDeviceProp), memPitch) z
  (z, V_memPitch) <-- v = (#poke __quote__(struct cudaDeviceProp), memPitch) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_maxThreadsPerBlock where
  z --> V_maxThreadsPerBlock = (#peek __quote__(struct cudaDeviceProp), maxThreadsPerBlock) z
  (z, V_maxThreadsPerBlock) <-- v = (#poke __quote__(struct cudaDeviceProp), maxThreadsPerBlock) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxThreadsDim where
  z --> V_maxThreadsDim = (#peek __quote__(struct cudaDeviceProp), maxThreadsDim) z
  (z, V_maxThreadsDim) <-- v = (#poke __quote__(struct cudaDeviceProp), maxThreadsDim) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxThreadsDim where
  z --> D_maxThreadsDim = return [(#const( 3 ))]
  (z, D_maxThreadsDim) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxGridSize where
  z --> V_maxGridSize = (#peek __quote__(struct cudaDeviceProp), maxGridSize) z
  (z, V_maxGridSize) <-- v = (#poke __quote__(struct cudaDeviceProp), maxGridSize) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxGridSize where
  z --> D_maxGridSize = return [(#const( 3 ))]
  (z, D_maxGridSize) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_clockRate where
  z --> V_clockRate = (#peek __quote__(struct cudaDeviceProp), clockRate) z
  (z, V_clockRate) <-- v = (#poke __quote__(struct cudaDeviceProp), clockRate) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_totalConstMem where
  z --> V_totalConstMem = (#peek __quote__(struct cudaDeviceProp), totalConstMem) z
  (z, V_totalConstMem) <-- v = (#poke __quote__(struct cudaDeviceProp), totalConstMem) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_major where
  z --> V_major = (#peek __quote__(struct cudaDeviceProp), major) z
  (z, V_major) <-- v = (#poke __quote__(struct cudaDeviceProp), major) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_minor where
  z --> V_minor = (#peek __quote__(struct cudaDeviceProp), minor) z
  (z, V_minor) <-- v = (#poke __quote__(struct cudaDeviceProp), minor) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_textureAlignment where
  z --> V_textureAlignment = (#peek __quote__(struct cudaDeviceProp), textureAlignment) z
  (z, V_textureAlignment) <-- v = (#poke __quote__(struct cudaDeviceProp), textureAlignment) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_deviceOverlap where
  z --> V_deviceOverlap = (#peek __quote__(struct cudaDeviceProp), deviceOverlap) z
  (z, V_deviceOverlap) <-- v = (#poke __quote__(struct cudaDeviceProp), deviceOverlap) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_multiProcessorCount where
  z --> V_multiProcessorCount = (#peek __quote__(struct cudaDeviceProp), multiProcessorCount) z
  (z, V_multiProcessorCount) <-- v = (#poke __quote__(struct cudaDeviceProp), multiProcessorCount) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_kernelExecTimeoutEnabled where
  z --> V_kernelExecTimeoutEnabled = (#peek __quote__(struct cudaDeviceProp), kernelExecTimeoutEnabled) z
  (z, V_kernelExecTimeoutEnabled) <-- v = (#poke __quote__(struct cudaDeviceProp), kernelExecTimeoutEnabled) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_integrated where
  z --> V_integrated = (#peek __quote__(struct cudaDeviceProp), integrated) z
  (z, V_integrated) <-- v = (#poke __quote__(struct cudaDeviceProp), integrated) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_canMapHostMemory where
  z --> V_canMapHostMemory = (#peek __quote__(struct cudaDeviceProp), canMapHostMemory) z
  (z, V_canMapHostMemory) <-- v = (#poke __quote__(struct cudaDeviceProp), canMapHostMemory) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_computeMode where
  z --> V_computeMode = (#peek __quote__(struct cudaDeviceProp), computeMode) z
  (z, V_computeMode) <-- v = (#poke __quote__(struct cudaDeviceProp), computeMode) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_maxTexture1D where
  z --> V_maxTexture1D = (#peek __quote__(struct cudaDeviceProp), maxTexture1D) z
  (z, V_maxTexture1D) <-- v = (#poke __quote__(struct cudaDeviceProp), maxTexture1D) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture2D where
  z --> V_maxTexture2D = (#peek __quote__(struct cudaDeviceProp), maxTexture2D) z
  (z, V_maxTexture2D) <-- v = (#poke __quote__(struct cudaDeviceProp), maxTexture2D) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture2D where
  z --> D_maxTexture2D = return [(#const( 2 ))]
  (z, D_maxTexture2D) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture3D where
  z --> V_maxTexture3D = (#peek __quote__(struct cudaDeviceProp), maxTexture3D) z
  (z, V_maxTexture3D) <-- v = (#poke __quote__(struct cudaDeviceProp), maxTexture3D) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture3D where
  z --> D_maxTexture3D = return [(#const( 3 ))]
  (z, D_maxTexture3D) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture2DArray where
  z --> V_maxTexture2DArray = (#peek __quote__(struct cudaDeviceProp), maxTexture2DArray) z
  (z, V_maxTexture2DArray) <-- v = (#poke __quote__(struct cudaDeviceProp), maxTexture2DArray) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture2DArray where
  z --> D_maxTexture2DArray = return [(#const( 3 ))]
  (z, D_maxTexture2DArray) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_surfaceAlignment where
  z --> V_surfaceAlignment = (#peek __quote__(struct cudaDeviceProp), surfaceAlignment) z
  (z, V_surfaceAlignment) <-- v = (#poke __quote__(struct cudaDeviceProp), surfaceAlignment) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_concurrentKernels where
  z --> V_concurrentKernels = (#peek __quote__(struct cudaDeviceProp), concurrentKernels) z
  (z, V_concurrentKernels) <-- v = (#poke __quote__(struct cudaDeviceProp), concurrentKernels) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_ECCEnabled where
  z --> V_ECCEnabled = (#peek __quote__(struct cudaDeviceProp), ECCEnabled) z
  (z, V_ECCEnabled) <-- v = (#poke __quote__(struct cudaDeviceProp), ECCEnabled) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_pciBusID where
  z --> V_pciBusID = (#peek __quote__(struct cudaDeviceProp), pciBusID) z
  (z, V_pciBusID) <-- v = (#poke __quote__(struct cudaDeviceProp), pciBusID) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_pciDeviceID where
  z --> V_pciDeviceID = (#peek __quote__(struct cudaDeviceProp), pciDeviceID) z
  (z, V_pciDeviceID) <-- v = (#poke __quote__(struct cudaDeviceProp), pciDeviceID) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_tccDriver where
  z --> V_tccDriver = (#peek __quote__(struct cudaDeviceProp), tccDriver) z
  (z, V_tccDriver) <-- v = (#poke __quote__(struct cudaDeviceProp), tccDriver) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = (#peek __quote__(struct cudaDeviceProp), __cudaReserved) z
  (z, V___cudaReserved) <-- v = (#poke __quote__(struct cudaDeviceProp), __cudaReserved) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(#const( 21 ))]
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaDeviceProp))

instance Storable S_cudaDeviceProp where
  sizeOf _ = (#size __quote__(struct cudaDeviceProp))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaDeviceProp"
  poke _ = error $ "peek and poke cannot be used with struct cudaDeviceProp"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaExtent

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaExtent (
  module HS_CURAND_H_S_S_cudaExtent
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_width where
  z --> V_width = (#peek __quote__(struct cudaExtent), width) z
  (z, V_width) <-- v = (#poke __quote__(struct cudaExtent), width) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_height where
  z --> V_height = (#peek __quote__(struct cudaExtent), height) z
  (z, V_height) <-- v = (#poke __quote__(struct cudaExtent), height) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_depth where
  z --> V_depth = (#peek __quote__(struct cudaExtent), depth) z
  (z, V_depth) <-- v = (#poke __quote__(struct cudaExtent), depth) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaExtent))

instance Storable S_cudaExtent where
  sizeOf _ = (#size __quote__(struct cudaExtent))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaExtent"
  poke _ = error $ "peek and poke cannot be used with struct cudaExtent"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaFuncAttributes

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaFuncAttributes (
  module HS_CURAND_H_S_S_cudaFuncAttributes
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_sharedSizeBytes where
  z --> V_sharedSizeBytes = (#peek __quote__(struct cudaFuncAttributes), sharedSizeBytes) z
  (z, V_sharedSizeBytes) <-- v = (#poke __quote__(struct cudaFuncAttributes), sharedSizeBytes) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_constSizeBytes where
  z --> V_constSizeBytes = (#peek __quote__(struct cudaFuncAttributes), constSizeBytes) z
  (z, V_constSizeBytes) <-- v = (#poke __quote__(struct cudaFuncAttributes), constSizeBytes) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_localSizeBytes where
  z --> V_localSizeBytes = (#peek __quote__(struct cudaFuncAttributes), localSizeBytes) z
  (z, V_localSizeBytes) <-- v = (#poke __quote__(struct cudaFuncAttributes), localSizeBytes) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_maxThreadsPerBlock where
  z --> V_maxThreadsPerBlock = (#peek __quote__(struct cudaFuncAttributes), maxThreadsPerBlock) z
  (z, V_maxThreadsPerBlock) <-- v = (#poke __quote__(struct cudaFuncAttributes), maxThreadsPerBlock) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_numRegs where
  z --> V_numRegs = (#peek __quote__(struct cudaFuncAttributes), numRegs) z
  (z, V_numRegs) <-- v = (#poke __quote__(struct cudaFuncAttributes), numRegs) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_ptxVersion where
  z --> V_ptxVersion = (#peek __quote__(struct cudaFuncAttributes), ptxVersion) z
  (z, V_ptxVersion) <-- v = (#poke __quote__(struct cudaFuncAttributes), ptxVersion) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_binaryVersion where
  z --> V_binaryVersion = (#peek __quote__(struct cudaFuncAttributes), binaryVersion) z
  (z, V_binaryVersion) <-- v = (#poke __quote__(struct cudaFuncAttributes), binaryVersion) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = (#peek __quote__(struct cudaFuncAttributes), __cudaReserved) z
  (z, V___cudaReserved) <-- v = (#poke __quote__(struct cudaFuncAttributes), __cudaReserved) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(#const( 6 ))]
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaFuncAttributes))

instance Storable S_cudaFuncAttributes where
  sizeOf _ = (#size __quote__(struct cudaFuncAttributes))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaFuncAttributes"
  poke _ = error $ "peek and poke cannot be used with struct cudaFuncAttributes"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaGraphicsResource

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaGraphicsResource (
  module HS_CURAND_H_S_S_cudaGraphicsResource
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaMemcpy3DParms

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaMemcpy3DParms (
  module HS_CURAND_H_S_S_cudaMemcpy3DParms
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr (S_cudaArray))) V_srcArray where
  z --> V_srcArray = (#peek __quote__(struct cudaMemcpy3DParms), srcArray) z
  (z, V_srcArray) <-- v = (#poke __quote__(struct cudaMemcpy3DParms), srcArray) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPos)) V_srcPos where
  z --> V_srcPos = return $ (#ptr __quote__(struct cudaMemcpy3DParms), srcPos) z
  (z, V_srcPos) <-- v = error $ "field srcPos is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPitchedPtr)) V_srcPtr where
  z --> V_srcPtr = return $ (#ptr __quote__(struct cudaMemcpy3DParms), srcPtr) z
  (z, V_srcPtr) <-- v = error $ "field srcPtr is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr (S_cudaArray))) V_dstArray where
  z --> V_dstArray = (#peek __quote__(struct cudaMemcpy3DParms), dstArray) z
  (z, V_dstArray) <-- v = (#poke __quote__(struct cudaMemcpy3DParms), dstArray) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPos)) V_dstPos where
  z --> V_dstPos = return $ (#ptr __quote__(struct cudaMemcpy3DParms), dstPos) z
  (z, V_dstPos) <-- v = error $ "field dstPos is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPitchedPtr)) V_dstPtr where
  z --> V_dstPtr = return $ (#ptr __quote__(struct cudaMemcpy3DParms), dstPtr) z
  (z, V_dstPtr) <-- v = error $ "field dstPtr is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaExtent)) V_extent where
  z --> V_extent = return $ (#ptr __quote__(struct cudaMemcpy3DParms), extent) z
  (z, V_extent) <-- v = error $ "field extent is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((CInt)) V_kind where
  z --> V_kind = (#peek __quote__(struct cudaMemcpy3DParms), kind) z
  (z, V_kind) <-- v = (#poke __quote__(struct cudaMemcpy3DParms), kind) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaMemcpy3DParms))

instance Storable S_cudaMemcpy3DParms where
  sizeOf _ = (#size __quote__(struct cudaMemcpy3DParms))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaMemcpy3DParms"
  poke _ = error $ "peek and poke cannot be used with struct cudaMemcpy3DParms"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaPitchedPtr

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaPitchedPtr (
  module HS_CURAND_H_S_S_cudaPitchedPtr
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((Ptr (CChar))) V_ptr where
  z --> V_ptr = (#peek __quote__(struct cudaPitchedPtr), ptr) z
  (z, V_ptr) <-- v = (#poke __quote__(struct cudaPitchedPtr), ptr) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_pitch where
  z --> V_pitch = (#peek __quote__(struct cudaPitchedPtr), pitch) z
  (z, V_pitch) <-- v = (#poke __quote__(struct cudaPitchedPtr), pitch) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_xsize where
  z --> V_xsize = (#peek __quote__(struct cudaPitchedPtr), xsize) z
  (z, V_xsize) <-- v = (#poke __quote__(struct cudaPitchedPtr), xsize) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_ysize where
  z --> V_ysize = (#peek __quote__(struct cudaPitchedPtr), ysize) z
  (z, V_ysize) <-- v = (#poke __quote__(struct cudaPitchedPtr), ysize) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaPitchedPtr))

instance Storable S_cudaPitchedPtr where
  sizeOf _ = (#size __quote__(struct cudaPitchedPtr))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaPitchedPtr"
  poke _ = error $ "peek and poke cannot be used with struct cudaPitchedPtr"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_cudaPos

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaPos (
  module HS_CURAND_H_S_S_cudaPos
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_x where
  z --> V_x = (#peek __quote__(struct cudaPos), x) z
  (z, V_x) <-- v = (#poke __quote__(struct cudaPos), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_y where
  z --> V_y = (#peek __quote__(struct cudaPos), y) z
  (z, V_y) <-- v = (#poke __quote__(struct cudaPos), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_z where
  z --> V_z = (#peek __quote__(struct cudaPos), z) z
  (z, V_z) <-- v = (#poke __quote__(struct cudaPos), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct cudaPos))

instance Storable S_cudaPos where
  sizeOf _ = (#size __quote__(struct cudaPos))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaPos"
  poke _ = error $ "peek and poke cannot be used with struct cudaPos"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_curandGenerator_st

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_curandGenerator_st (
  module HS_CURAND_H_S_S_curandGenerator_st
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_dim3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_dim3 (
  module HS_CURAND_H_S_S_dim3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_x where
  z --> V_x = (#peek __quote__(struct dim3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct dim3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_y where
  z --> V_y = (#peek __quote__(struct dim3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct dim3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_z where
  z --> V_z = (#peek __quote__(struct dim3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct dim3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_dim3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct dim3))

instance Storable S_dim3 where
  sizeOf _ = (#size __quote__(struct dim3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct dim3"
  poke _ = error $ "peek and poke cannot be used with struct dim3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_double1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_double1 (
  module HS_CURAND_H_S_S_double1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_double1 ((CDouble)) V_x where
  z --> V_x = (#peek __quote__(struct double1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct double1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_double1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct double1))

instance Storable S_double1 where
  sizeOf _ = (#size __quote__(struct double1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct double1"
  poke _ = error $ "peek and poke cannot be used with struct double1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_double2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_double2 (
  module HS_CURAND_H_S_S_double2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_double3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_double3 (
  module HS_CURAND_H_S_S_double3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_x where
  z --> V_x = (#peek __quote__(struct double3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct double3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_y where
  z --> V_y = (#peek __quote__(struct double3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct double3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_z where
  z --> V_z = (#peek __quote__(struct double3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct double3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_double3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct double3))

instance Storable S_double3 where
  sizeOf _ = (#size __quote__(struct double3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct double3"
  poke _ = error $ "peek and poke cannot be used with struct double3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_double4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_double4 (
  module HS_CURAND_H_S_S_double4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_float1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_float1 (
  module HS_CURAND_H_S_S_float1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_float1 ((CFloat)) V_x where
  z --> V_x = (#peek __quote__(struct float1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct float1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_float1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct float1))

instance Storable S_float1 where
  sizeOf _ = (#size __quote__(struct float1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct float1"
  poke _ = error $ "peek and poke cannot be used with struct float1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_float2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_float2 (
  module HS_CURAND_H_S_S_float2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_float3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_float3 (
  module HS_CURAND_H_S_S_float3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_x where
  z --> V_x = (#peek __quote__(struct float3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct float3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_y where
  z --> V_y = (#peek __quote__(struct float3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct float3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_z where
  z --> V_z = (#peek __quote__(struct float3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct float3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_float3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct float3))

instance Storable S_float3 where
  sizeOf _ = (#size __quote__(struct float3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct float3"
  poke _ = error $ "peek and poke cannot be used with struct float3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_float4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_float4 (
  module HS_CURAND_H_S_S_float4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_int1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_int1 (
  module HS_CURAND_H_S_S_int1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_int1 ((CInt)) V_x where
  z --> V_x = (#peek __quote__(struct int1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct int1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_int1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct int1))

instance Storable S_int1 where
  sizeOf _ = (#size __quote__(struct int1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct int1"
  poke _ = error $ "peek and poke cannot be used with struct int1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_int2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_int2 (
  module HS_CURAND_H_S_S_int2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_int3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_int3 (
  module HS_CURAND_H_S_S_int3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_x where
  z --> V_x = (#peek __quote__(struct int3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct int3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_y where
  z --> V_y = (#peek __quote__(struct int3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct int3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_z where
  z --> V_z = (#peek __quote__(struct int3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct int3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_int3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct int3))

instance Storable S_int3 where
  sizeOf _ = (#size __quote__(struct int3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct int3"
  poke _ = error $ "peek and poke cannot be used with struct int3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_int4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_int4 (
  module HS_CURAND_H_S_S_int4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_long1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_long1 (
  module HS_CURAND_H_S_S_long1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_long1 ((CLong)) V_x where
  z --> V_x = (#peek __quote__(struct long1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct long1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_long1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct long1))

instance Storable S_long1 where
  sizeOf _ = (#size __quote__(struct long1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct long1"
  poke _ = error $ "peek and poke cannot be used with struct long1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_long2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_long2 (
  module HS_CURAND_H_S_S_long2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_long3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_long3 (
  module HS_CURAND_H_S_S_long3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_long3 ((CLong)) V_x where
  z --> V_x = (#peek __quote__(struct long3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct long3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_long3 ((CLong)) V_y where
  z --> V_y = (#peek __quote__(struct long3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct long3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_long3 ((CLong)) V_z where
  z --> V_z = (#peek __quote__(struct long3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct long3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_long3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct long3))

instance Storable S_long3 where
  sizeOf _ = (#size __quote__(struct long3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct long3"
  poke _ = error $ "peek and poke cannot be used with struct long3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_long4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_long4 (
  module HS_CURAND_H_S_S_long4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_longlong1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_longlong1 (
  module HS_CURAND_H_S_S_longlong1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_longlong1 ((CLLong)) V_x where
  z --> V_x = (#peek __quote__(struct longlong1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct longlong1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_longlong1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct longlong1))

instance Storable S_longlong1 where
  sizeOf _ = (#size __quote__(struct longlong1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct longlong1"
  poke _ = error $ "peek and poke cannot be used with struct longlong1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_longlong2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_longlong2 (
  module HS_CURAND_H_S_S_longlong2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_longlong3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_longlong3 (
  module HS_CURAND_H_S_S_longlong3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_longlong3 ((CLLong)) V_x where
  z --> V_x = (#peek __quote__(struct longlong3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct longlong3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_longlong3 ((CLLong)) V_y where
  z --> V_y = (#peek __quote__(struct longlong3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct longlong3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_longlong3 ((CLLong)) V_z where
  z --> V_z = (#peek __quote__(struct longlong3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct longlong3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_longlong3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct longlong3))

instance Storable S_longlong3 where
  sizeOf _ = (#size __quote__(struct longlong3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct longlong3"
  poke _ = error $ "peek and poke cannot be used with struct longlong3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_longlong4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_longlong4 (
  module HS_CURAND_H_S_S_longlong4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_short1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short1 (
  module HS_CURAND_H_S_S_short1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_short1 ((CShort)) V_x where
  z --> V_x = (#peek __quote__(struct short1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct short1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_short1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct short1))

instance Storable S_short1 where
  sizeOf _ = (#size __quote__(struct short1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct short1"
  poke _ = error $ "peek and poke cannot be used with struct short1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_short2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short2 (
  module HS_CURAND_H_S_S_short2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_short3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short3 (
  module HS_CURAND_H_S_S_short3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_x where
  z --> V_x = (#peek __quote__(struct short3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct short3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_y where
  z --> V_y = (#peek __quote__(struct short3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct short3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_z where
  z --> V_z = (#peek __quote__(struct short3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct short3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_short3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct short3))

instance Storable S_short3 where
  sizeOf _ = (#size __quote__(struct short3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct short3"
  poke _ = error $ "peek and poke cannot be used with struct short3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_short4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short4 (
  module HS_CURAND_H_S_S_short4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_surfaceReference

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_surfaceReference (
  module HS_CURAND_H_S_S_surfaceReference
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_surfaceReference ((Ptr S_cudaChannelFormatDesc)) V_channelDesc where
  z --> V_channelDesc = return $ (#ptr __quote__(struct surfaceReference), channelDesc) z
  (z, V_channelDesc) <-- v = error $ "field channelDesc is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_surfaceReference (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct surfaceReference))

instance Storable S_surfaceReference where
  sizeOf _ = (#size __quote__(struct surfaceReference))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct surfaceReference"
  poke _ = error $ "peek and poke cannot be used with struct surfaceReference"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_textureReference

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_textureReference (
  module HS_CURAND_H_S_S_textureReference
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((CInt)) V_normalized where
  z --> V_normalized = (#peek __quote__(struct textureReference), normalized) z
  (z, V_normalized) <-- v = (#poke __quote__(struct textureReference), normalized) z v

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((CInt)) V_filterMode where
  z --> V_filterMode = (#peek __quote__(struct textureReference), filterMode) z
  (z, V_filterMode) <-- v = (#poke __quote__(struct textureReference), filterMode) z v

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (Ptr (CInt)) V_addressMode where
  z --> V_addressMode = (#peek __quote__(struct textureReference), addressMode) z
  (z, V_addressMode) <-- v = (#poke __quote__(struct textureReference), addressMode) z v

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ([Int]) D_addressMode where
  z --> D_addressMode = return [(#const( 3 ))]
  (z, D_addressMode) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((Ptr S_cudaChannelFormatDesc)) V_channelDesc where
  z --> V_channelDesc = return $ (#ptr __quote__(struct textureReference), channelDesc) z
  (z, V_channelDesc) <-- v = error $ "field channelDesc is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = (#peek __quote__(struct textureReference), __cudaReserved) z
  (z, V___cudaReserved) <-- v = (#poke __quote__(struct textureReference), __cudaReserved) z v

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(#const( 16 ))]
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct textureReference))

instance Storable S_textureReference where
  sizeOf _ = (#size __quote__(struct textureReference))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct textureReference"
  poke _ = error $ "peek and poke cannot be used with struct textureReference"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uchar1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar1 (
  module HS_CURAND_H_S_S_uchar1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_uchar1 ((CUChar)) V_x where
  z --> V_x = (#peek __quote__(struct uchar1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct uchar1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_uchar1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct uchar1))

instance Storable S_uchar1 where
  sizeOf _ = (#size __quote__(struct uchar1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uchar1"
  poke _ = error $ "peek and poke cannot be used with struct uchar1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uchar2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar2 (
  module HS_CURAND_H_S_S_uchar2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uchar3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar3 (
  module HS_CURAND_H_S_S_uchar3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_x where
  z --> V_x = (#peek __quote__(struct uchar3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct uchar3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_y where
  z --> V_y = (#peek __quote__(struct uchar3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct uchar3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_z where
  z --> V_z = (#peek __quote__(struct uchar3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct uchar3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct uchar3))

instance Storable S_uchar3 where
  sizeOf _ = (#size __quote__(struct uchar3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uchar3"
  poke _ = error $ "peek and poke cannot be used with struct uchar3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uchar4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar4 (
  module HS_CURAND_H_S_S_uchar4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uint1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uint1 (
  module HS_CURAND_H_S_S_uint1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_uint1 ((CUInt)) V_x where
  z --> V_x = (#peek __quote__(struct uint1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct uint1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_uint1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct uint1))

instance Storable S_uint1 where
  sizeOf _ = (#size __quote__(struct uint1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uint1"
  poke _ = error $ "peek and poke cannot be used with struct uint1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uint2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uint2 (
  module HS_CURAND_H_S_S_uint2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uint3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uint3 (
  module HS_CURAND_H_S_S_uint3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_uint3 ((CUInt)) V_x where
  z --> V_x = (#peek __quote__(struct uint3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct uint3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_uint3 ((CUInt)) V_y where
  z --> V_y = (#peek __quote__(struct uint3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct uint3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_uint3 ((CUInt)) V_z where
  z --> V_z = (#peek __quote__(struct uint3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct uint3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_uint3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct uint3))

instance Storable S_uint3 where
  sizeOf _ = (#size __quote__(struct uint3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uint3"
  poke _ = error $ "peek and poke cannot be used with struct uint3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_uint4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uint4 (
  module HS_CURAND_H_S_S_uint4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulong1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulong1 (
  module HS_CURAND_H_S_S_ulong1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ulong1 ((CULong)) V_x where
  z --> V_x = (#peek __quote__(struct ulong1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ulong1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulong1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ulong1))

instance Storable S_ulong1 where
  sizeOf _ = (#size __quote__(struct ulong1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ulong1"
  poke _ = error $ "peek and poke cannot be used with struct ulong1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulong2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulong2 (
  module HS_CURAND_H_S_S_ulong2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulong3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulong3 (
  module HS_CURAND_H_S_S_ulong3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_x where
  z --> V_x = (#peek __quote__(struct ulong3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ulong3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_y where
  z --> V_y = (#peek __quote__(struct ulong3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct ulong3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_z where
  z --> V_z = (#peek __quote__(struct ulong3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct ulong3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ulong3))

instance Storable S_ulong3 where
  sizeOf _ = (#size __quote__(struct ulong3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ulong3"
  poke _ = error $ "peek and poke cannot be used with struct ulong3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulong4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulong4 (
  module HS_CURAND_H_S_S_ulong4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulonglong1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulonglong1 (
  module HS_CURAND_H_S_S_ulonglong1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ulonglong1 ((CULLong)) V_x where
  z --> V_x = (#peek __quote__(struct ulonglong1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ulonglong1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulonglong1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ulonglong1))

instance Storable S_ulonglong1 where
  sizeOf _ = (#size __quote__(struct ulonglong1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ulonglong1"
  poke _ = error $ "peek and poke cannot be used with struct ulonglong1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulonglong2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulonglong2 (
  module HS_CURAND_H_S_S_ulonglong2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulonglong3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulonglong3 (
  module HS_CURAND_H_S_S_ulonglong3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ulonglong3 ((CULLong)) V_x where
  z --> V_x = (#peek __quote__(struct ulonglong3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ulonglong3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulonglong3 ((CULLong)) V_y where
  z --> V_y = (#peek __quote__(struct ulonglong3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct ulonglong3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulonglong3 ((CULLong)) V_z where
  z --> V_z = (#peek __quote__(struct ulonglong3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct ulonglong3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_ulonglong3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ulonglong3))

instance Storable S_ulonglong3 where
  sizeOf _ = (#size __quote__(struct ulonglong3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ulonglong3"
  poke _ = error $ "peek and poke cannot be used with struct ulonglong3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ulonglong4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ulonglong4 (
  module HS_CURAND_H_S_S_ulonglong4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ushort1

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ushort1 (
  module HS_CURAND_H_S_S_ushort1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ushort1 ((CUShort)) V_x where
  z --> V_x = (#peek __quote__(struct ushort1), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ushort1), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ushort1 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ushort1))

instance Storable S_ushort1 where
  sizeOf _ = (#size __quote__(struct ushort1))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ushort1"
  poke _ = error $ "peek and poke cannot be used with struct ushort1"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ushort2

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ushort2 (
  module HS_CURAND_H_S_S_ushort2
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ushort3

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ushort3 (
  module HS_CURAND_H_S_S_ushort3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}


instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_x where
  z --> V_x = (#peek __quote__(struct ushort3), x) z
  (z, V_x) <-- v = (#poke __quote__(struct ushort3), x) z v

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_y where
  z --> V_y = (#peek __quote__(struct ushort3), y) z
  (z, V_y) <-- v = (#poke __quote__(struct ushort3), y) z v

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_z where
  z --> V_z = (#peek __quote__(struct ushort3), z) z
  (z, V_z) <-- v = (#poke __quote__(struct ushort3), z) z v

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 (CInt) V_sizeof where
  z --> V_sizeof = return $ (#size __quote__(struct ushort3))

instance Storable S_ushort3 where
  sizeOf _ = (#size __quote__(struct ushort3))
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ushort3"
  poke _ = error $ "peek and poke cannot be used with struct ushort3"
-- Split end

--


-- Split begin/HS_CURAND_H_S_S_ushort4

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ushort4 (
  module HS_CURAND_H_S_S_ushort4
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d
#SPLIT# --}

-- Split end

-- Split begin/HS_CURAND_H_E

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_E (
  module HS_CURAND_H_E
) where

import Foreign
import Foreign.C.Types
#SPLIT# --}

e_cudaChannelFormatKindSigned = #const  0 
e_cudaChannelFormatKindUnsigned = #const  1 
e_cudaChannelFormatKindFloat = #const  2 
e_cudaChannelFormatKindNone = #const  3 
e_cudaComputeModeDefault = #const  0 
e_cudaComputeModeExclusive = #const  1 
e_cudaComputeModeProhibited = #const  2 
e_cudaSuccess = #const  0 
e_cudaErrorMissingConfiguration = #const  1 
e_cudaErrorMemoryAllocation = #const  2 
e_cudaErrorInitializationError = #const  3 
e_cudaErrorLaunchFailure = #const  4 
e_cudaErrorPriorLaunchFailure = #const  5 
e_cudaErrorLaunchTimeout = #const  6 
e_cudaErrorLaunchOutOfResources = #const  7 
e_cudaErrorInvalidDeviceFunction = #const  8 
e_cudaErrorInvalidConfiguration = #const  9 
e_cudaErrorInvalidDevice = #const  10 
e_cudaErrorInvalidValue = #const  11 
e_cudaErrorInvalidPitchValue = #const  12 
e_cudaErrorInvalidSymbol = #const  13 
e_cudaErrorMapBufferObjectFailed = #const  14 
e_cudaErrorUnmapBufferObjectFailed = #const  15 
e_cudaErrorInvalidHostPointer = #const  16 
e_cudaErrorInvalidDevicePointer = #const  17 
e_cudaErrorInvalidTexture = #const  18 
e_cudaErrorInvalidTextureBinding = #const  19 
e_cudaErrorInvalidChannelDescriptor = #const  20 
e_cudaErrorInvalidMemcpyDirection = #const  21 
e_cudaErrorAddressOfConstant = #const  22 
e_cudaErrorTextureFetchFailed = #const  23 
e_cudaErrorTextureNotBound = #const  24 
e_cudaErrorSynchronizationError = #const  25 
e_cudaErrorInvalidFilterSetting = #const  26 
e_cudaErrorInvalidNormSetting = #const  27 
e_cudaErrorMixedDeviceExecution = #const  28 
e_cudaErrorCudartUnloading = #const  29 
e_cudaErrorUnknown = #const  30 
e_cudaErrorNotYetImplemented = #const  31 
e_cudaErrorMemoryValueTooLarge = #const  32 
e_cudaErrorInvalidResourceHandle = #const  33 
e_cudaErrorNotReady = #const  34 
e_cudaErrorInsufficientDriver = #const  35 
e_cudaErrorSetOnActiveProcess = #const  36 
e_cudaErrorInvalidSurface = #const  37 
e_cudaErrorNoDevice = #const  38 
e_cudaErrorECCUncorrectable = #const  39 
e_cudaErrorSharedObjectSymbolNotFound = #const  40 
e_cudaErrorSharedObjectInitFailed = #const  41 
e_cudaErrorUnsupportedLimit = #const  42 
e_cudaErrorDuplicateVariableName = #const  43 
e_cudaErrorDuplicateTextureName = #const  44 
e_cudaErrorDuplicateSurfaceName = #const  45 
e_cudaErrorDevicesUnavailable = #const  46 
e_cudaErrorInvalidKernelImage = #const  47 
e_cudaErrorNoKernelImageForDevice = #const  48 
e_cudaErrorIncompatibleDriverContext = #const  49 
e_cudaErrorStartupFailure = #const  0x7f 
e_cudaErrorApiFailureBase = #const  10000 
e_cudaFuncCachePreferNone = #const  0 
e_cudaFuncCachePreferShared = #const  1 
e_cudaFuncCachePreferL1 = #const  2 
e_cudaGraphicsCubeFacePositiveX = #const  0x00 
e_cudaGraphicsCubeFaceNegativeX = #const  0x01 
e_cudaGraphicsCubeFacePositiveY = #const  0x02 
e_cudaGraphicsCubeFaceNegativeY = #const  0x03 
e_cudaGraphicsCubeFacePositiveZ = #const  0x04 
e_cudaGraphicsCubeFaceNegativeZ = #const  0x05 
e_cudaGraphicsMapFlagsNone = #const  0 
e_cudaGraphicsMapFlagsReadOnly = #const  1 
e_cudaGraphicsMapFlagsWriteDiscard = #const  2 
e_cudaGraphicsRegisterFlagsNone = #const  0 
e_cudaLimitStackSize = #const  0x00 
e_cudaLimitPrintfFifoSize = #const  0x01 
e_cudaLimitMallocHeapSize = #const  0x02 
e_cudaMemcpyHostToHost = #const  0 
e_cudaMemcpyHostToDevice = #const  1 
e_cudaMemcpyDeviceToHost = #const  2 
e_cudaMemcpyDeviceToDevice = #const  3 
e_cudaRoundNearest = #const 0
e_cudaRoundZero = #const (0) + 1
e_cudaRoundPosInf = #const ((0) + 1) + 1
e_cudaRoundMinInf = #const (((0) + 1) + 1) + 1
e_cudaBoundaryModeZero = #const  0 
e_cudaBoundaryModeClamp = #const  1 
e_cudaBoundaryModeTrap = #const  2 
e_cudaFormatModeForced = #const  0 
e_cudaFormatModeAuto = #const  1 
e_cudaAddressModeWrap = #const  0 
e_cudaAddressModeClamp = #const  1 
e_cudaAddressModeMirror = #const  2 
e_cudaAddressModeBorder = #const  3 
e_cudaFilterModePoint = #const  0 
e_cudaFilterModeLinear = #const  1 
e_cudaReadModeElementType = #const  0 
e_cudaReadModeNormalizedFloat = #const  1 
e_CURAND_DIRECTION_VECTORS_32_JOEKUO6 = #const  101 
e_CURAND_ORDERING_PSEUDO_BEST = #const  100 
e_CURAND_ORDERING_PSEUDO_DEFAULT = #const  101 
e_CURAND_ORDERING_QUASI_DEFAULT = #const  201 
e_CURAND_RNG_PSEUDO_DEFAULT = #const  100 
e_CURAND_RNG_PSEUDO_XORWOW = #const  101 
e_CURAND_RNG_QUASI_DEFAULT = #const  200 
e_CURAND_RNG_QUASI_SOBOL32 = #const  201 
e_CURAND_STATUS_SUCCESS = #const  0 
e_CURAND_STATUS_VERSION_MISMATCH = #const  100 
e_CURAND_STATUS_NOT_INITIALIZED = #const  101 
e_CURAND_STATUS_ALLOCATION_FAILED = #const  102 
e_CURAND_STATUS_TYPE_ERROR = #const  103 
e_CURAND_STATUS_OUT_OF_RANGE = #const  104 
e_CURAND_STATUS_LENGTH_NOT_MULTIPLE = #const  105 
e_CURAND_STATUS_LAUNCH_FAILURE = #const  201 
e_CURAND_STATUS_PREEXISTING_FAILURE = #const  202 
e_CURAND_STATUS_INITIALIZATION_FAILED = #const  203 
e_CURAND_STATUS_ARCH_MISMATCH = #const  204 
e_CURAND_STATUS_INTERNAL_ERROR = #const  999 

-- Split end

#include <stdlib.h>

-- Split begin/HS_CURAND_H_F

{-- #SPLIT#
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_F (
  module HS_CURAND_H_F
) where

import Foreign
import Foreign.C.Types
import HS_CURAND_H_S
import HS_CURAND_H_C
import HS_CURAND_H_E
import HS_CURAND_H_S_d
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
#SPLIT# --}

foreign import ccall "static hs_curand.h cudaThreadExit"
  f_cudaThreadExit :: IO (CInt)

--

foreign import ccall "static hs_curand.h cudaThreadSynchronize"
  f_cudaThreadSynchronize :: IO (CInt)

--

foreign import ccall "static hs_curand.h cudaThreadSetLimit"
  f_cudaThreadSetLimit :: CInt -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaThreadGetLimit"
  f_cudaThreadGetLimit :: Ptr (CSize) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaThreadGetCacheConfig"
  f_cudaThreadGetCacheConfig :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaThreadSetCacheConfig"
  f_cudaThreadSetCacheConfig :: CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetLastError"
  f_cudaGetLastError :: IO (CInt)

--

foreign import ccall "static hs_curand.h cudaPeekAtLastError"
  f_cudaPeekAtLastError :: IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetErrorString"
  f_cudaGetErrorString :: CInt -> IO (Ptr (CChar))

--

foreign import ccall "static hs_curand.h cudaGetDeviceCount"
  f_cudaGetDeviceCount :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetDeviceProperties"
  f_cudaGetDeviceProperties :: Ptr (S_cudaDeviceProp) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaChooseDevice"
  f_cudaChooseDevice :: Ptr (CInt) -> Ptr (S_cudaDeviceProp) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaSetDevice"
  f_cudaSetDevice :: CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetDevice"
  f_cudaGetDevice :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaSetValidDevices"
  f_cudaSetValidDevices :: Ptr (CInt) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaSetDeviceFlags"
  f_cudaSetDeviceFlags :: CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaStreamCreate"
  f_cudaStreamCreate :: Ptr (Ptr (S_CUstream_st)) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaStreamDestroy"
  f_cudaStreamDestroy :: Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaStreamWaitEvent"
  f_cudaStreamWaitEvent :: Ptr (S_CUstream_st) -> Ptr (S_CUevent_st) -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaStreamSynchronize"
  f_cudaStreamSynchronize :: Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaStreamQuery"
  f_cudaStreamQuery :: Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventCreate"
  f_cudaEventCreate :: Ptr (Ptr (S_CUevent_st)) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventCreateWithFlags"
  f_cudaEventCreateWithFlags :: Ptr (Ptr (S_CUevent_st)) -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventRecord"
  f_cudaEventRecord :: Ptr (S_CUevent_st) -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventQuery"
  f_cudaEventQuery :: Ptr (S_CUevent_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventSynchronize"
  f_cudaEventSynchronize :: Ptr (S_CUevent_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventDestroy"
  f_cudaEventDestroy :: Ptr (S_CUevent_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaEventElapsedTime"
  f_cudaEventElapsedTime :: Ptr (CFloat) -> Ptr (S_CUevent_st) -> Ptr (S_CUevent_st) -> IO (CInt)

--

--
-- import of function/variable/structure member(s) cudaConfigureCall :: @S_dim3 -> @S_dim3 -> CSize -> Ptr (S_CUstream_st) -> CInt is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

foreign import ccall "static hs_curand.h cudaSetupArgument"
  f_cudaSetupArgument :: Ptr (CChar) -> CSize -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaFuncSetCacheConfig"
  f_cudaFuncSetCacheConfig :: Ptr (CChar) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaLaunch"
  f_cudaLaunch :: Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaFuncGetAttributes"
  f_cudaFuncGetAttributes :: Ptr (S_cudaFuncAttributes) -> Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaSetDoubleForDevice"
  f_cudaSetDoubleForDevice :: Ptr (CDouble) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaSetDoubleForHost"
  f_cudaSetDoubleForHost :: Ptr (CDouble) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMalloc"
  f_cudaMalloc :: Ptr (Ptr (CChar)) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMallocHost"
  f_cudaMallocHost :: Ptr (Ptr (CChar)) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMallocPitch"
  f_cudaMallocPitch :: Ptr (Ptr (CChar)) -> Ptr (CSize) -> CSize -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMallocArray"
  f_cudaMallocArray :: Ptr (Ptr (S_cudaArray)) -> Ptr (S_cudaChannelFormatDesc) -> CSize -> CSize -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaFree"
  f_cudaFree :: Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaFreeHost"
  f_cudaFreeHost :: Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaFreeArray"
  f_cudaFreeArray :: Ptr (S_cudaArray) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaHostAlloc"
  f_cudaHostAlloc :: Ptr (Ptr (CChar)) -> CSize -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaHostGetDevicePointer"
  f_cudaHostGetDevicePointer :: Ptr (Ptr (CChar)) -> Ptr (CChar) -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaHostGetFlags"
  f_cudaHostGetFlags :: Ptr (CUInt) -> Ptr (CChar) -> IO (CInt)

--

--
-- import of function/variable/structure member(s) cudaMalloc3D :: Ptr (S_cudaPitchedPtr) -> @S_cudaExtent -> CInt is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

--
-- import of function/variable/structure member(s) cudaMalloc3DArray :: Ptr (Ptr (S_cudaArray)) -> Ptr (S_cudaChannelFormatDesc) -> @S_cudaExtent -> CUInt -> CInt is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

foreign import ccall "static hs_curand.h cudaMemcpy3D"
  f_cudaMemcpy3D :: Ptr (S_cudaMemcpy3DParms) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy3DAsync"
  f_cudaMemcpy3DAsync :: Ptr (S_cudaMemcpy3DParms) -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemGetInfo"
  f_cudaMemGetInfo :: Ptr (CSize) -> Ptr (CSize) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy"
  f_cudaMemcpy :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyToArray"
  f_cudaMemcpyToArray :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (CChar) -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyFromArray"
  f_cudaMemcpyFromArray :: Ptr (CChar) -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyArrayToArray"
  f_cudaMemcpyArrayToArray :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2D"
  f_cudaMemcpy2D :: Ptr (CChar) -> CSize -> Ptr (CChar) -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DToArray"
  f_cudaMemcpy2DToArray :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (CChar) -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DFromArray"
  f_cudaMemcpy2DFromArray :: Ptr (CChar) -> CSize -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DArrayToArray"
  f_cudaMemcpy2DArrayToArray :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyToSymbol"
  f_cudaMemcpyToSymbol :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyFromSymbol"
  f_cudaMemcpyFromSymbol :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CSize -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyAsync"
  f_cudaMemcpyAsync :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyToArrayAsync"
  f_cudaMemcpyToArrayAsync :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (CChar) -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyFromArrayAsync"
  f_cudaMemcpyFromArrayAsync :: Ptr (CChar) -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DAsync"
  f_cudaMemcpy2DAsync :: Ptr (CChar) -> CSize -> Ptr (CChar) -> CSize -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DToArrayAsync"
  f_cudaMemcpy2DToArrayAsync :: Ptr (S_cudaArray) -> CSize -> CSize -> Ptr (CChar) -> CSize -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpy2DFromArrayAsync"
  f_cudaMemcpy2DFromArrayAsync :: Ptr (CChar) -> CSize -> Ptr (S_cudaArray) -> CSize -> CSize -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyToSymbolAsync"
  f_cudaMemcpyToSymbolAsync :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemcpyFromSymbolAsync"
  f_cudaMemcpyFromSymbolAsync :: Ptr (CChar) -> Ptr (CChar) -> CSize -> CSize -> CInt -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemset"
  f_cudaMemset :: Ptr (CChar) -> CInt -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemset2D"
  f_cudaMemset2D :: Ptr (CChar) -> CSize -> CInt -> CSize -> CSize -> IO (CInt)

--

--
-- import of function/variable/structure member(s) cudaMemset3D :: @S_cudaPitchedPtr -> CInt -> @S_cudaExtent -> CInt is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

foreign import ccall "static hs_curand.h cudaMemsetAsync"
  f_cudaMemsetAsync :: Ptr (CChar) -> CInt -> CSize -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaMemset2DAsync"
  f_cudaMemset2DAsync :: Ptr (CChar) -> CSize -> CInt -> CSize -> CSize -> Ptr (S_CUstream_st) -> IO (CInt)

--

--
-- import of function/variable/structure member(s) cudaMemset3DAsync :: @S_cudaPitchedPtr -> CInt -> @S_cudaExtent -> Ptr (S_CUstream_st) -> CInt is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

foreign import ccall "static hs_curand.h cudaGetSymbolAddress"
  f_cudaGetSymbolAddress :: Ptr (Ptr (CChar)) -> Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetSymbolSize"
  f_cudaGetSymbolSize :: Ptr (CSize) -> Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsUnregisterResource"
  f_cudaGraphicsUnregisterResource :: Ptr (S_cudaGraphicsResource) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsResourceSetMapFlags"
  f_cudaGraphicsResourceSetMapFlags :: Ptr (S_cudaGraphicsResource) -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsMapResources"
  f_cudaGraphicsMapResources :: CInt -> Ptr (Ptr (S_cudaGraphicsResource)) -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsUnmapResources"
  f_cudaGraphicsUnmapResources :: CInt -> Ptr (Ptr (S_cudaGraphicsResource)) -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsResourceGetMappedPointer"
  f_cudaGraphicsResourceGetMappedPointer :: Ptr (Ptr (CChar)) -> Ptr (CSize) -> Ptr (S_cudaGraphicsResource) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGraphicsSubResourceGetMappedArray"
  f_cudaGraphicsSubResourceGetMappedArray :: Ptr (Ptr (S_cudaArray)) -> Ptr (S_cudaGraphicsResource) -> CUInt -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetChannelDesc"
  f_cudaGetChannelDesc :: Ptr (S_cudaChannelFormatDesc) -> Ptr (S_cudaArray) -> IO (CInt)

--

--
-- import of function/variable/structure member(s) cudaCreateChannelDesc :: CInt -> CInt -> CInt -> CInt -> CInt -> @S_cudaChannelFormatDesc is not possible
-- because of the following reason(s):
-- function takes/returns structure(s) directly
--

--

foreign import ccall "static hs_curand.h cudaBindTexture"
  f_cudaBindTexture :: Ptr (CSize) -> Ptr (S_textureReference) -> Ptr (CChar) -> Ptr (S_cudaChannelFormatDesc) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaBindTexture2D"
  f_cudaBindTexture2D :: Ptr (CSize) -> Ptr (S_textureReference) -> Ptr (CChar) -> Ptr (S_cudaChannelFormatDesc) -> CSize -> CSize -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaBindTextureToArray"
  f_cudaBindTextureToArray :: Ptr (S_textureReference) -> Ptr (S_cudaArray) -> Ptr (S_cudaChannelFormatDesc) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaUnbindTexture"
  f_cudaUnbindTexture :: Ptr (S_textureReference) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetTextureAlignmentOffset"
  f_cudaGetTextureAlignmentOffset :: Ptr (CSize) -> Ptr (S_textureReference) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetTextureReference"
  f_cudaGetTextureReference :: Ptr (Ptr (S_textureReference)) -> Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaBindSurfaceToArray"
  f_cudaBindSurfaceToArray :: Ptr (S_surfaceReference) -> Ptr (S_cudaArray) -> Ptr (S_cudaChannelFormatDesc) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetSurfaceReference"
  f_cudaGetSurfaceReference :: Ptr (Ptr (S_surfaceReference)) -> Ptr (CChar) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaDriverGetVersion"
  f_cudaDriverGetVersion :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaRuntimeGetVersion"
  f_cudaRuntimeGetVersion :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h cudaGetExportTable"
  f_cudaGetExportTable :: Ptr (Ptr (CChar)) -> Ptr (S_CUuuid_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandCreateGenerator"
  f_curandCreateGenerator :: Ptr (Ptr (S_curandGenerator_st)) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandCreateGeneratorHost"
  f_curandCreateGeneratorHost :: Ptr (Ptr (S_curandGenerator_st)) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandDestroyGenerator"
  f_curandDestroyGenerator :: Ptr (S_curandGenerator_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGetVersion"
  f_curandGetVersion :: Ptr (CInt) -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandSetStream"
  f_curandSetStream :: Ptr (S_curandGenerator_st) -> Ptr (S_CUstream_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandSetPseudoRandomGeneratorSeed"
  f_curandSetPseudoRandomGeneratorSeed :: Ptr (S_curandGenerator_st) -> CULLong -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandSetGeneratorOffset"
  f_curandSetGeneratorOffset :: Ptr (S_curandGenerator_st) -> CULLong -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandSetGeneratorOrdering"
  f_curandSetGeneratorOrdering :: Ptr (S_curandGenerator_st) -> CInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandSetQuasiRandomGeneratorDimensions"
  f_curandSetQuasiRandomGeneratorDimensions :: Ptr (S_curandGenerator_st) -> CUInt -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerate"
  f_curandGenerate :: Ptr (S_curandGenerator_st) -> Ptr (CUInt) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerateUniform"
  f_curandGenerateUniform :: Ptr (S_curandGenerator_st) -> Ptr (CFloat) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerateUniformDouble"
  f_curandGenerateUniformDouble :: Ptr (S_curandGenerator_st) -> Ptr (CDouble) -> CSize -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerateNormal"
  f_curandGenerateNormal :: Ptr (S_curandGenerator_st) -> Ptr (CFloat) -> CSize -> CFloat -> CFloat -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerateNormalDouble"
  f_curandGenerateNormalDouble :: Ptr (S_curandGenerator_st) -> Ptr (CDouble) -> CSize -> CDouble -> CDouble -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGenerateSeeds"
  f_curandGenerateSeeds :: Ptr (S_curandGenerator_st) -> IO (CInt)

--

foreign import ccall "static hs_curand.h curandGetDirectionVectors32"
  f_curandGetDirectionVectors32 :: Ptr (Ptr (CUInt)) -> CInt -> IO (CInt)

--


-- Split end

