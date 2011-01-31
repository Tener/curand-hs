
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


instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_sharedSizeBytes where
  z --> V_sharedSizeBytes = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1289 "HS_CURAND_H.hsc" #-}
  (z, V_sharedSizeBytes) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1290 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_constSizeBytes where
  z --> V_constSizeBytes = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1293 "HS_CURAND_H.hsc" #-}
  (z, V_constSizeBytes) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1294 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CSize)) V_localSizeBytes where
  z --> V_localSizeBytes = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1297 "HS_CURAND_H.hsc" #-}
  (z, V_localSizeBytes) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1298 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_maxThreadsPerBlock where
  z --> V_maxThreadsPerBlock = ((\hsc_ptr -> peekByteOff hsc_ptr 24)) z
{-# LINE 1301 "HS_CURAND_H.hsc" #-}
  (z, V_maxThreadsPerBlock) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 24)) z v
{-# LINE 1302 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_numRegs where
  z --> V_numRegs = ((\hsc_ptr -> peekByteOff hsc_ptr 28)) z
{-# LINE 1305 "HS_CURAND_H.hsc" #-}
  (z, V_numRegs) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 28)) z v
{-# LINE 1306 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_ptxVersion where
  z --> V_ptxVersion = ((\hsc_ptr -> peekByteOff hsc_ptr 32)) z
{-# LINE 1309 "HS_CURAND_H.hsc" #-}
  (z, V_ptxVersion) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 32)) z v
{-# LINE 1310 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ((CInt)) V_binaryVersion where
  z --> V_binaryVersion = ((\hsc_ptr -> peekByteOff hsc_ptr 36)) z
{-# LINE 1313 "HS_CURAND_H.hsc" #-}
  (z, V_binaryVersion) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 36)) z v
{-# LINE 1314 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = ((\hsc_ptr -> peekByteOff hsc_ptr 40)) z
{-# LINE 1317 "HS_CURAND_H.hsc" #-}
  (z, V___cudaReserved) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 40)) z v
{-# LINE 1318 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(6)]
{-# LINE 1321 "HS_CURAND_H.hsc" #-}
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaFuncAttributes (CInt) V_sizeof where
  z --> V_sizeof = return $ ((64))
{-# LINE 1325 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaFuncAttributes where
  sizeOf _ = ((64))
{-# LINE 1328 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaFuncAttributes"
  poke _ = error $ "peek and poke cannot be used with struct cudaFuncAttributes"
