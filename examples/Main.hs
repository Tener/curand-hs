{-# LANGUAGE ScopedTypeVariables, CPP #-}
module Main where

import HS_CURAND_H
import System.Environment

-- #define GENFLOAT

#ifdef GENFLOAT
type ElType = CFloat
#else
type ElType = CUInt
#endif

genFun :: Ptr S_curandGenerator_st
       -> Ptr ElType
       -> CSize
       -> IO CInt

#ifdef GENFLOAT
genFun = f_curandGenerateUniform
#else
genFun = f_curandGenerate
#endif

#ifndef NUM_COUNT
#define NUM_COUNT 100
#endif

fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

main :: IO ()
main = do
  args <- getArgs

  let n :: (Read a, Num a) => a
      n = case args of 
            [] -> NUM_COUNT
            (n':_) -> read n'

      nBytes = fi (sizeOf (undefined :: ElType) * n)

  -- allocate n data on host
  dataHost :: Ptr ElType <- mallocArray n

  -- allocate n data on device
  dataDevPtr <- malloc
  f_cudaMalloc dataDevPtr nBytes
  dataDev :: Ptr ElType <- peek (castPtr dataDevPtr)
  free dataDevPtr

  -- create pseudo-random number generator
  genPtrPtr <- malloc
  f_curandCreateGenerator genPtrPtr (fi e_CURAND_RNG_PSEUDO_DEFAULT)
  genPtr <- peek genPtrPtr
  free genPtrPtr

  -- set seed
  f_curandSetPseudoRandomGeneratorSeed genPtr 1234

  -- generate n data on device
  genFun genPtr dataDev n

  -- copy device memory to host
  f_cudaMemcpy (castPtr dataHost) (castPtr dataDev) nBytes (fi e_cudaMemcpyDeviceToHost)

  -- show result
  dataLst <- peekArray n dataHost
  putStr (concatMap (\x -> show x ++ "\n") dataLst)

  -- cleanup
  f_curandDestroyGenerator genPtr
  f_cudaFree (castPtr dataDev)
  free dataHost

  return ()
