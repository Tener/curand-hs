
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


instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1484 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1485 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1488 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1489 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos ((CSize)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1492 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1493 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPos (CInt) V_sizeof where
  z --> V_sizeof = return $ ((24))
{-# LINE 1496 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaPos where
  sizeOf _ = ((24))
{-# LINE 1499 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaPos"
  poke _ = error $ "peek and poke cannot be used with struct cudaPos"
