
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


