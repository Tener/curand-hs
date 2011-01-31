
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


instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1547 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1548 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 1551 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 1552 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_dim3 ((CUInt)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1555 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1556 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_dim3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((12))
{-# LINE 1559 "HS_CURAND_H.hsc" #-}

instance Storable S_dim3 where
  sizeOf _ = ((12))
{-# LINE 1562 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct dim3"
  poke _ = error $ "peek and poke cannot be used with struct dim3"
