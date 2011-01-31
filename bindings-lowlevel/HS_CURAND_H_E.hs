
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_E (
  module HS_CURAND_H_E
) where

import Foreign
import Foreign.C.Types

e_cudaChannelFormatKindSigned = 0
{-# LINE 2970 "HS_CURAND_H.hsc" #-}
e_cudaChannelFormatKindUnsigned = 1
{-# LINE 2971 "HS_CURAND_H.hsc" #-}
e_cudaChannelFormatKindFloat = 2
{-# LINE 2972 "HS_CURAND_H.hsc" #-}
e_cudaChannelFormatKindNone = 3
{-# LINE 2973 "HS_CURAND_H.hsc" #-}
e_cudaComputeModeDefault = 0
{-# LINE 2974 "HS_CURAND_H.hsc" #-}
e_cudaComputeModeExclusive = 1
{-# LINE 2975 "HS_CURAND_H.hsc" #-}
e_cudaComputeModeProhibited = 2
{-# LINE 2976 "HS_CURAND_H.hsc" #-}
e_cudaSuccess = 0
{-# LINE 2977 "HS_CURAND_H.hsc" #-}
e_cudaErrorMissingConfiguration = 1
{-# LINE 2978 "HS_CURAND_H.hsc" #-}
e_cudaErrorMemoryAllocation = 2
{-# LINE 2979 "HS_CURAND_H.hsc" #-}
e_cudaErrorInitializationError = 3
{-# LINE 2980 "HS_CURAND_H.hsc" #-}
e_cudaErrorLaunchFailure = 4
{-# LINE 2981 "HS_CURAND_H.hsc" #-}
e_cudaErrorPriorLaunchFailure = 5
{-# LINE 2982 "HS_CURAND_H.hsc" #-}
e_cudaErrorLaunchTimeout = 6
{-# LINE 2983 "HS_CURAND_H.hsc" #-}
e_cudaErrorLaunchOutOfResources = 7
{-# LINE 2984 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidDeviceFunction = 8
{-# LINE 2985 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidConfiguration = 9
{-# LINE 2986 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidDevice = 10
{-# LINE 2987 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidValue = 11
{-# LINE 2988 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidPitchValue = 12
{-# LINE 2989 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidSymbol = 13
{-# LINE 2990 "HS_CURAND_H.hsc" #-}
e_cudaErrorMapBufferObjectFailed = 14
{-# LINE 2991 "HS_CURAND_H.hsc" #-}
e_cudaErrorUnmapBufferObjectFailed = 15
{-# LINE 2992 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidHostPointer = 16
{-# LINE 2993 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidDevicePointer = 17
{-# LINE 2994 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidTexture = 18
{-# LINE 2995 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidTextureBinding = 19
{-# LINE 2996 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidChannelDescriptor = 20
{-# LINE 2997 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidMemcpyDirection = 21
{-# LINE 2998 "HS_CURAND_H.hsc" #-}
e_cudaErrorAddressOfConstant = 22
{-# LINE 2999 "HS_CURAND_H.hsc" #-}
e_cudaErrorTextureFetchFailed = 23
{-# LINE 3000 "HS_CURAND_H.hsc" #-}
e_cudaErrorTextureNotBound = 24
{-# LINE 3001 "HS_CURAND_H.hsc" #-}
e_cudaErrorSynchronizationError = 25
{-# LINE 3002 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidFilterSetting = 26
{-# LINE 3003 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidNormSetting = 27
{-# LINE 3004 "HS_CURAND_H.hsc" #-}
e_cudaErrorMixedDeviceExecution = 28
{-# LINE 3005 "HS_CURAND_H.hsc" #-}
e_cudaErrorCudartUnloading = 29
{-# LINE 3006 "HS_CURAND_H.hsc" #-}
e_cudaErrorUnknown = 30
{-# LINE 3007 "HS_CURAND_H.hsc" #-}
e_cudaErrorNotYetImplemented = 31
{-# LINE 3008 "HS_CURAND_H.hsc" #-}
e_cudaErrorMemoryValueTooLarge = 32
{-# LINE 3009 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidResourceHandle = 33
{-# LINE 3010 "HS_CURAND_H.hsc" #-}
e_cudaErrorNotReady = 34
{-# LINE 3011 "HS_CURAND_H.hsc" #-}
e_cudaErrorInsufficientDriver = 35
{-# LINE 3012 "HS_CURAND_H.hsc" #-}
e_cudaErrorSetOnActiveProcess = 36
{-# LINE 3013 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidSurface = 37
{-# LINE 3014 "HS_CURAND_H.hsc" #-}
e_cudaErrorNoDevice = 38
{-# LINE 3015 "HS_CURAND_H.hsc" #-}
e_cudaErrorECCUncorrectable = 39
{-# LINE 3016 "HS_CURAND_H.hsc" #-}
e_cudaErrorSharedObjectSymbolNotFound = 40
{-# LINE 3017 "HS_CURAND_H.hsc" #-}
e_cudaErrorSharedObjectInitFailed = 41
{-# LINE 3018 "HS_CURAND_H.hsc" #-}
e_cudaErrorUnsupportedLimit = 42
{-# LINE 3019 "HS_CURAND_H.hsc" #-}
e_cudaErrorDuplicateVariableName = 43
{-# LINE 3020 "HS_CURAND_H.hsc" #-}
e_cudaErrorDuplicateTextureName = 44
{-# LINE 3021 "HS_CURAND_H.hsc" #-}
e_cudaErrorDuplicateSurfaceName = 45
{-# LINE 3022 "HS_CURAND_H.hsc" #-}
e_cudaErrorDevicesUnavailable = 46
{-# LINE 3023 "HS_CURAND_H.hsc" #-}
e_cudaErrorInvalidKernelImage = 47
{-# LINE 3024 "HS_CURAND_H.hsc" #-}
e_cudaErrorNoKernelImageForDevice = 48
{-# LINE 3025 "HS_CURAND_H.hsc" #-}
e_cudaErrorIncompatibleDriverContext = 49
{-# LINE 3026 "HS_CURAND_H.hsc" #-}
e_cudaErrorStartupFailure = 127
{-# LINE 3027 "HS_CURAND_H.hsc" #-}
e_cudaErrorApiFailureBase = 10000
{-# LINE 3028 "HS_CURAND_H.hsc" #-}
e_cudaFuncCachePreferNone = 0
{-# LINE 3029 "HS_CURAND_H.hsc" #-}
e_cudaFuncCachePreferShared = 1
{-# LINE 3030 "HS_CURAND_H.hsc" #-}
e_cudaFuncCachePreferL1 = 2
{-# LINE 3031 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFacePositiveX = 0
{-# LINE 3032 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFaceNegativeX = 1
{-# LINE 3033 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFacePositiveY = 2
{-# LINE 3034 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFaceNegativeY = 3
{-# LINE 3035 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFacePositiveZ = 4
{-# LINE 3036 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsCubeFaceNegativeZ = 5
{-# LINE 3037 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsMapFlagsNone = 0
{-# LINE 3038 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsMapFlagsReadOnly = 1
{-# LINE 3039 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsMapFlagsWriteDiscard = 2
{-# LINE 3040 "HS_CURAND_H.hsc" #-}
e_cudaGraphicsRegisterFlagsNone = 0
{-# LINE 3041 "HS_CURAND_H.hsc" #-}
e_cudaLimitStackSize = 0
{-# LINE 3042 "HS_CURAND_H.hsc" #-}
e_cudaLimitPrintfFifoSize = 1
{-# LINE 3043 "HS_CURAND_H.hsc" #-}
e_cudaLimitMallocHeapSize = 2
{-# LINE 3044 "HS_CURAND_H.hsc" #-}
e_cudaMemcpyHostToHost = 0
{-# LINE 3045 "HS_CURAND_H.hsc" #-}
e_cudaMemcpyHostToDevice = 1
{-# LINE 3046 "HS_CURAND_H.hsc" #-}
e_cudaMemcpyDeviceToHost = 2
{-# LINE 3047 "HS_CURAND_H.hsc" #-}
e_cudaMemcpyDeviceToDevice = 3
{-# LINE 3048 "HS_CURAND_H.hsc" #-}
e_cudaRoundNearest = 0
{-# LINE 3049 "HS_CURAND_H.hsc" #-}
e_cudaRoundZero = 1
{-# LINE 3050 "HS_CURAND_H.hsc" #-}
e_cudaRoundPosInf = 2
{-# LINE 3051 "HS_CURAND_H.hsc" #-}
e_cudaRoundMinInf = 3
{-# LINE 3052 "HS_CURAND_H.hsc" #-}
e_cudaBoundaryModeZero = 0
{-# LINE 3053 "HS_CURAND_H.hsc" #-}
e_cudaBoundaryModeClamp = 1
{-# LINE 3054 "HS_CURAND_H.hsc" #-}
e_cudaBoundaryModeTrap = 2
{-# LINE 3055 "HS_CURAND_H.hsc" #-}
e_cudaFormatModeForced = 0
{-# LINE 3056 "HS_CURAND_H.hsc" #-}
e_cudaFormatModeAuto = 1
{-# LINE 3057 "HS_CURAND_H.hsc" #-}
e_cudaAddressModeWrap = 0
{-# LINE 3058 "HS_CURAND_H.hsc" #-}
e_cudaAddressModeClamp = 1
{-# LINE 3059 "HS_CURAND_H.hsc" #-}
e_cudaAddressModeMirror = 2
{-# LINE 3060 "HS_CURAND_H.hsc" #-}
e_cudaAddressModeBorder = 3
{-# LINE 3061 "HS_CURAND_H.hsc" #-}
e_cudaFilterModePoint = 0
{-# LINE 3062 "HS_CURAND_H.hsc" #-}
e_cudaFilterModeLinear = 1
{-# LINE 3063 "HS_CURAND_H.hsc" #-}
e_cudaReadModeElementType = 0
{-# LINE 3064 "HS_CURAND_H.hsc" #-}
e_cudaReadModeNormalizedFloat = 1
{-# LINE 3065 "HS_CURAND_H.hsc" #-}
e_CURAND_DIRECTION_VECTORS_32_JOEKUO6 = 101
{-# LINE 3066 "HS_CURAND_H.hsc" #-}
e_CURAND_ORDERING_PSEUDO_BEST = 100
{-# LINE 3067 "HS_CURAND_H.hsc" #-}
e_CURAND_ORDERING_PSEUDO_DEFAULT = 101
{-# LINE 3068 "HS_CURAND_H.hsc" #-}
e_CURAND_ORDERING_QUASI_DEFAULT = 201
{-# LINE 3069 "HS_CURAND_H.hsc" #-}
e_CURAND_RNG_PSEUDO_DEFAULT = 100
{-# LINE 3070 "HS_CURAND_H.hsc" #-}
e_CURAND_RNG_PSEUDO_XORWOW = 101
{-# LINE 3071 "HS_CURAND_H.hsc" #-}
e_CURAND_RNG_QUASI_DEFAULT = 200
{-# LINE 3072 "HS_CURAND_H.hsc" #-}
e_CURAND_RNG_QUASI_SOBOL32 = 201
{-# LINE 3073 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_SUCCESS = 0
{-# LINE 3074 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_VERSION_MISMATCH = 100
{-# LINE 3075 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_NOT_INITIALIZED = 101
{-# LINE 3076 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_ALLOCATION_FAILED = 102
{-# LINE 3077 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_TYPE_ERROR = 103
{-# LINE 3078 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_OUT_OF_RANGE = 104
{-# LINE 3079 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_LENGTH_NOT_MULTIPLE = 105
{-# LINE 3080 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_LAUNCH_FAILURE = 201
{-# LINE 3081 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_PREEXISTING_FAILURE = 202
{-# LINE 3082 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_INITIALIZATION_FAILED = 203
{-# LINE 3083 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_ARCH_MISMATCH = 204
{-# LINE 3084 "HS_CURAND_H.hsc" #-}
e_CURAND_STATUS_INTERNAL_ERROR = 999
{-# LINE 3085 "HS_CURAND_H.hsc" #-}

