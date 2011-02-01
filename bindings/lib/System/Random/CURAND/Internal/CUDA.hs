{-# LANGUAGE ViewPatterns, DeriveDataTypeable #-}

-- | Minimal needed bindings to CUDA runtime API

module System.Random.CURAND.Internal.CUDA (cudaMalloc, cudaFree, cudaAllocaArray, DevPtr(..), CudaError(..)) where

import HS_CURAND_H -- this module re-exports all FFI stuff and most of CUDA driver & runtime API
import Control.Exception
import Control.Applicative
import Data.Typeable
import Data.Data
-- import Unsafe.Coerce
-- import Data.Default


-- e_cudaErrorAddressOfConstant           e_cudaErrorInvalidDevice               e_cudaErrorInvalidTextureBinding       e_cudaErrorNotYetImplemented
-- e_cudaErrorApiFailureBase              e_cudaErrorInvalidDeviceFunction       e_cudaErrorInvalidValue                e_cudaErrorPriorLaunchFailure
-- e_cudaErrorCudartUnloading             e_cudaErrorInvalidDevicePointer        e_cudaErrorLaunchFailure               e_cudaErrorSetOnActiveProcess
-- e_cudaErrorDevicesUnavailable          e_cudaErrorInvalidFilterSetting        e_cudaErrorLaunchOutOfResources        e_cudaErrorSharedObjectInitFailed
-- e_cudaErrorDuplicateSurfaceName        e_cudaErrorInvalidHostPointer          e_cudaErrorLaunchTimeout               e_cudaErrorSharedObjectSymbolNotFound
-- e_cudaErrorDuplicateTextureName        e_cudaErrorInvalidKernelImage          e_cudaErrorMapBufferObjectFailed       e_cudaErrorStartupFailure
-- e_cudaErrorDuplicateVariableName       e_cudaErrorInvalidMemcpyDirection      e_cudaErrorMemoryAllocation            e_cudaErrorSynchronizationError
-- e_cudaErrorECCUncorrectable            e_cudaErrorInvalidNormSetting          e_cudaErrorMemoryValueTooLarge         e_cudaErrorTextureFetchFailed
-- e_cudaErrorIncompatibleDriverContext   e_cudaErrorInvalidPitchValue           e_cudaErrorMissingConfiguration        e_cudaErrorTextureNotBound
-- e_cudaErrorInitializationError         e_cudaErrorInvalidResourceHandle       e_cudaErrorMixedDeviceExecution        e_cudaErrorUnknown
-- e_cudaErrorInsufficientDriver          e_cudaErrorInvalidSurface              e_cudaErrorNoDevice                    e_cudaErrorUnmapBufferObjectFailed
-- e_cudaErrorInvalidChannelDescriptor    e_cudaErrorInvalidSymbol               e_cudaErrorNoKernelImageForDevice      e_cudaErrorUnsupportedLimit
-- e_cudaErrorInvalidConfiguration        e_cudaErrorInvalidTexture              e_cudaErrorNotReady                    e_cudaSuccess

data CudaError = CudaError Int deriving (Show,Data,Typeable)
instance Exception CudaError

-- | Wrapper around device ptr type
newtype DevPtr a = DevPtr {devPtr :: Ptr a}

checkCudaError :: CInt -> IO ()
checkCudaError (fromIntegral -> e_cudaSuccess) = return ()
checkCudaError (fromIntegral -> err) = throw (CudaError err)

-- | Allocates continous block of memory on device
cudaMalloc :: (Storable a) => Int -> IO (DevPtr a)
cudaMalloc size = doAlloc undefined where
    doAlloc :: Storable b => b -> IO (DevPtr b)
    doAlloc dummy = DevPtr <$> alloca (\ voidPtr -> f_cudaMalloc voidPtr (fromIntegral (size * sizeOf dummy))
                                                    >>= checkCudaError
                                                    >> peek (castPtr voidPtr))

cudaAllocaArray :: (Storable a) => Int -> (DevPtr a -> IO b) -> IO b
cudaAllocaArray len = bracket (cudaMalloc len) cudaFree

-- | Frees device memory pointer
cudaFree :: (DevPtr a) -> IO ()
cudaFree (devPtr -> ptr) = checkCudaError =<< f_cudaFree (castPtr ptr)

-- XXX: cudaMemcpy
-- XXX: allocaArray + cudaAllocaArray + cudaMempcpy
-- XXX: setStackSize : http://forums.nvidia.com/index.php?showtopic=186761
-- 
-- curandCreateGenerator(&randGenGPU, CURAND_RNG_PSEUDO_XORWOW);
-- curandSetPseudoRandomGeneratorSeed(randGenGPU, (unsigned int) time(NULL));
-- curandGenerateSeeds(randGenGPU);
-- cudaThreadSetLimit(cudaLimitStackSize, 1024);
-- //Generate numbers here...  
