{-# LANGUAGE ViewPatterns, DeriveDataTypeable #-}

module System.Random.CURAND where

import HS_CURAND_H -- this module re-exports all FFI stuff and most of CUDA driver & runtime API
import Control.Exception
import Control.Applicative
import Data.Typeable
import Data.Data
import Unsafe.Coerce
import Data.Default

import System.Random.CURAND.Internal.CUDA

-- XXX: Easy module

-- | Typedefs

data DirectionVectors32 = DirectionVectors32 [Integer]
newtype Generator = Generator { ptr :: HS_CURAND_H.T_curandGenerator_t }

-- | Enums

data DirectionVectorSet = DIRECTION_VECTORS_32_JOEKUO6

data GeneratorOrdering = ORDERING_PSEUDO_BEST 
              | ORDERING_PSEUDO_DEFAULT 
              | ORDERING_QUASI_DEFAULT

data RngType = RNG_PSEUDO_DEFAULT
             | RNG_PSEUDO_XORWOW
             | RNG_QUASI_DEFAULT
             | RNG_QUASI_SOBOL32

data Status = STATUS_SUCCESS               -- ^ No errors.
            | STATUS_VERSION_MISMATCH      -- ^ Header file and linked library version do not match.
            | STATUS_NOT_INITIALIZED       -- ^ Generator not initialized.
            | STATUS_ALLOCATION_FAILED     -- ^ Memory allocation failed.
            | STATUS_TYPE_ERROR            -- ^ Generator is wrong type.
            | STATUS_OUT_OF_RANGE          -- ^ Argument out of range.
            | STATUS_LENGTH_NOT_MULTIPLE   -- ^ Length requested is not a multple of dimension.
            | STATUS_LAUNCH_FAILURE        -- ^ Kernel launch failure.
            | STATUS_PREEXISTING_FAILURE   -- ^ Preexisting failure on library entry.
            | STATUS_INITIALIZATION_FAILED -- ^ Initialization of CUDA failed.
            | STATUS_ARCH_MISMATCH         -- ^ Architecture mismatch, GPU does not support requested feature.
            | STATUS_INTERNAL_ERROR        -- ^ Internal library error.
      deriving (Data,Typeable,Show)

data CurandException = CurandException Status deriving (Data,Typeable,Show)
instance Exception CurandException

-- | Instances of this class has been sponsored by Emacs' cua-rectangle-mode
class HasCIntMapping a where
    toCInt :: a -> CInt
    fromCInt :: CInt -> a

instance HasCIntMapping RngType where
    toCInt RNG_PSEUDO_DEFAULT = fromIntegral e_CURAND_RNG_PSEUDO_DEFAULT 
    toCInt RNG_PSEUDO_XORWOW  = fromIntegral e_CURAND_RNG_PSEUDO_XORWOW  
    toCInt RNG_QUASI_DEFAULT  = fromIntegral e_CURAND_RNG_QUASI_DEFAULT  
    toCInt RNG_QUASI_SOBOL32  = fromIntegral e_CURAND_RNG_QUASI_SOBOL32  

    fromCInt (fromIntegral -> e_CURAND_RNG_PSEUDO_DEFAULT) = RNG_PSEUDO_DEFAULT 
    fromCInt (fromIntegral -> e_CURAND_RNG_PSEUDO_XORWOW ) = RNG_PSEUDO_XORWOW  
    fromCInt (fromIntegral -> e_CURAND_RNG_QUASI_DEFAULT ) = RNG_QUASI_DEFAULT  
    fromCInt (fromIntegral -> e_CURAND_RNG_QUASI_SOBOL32 ) = RNG_QUASI_SOBOL32  

instance HasCIntMapping Status where
    toCInt STATUS_SUCCESS               = fromIntegral e_CURAND_STATUS_SUCCESS               
    toCInt STATUS_VERSION_MISMATCH      = fromIntegral e_CURAND_STATUS_VERSION_MISMATCH      
    toCInt STATUS_NOT_INITIALIZED       = fromIntegral e_CURAND_STATUS_NOT_INITIALIZED       
    toCInt STATUS_ALLOCATION_FAILED     = fromIntegral e_CURAND_STATUS_ALLOCATION_FAILED     
    toCInt STATUS_TYPE_ERROR            = fromIntegral e_CURAND_STATUS_TYPE_ERROR            
    toCInt STATUS_OUT_OF_RANGE          = fromIntegral e_CURAND_STATUS_OUT_OF_RANGE          
    toCInt STATUS_LENGTH_NOT_MULTIPLE   = fromIntegral e_CURAND_STATUS_LENGTH_NOT_MULTIPLE   
    toCInt STATUS_LAUNCH_FAILURE        = fromIntegral e_CURAND_STATUS_LAUNCH_FAILURE        
    toCInt STATUS_PREEXISTING_FAILURE   = fromIntegral e_CURAND_STATUS_PREEXISTING_FAILURE   
    toCInt STATUS_INITIALIZATION_FAILED = fromIntegral e_CURAND_STATUS_INITIALIZATION_FAILED 
    toCInt STATUS_ARCH_MISMATCH         = fromIntegral e_CURAND_STATUS_ARCH_MISMATCH         
    toCInt STATUS_INTERNAL_ERROR        = fromIntegral e_CURAND_STATUS_INTERNAL_ERROR        

    fromCInt (fromIntegral -> e_CURAND_STATUS_SUCCESS              ) = STATUS_SUCCESS              
    fromCInt (fromIntegral -> e_CURAND_STATUS_VERSION_MISMATCH     ) = STATUS_VERSION_MISMATCH     
    fromCInt (fromIntegral -> e_CURAND_STATUS_NOT_INITIALIZED      ) = STATUS_NOT_INITIALIZED      
    fromCInt (fromIntegral -> e_CURAND_STATUS_ALLOCATION_FAILED    ) = STATUS_ALLOCATION_FAILED    
    fromCInt (fromIntegral -> e_CURAND_STATUS_TYPE_ERROR           ) = STATUS_TYPE_ERROR           
    fromCInt (fromIntegral -> e_CURAND_STATUS_OUT_OF_RANGE         ) = STATUS_OUT_OF_RANGE         
    fromCInt (fromIntegral -> e_CURAND_STATUS_LENGTH_NOT_MULTIPLE  ) = STATUS_LENGTH_NOT_MULTIPLE  
    fromCInt (fromIntegral -> e_CURAND_STATUS_LAUNCH_FAILURE       ) = STATUS_LAUNCH_FAILURE       
    fromCInt (fromIntegral -> e_CURAND_STATUS_PREEXISTING_FAILURE  ) = STATUS_PREEXISTING_FAILURE  
    fromCInt (fromIntegral -> e_CURAND_STATUS_INITIALIZATION_FAILED) = STATUS_INITIALIZATION_FAILED
    fromCInt (fromIntegral -> e_CURAND_STATUS_ARCH_MISMATCH        ) = STATUS_ARCH_MISMATCH        
    fromCInt (fromIntegral -> e_CURAND_STATUS_INTERNAL_ERROR       ) = STATUS_INTERNAL_ERROR       

instance HasCIntMapping GeneratorOrdering where
    toCInt ORDERING_PSEUDO_BEST    = fromIntegral e_CURAND_ORDERING_PSEUDO_BEST     
    toCInt ORDERING_PSEUDO_DEFAULT = fromIntegral e_CURAND_ORDERING_PSEUDO_DEFAULT 
    toCInt ORDERING_QUASI_DEFAULT  = fromIntegral e_CURAND_ORDERING_QUASI_DEFAULT  

    fromCInt (fromIntegral -> e_CURAND_ORDERING_PSEUDO_BEST   ) = ORDERING_PSEUDO_BEST   
    fromCInt (fromIntegral -> e_CURAND_ORDERING_PSEUDO_DEFAULT) = ORDERING_PSEUDO_DEFAULT
    fromCInt (fromIntegral -> e_CURAND_ORDERING_QUASI_DEFAULT ) = ORDERING_QUASI_DEFAULT 

instance Default RngType where
    def = RNG_PSEUDO_DEFAULT 

-- | * Utility functions
castCFloat :: Float -> CFloat
castCFloat = unsafeCoerce

castCDouble :: Double -> CDouble
castCDouble = unsafeCoerce

-- | Error checking
checkCurandError :: CInt -> IO ()
checkCurandError (fromCInt -> STATUS_SUCCESS) = return ()
checkCurandError (fromCInt -> err) = throw (CurandException err)

-- | * Random generator management
createGenerator :: RngType -> IO Generator
createGenerator genType = Generator <$> alloca (\ptr -> f_curandCreateGenerator ptr (toCInt genType) >>= checkCurandError >> peek ptr)
createGeneratorHost :: RngType -> IO Generator
createGeneratorHost genType = Generator <$> alloca (\ptr -> f_curandCreateGeneratorHost ptr (toCInt genType) >>= checkCurandError >> peek ptr)
destroyGenerator :: Generator -> IO ()
destroyGenerator gen = checkCurandError =<< f_curandDestroyGenerator (ptr gen)
generateSeeds :: Generator -> IO ()
generateSeeds (ptr -> gen) = checkCurandError =<< f_curandGenerateSeeds gen

-- | * Generating random numbers
generate :: Generator -> Int -> IO [Int]
generate (ptr -> gen) size = allocaArray size (\arrPtr -> f_curandGenerate gen arrPtr (fromIntegral size) >>= checkCurandError >> peekArray size (castPtr arrPtr))

generateNormal :: Generator -> Int -> Float -> Float -> IO [Float]
generateNormal (ptr -> gen) size (castCFloat -> mean) (castCFloat -> stddev)
    = allocaArray size (\arrPtr -> f_curandGenerateNormal gen arrPtr (fromIntegral size) mean stddev 
                        >>= checkCurandError
                        >> peekArray size (castPtr arrPtr))

generateNormalDouble :: Generator -> Int -> Double -> Double -> IO [Double]
generateNormalDouble (ptr -> gen) size (castCDouble -> mean) (castCDouble -> stddev)
    = allocaArray size (\arrPtr -> f_curandGenerateNormalDouble gen arrPtr (fromIntegral size) mean stddev 
                        >>= checkCurandError 
                        >> peekArray size (castPtr arrPtr))
generateUniform :: Generator -> Int -> IO [Float]
generateUniform (ptr -> gen) size = allocaArray size (\arrPtr -> f_curandGenerateUniform gen arrPtr (fromIntegral size) 
                                                      >>= checkCurandError >> peekArray size (castPtr arrPtr))

generateUniformDouble :: Generator -> Int -> IO [Double]
generateUniformDouble (ptr -> gen) size = allocaArray size (\ arrPtr -> f_curandGenerateUniformDouble gen arrPtr (fromIntegral size) 
                                                            >>= checkCurandError >> peekArray size (castPtr arrPtr))

--getDirectionVectors32 ::
--getDirectionVectors32

-- | curandGetVersion
getCurandVersion :: IO Int
getCurandVersion = alloca (\ptr -> f_curandGetVersion ptr >>= checkCurandError >> peek (castPtr ptr))

setGeneratorOffset :: Generator -> Integer -> IO ()
setGeneratorOffset (ptr -> gen) offset = checkCurandError =<< f_curandSetGeneratorOffset gen (fromIntegral offset)

setGeneratorOrdering :: Generator -> GeneratorOrdering -> IO ()
setGeneratorOrdering (ptr -> gen) order = checkCurandError =<< f_curandSetGeneratorOrdering gen (toCInt order)

setPseudoRandomGeneratorSeed :: Generator -> Integer -> IO ()
setPseudoRandomGeneratorSeed (ptr -> gen) (fromIntegral -> seed) = checkCurandError =<< f_curandSetGeneratorOffset gen seed
-- 
--setQuasiRandomGeneratorDimensions ::
--setQuasiRandomGeneratorDimensions
-- 
--setStream ::
--setStream



{-
Prelude HS_CURAND_H> HS_CURAND_H.f_curand
HS_CURAND_H.f_curandCreateGenerator                    HS_CURAND_H.f_curandGenerateSeeds                      HS_CURAND_H.f_curandSetGeneratorOrdering
HS_CURAND_H.f_curandCreateGeneratorHost                HS_CURAND_H.f_curandGenerateUniform                    HS_CURAND_H.f_curandSetPseudoRandomGeneratorSeed
HS_CURAND_H.f_curandDestroyGenerator                   HS_CURAND_H.f_curandGenerateUniformDouble              HS_CURAND_H.f_curandSetQuasiRandomGeneratorDimensions
HS_CURAND_H.f_curandGenerate                           HS_CURAND_H.f_curandGetDirectionVectors32              HS_CURAND_H.f_curandSetStream
HS_CURAND_H.f_curandGenerateNormal                     HS_CURAND_H.f_curandGetVersion
HS_CURAND_H.f_curandGenerateNormalDouble               HS_CURAND_H.f_curandSetGeneratorOffset
-}

{-
Prelude HS_CURAND_H> HS_CURAND_H.f_cuda
HS_CURAND_H.f_cudaBindSurfaceToArray                 HS_CURAND_H.f_cudaGraphicsMapResources               HS_CURAND_H.f_cudaMemcpyFromSymbolAsync
HS_CURAND_H.f_cudaBindTexture                        HS_CURAND_H.f_cudaGraphicsResourceGetMappedPointer   HS_CURAND_H.f_cudaMemcpyToArray
HS_CURAND_H.f_cudaBindTexture2D                      HS_CURAND_H.f_cudaGraphicsResourceSetMapFlags        HS_CURAND_H.f_cudaMemcpyToArrayAsync
HS_CURAND_H.f_cudaBindTextureToArray                 HS_CURAND_H.f_cudaGraphicsSubResourceGetMappedArray  HS_CURAND_H.f_cudaMemcpyToSymbol
HS_CURAND_H.f_cudaChooseDevice                       HS_CURAND_H.f_cudaGraphicsUnmapResources             HS_CURAND_H.f_cudaMemcpyToSymbolAsync
HS_CURAND_H.f_cudaDriverGetVersion                   HS_CURAND_H.f_cudaGraphicsUnregisterResource         HS_CURAND_H.f_cudaMemset
HS_CURAND_H.f_cudaEventCreate                        HS_CURAND_H.f_cudaHostAlloc                          HS_CURAND_H.f_cudaMemset2D
HS_CURAND_H.f_cudaEventCreateWithFlags               HS_CURAND_H.f_cudaHostGetDevicePointer               HS_CURAND_H.f_cudaMemset2DAsync
HS_CURAND_H.f_cudaEventDestroy                       HS_CURAND_H.f_cudaHostGetFlags                       HS_CURAND_H.f_cudaMemsetAsync
HS_CURAND_H.f_cudaEventElapsedTime                   HS_CURAND_H.f_cudaLaunch                             HS_CURAND_H.f_cudaPeekAtLastError
HS_CURAND_H.f_cudaEventQuery                         HS_CURAND_H.f_cudaMalloc                             HS_CURAND_H.f_cudaRuntimeGetVersion
HS_CURAND_H.f_cudaEventRecord                        HS_CURAND_H.f_cudaMallocArray                        HS_CURAND_H.f_cudaSetDevice
HS_CURAND_H.f_cudaEventSynchronize                   HS_CURAND_H.f_cudaMallocHost                         HS_CURAND_H.f_cudaSetDeviceFlags
HS_CURAND_H.f_cudaFree                               HS_CURAND_H.f_cudaMallocPitch                        HS_CURAND_H.f_cudaSetDoubleForDevice
HS_CURAND_H.f_cudaFreeArray                          HS_CURAND_H.f_cudaMemGetInfo                         HS_CURAND_H.f_cudaSetDoubleForHost
HS_CURAND_H.f_cudaFreeHost                           HS_CURAND_H.f_cudaMemcpy                             HS_CURAND_H.f_cudaSetValidDevices
HS_CURAND_H.f_cudaFuncGetAttributes                  HS_CURAND_H.f_cudaMemcpy2D                           HS_CURAND_H.f_cudaSetupArgument
HS_CURAND_H.f_cudaFuncSetCacheConfig                 HS_CURAND_H.f_cudaMemcpy2DArrayToArray               HS_CURAND_H.f_cudaStreamCreate
HS_CURAND_H.f_cudaGetChannelDesc                     HS_CURAND_H.f_cudaMemcpy2DAsync                      HS_CURAND_H.f_cudaStreamDestroy
HS_CURAND_H.f_cudaGetDevice                          HS_CURAND_H.f_cudaMemcpy2DFromArray                  HS_CURAND_H.f_cudaStreamQuery
HS_CURAND_H.f_cudaGetDeviceCount                     HS_CURAND_H.f_cudaMemcpy2DFromArrayAsync             HS_CURAND_H.f_cudaStreamSynchronize
HS_CURAND_H.f_cudaGetDeviceProperties                HS_CURAND_H.f_cudaMemcpy2DToArray                    HS_CURAND_H.f_cudaStreamWaitEvent
HS_CURAND_H.f_cudaGetErrorString                     HS_CURAND_H.f_cudaMemcpy2DToArrayAsync               HS_CURAND_H.f_cudaThreadExit
HS_CURAND_H.f_cudaGetExportTable                     HS_CURAND_H.f_cudaMemcpy3D                           HS_CURAND_H.f_cudaThreadGetCacheConfig
HS_CURAND_H.f_cudaGetLastError                       HS_CURAND_H.f_cudaMemcpy3DAsync                      HS_CURAND_H.f_cudaThreadGetLimit
HS_CURAND_H.f_cudaGetSurfaceReference                HS_CURAND_H.f_cudaMemcpyArrayToArray                 HS_CURAND_H.f_cudaThreadSetCacheConfig
HS_CURAND_H.f_cudaGetSymbolAddress                   HS_CURAND_H.f_cudaMemcpyAsync                        HS_CURAND_H.f_cudaThreadSetLimit
HS_CURAND_H.f_cudaGetSymbolSize                      HS_CURAND_H.f_cudaMemcpyFromArray                    HS_CURAND_H.f_cudaThreadSynchronize
HS_CURAND_H.f_cudaGetTextureAlignmentOffset          HS_CURAND_H.f_cudaMemcpyFromArrayAsync               HS_CURAND_H.f_cudaUnbindTexture
-}