
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


instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1762 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1763 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 1766 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 1767 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_float3 ((CFloat)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1770 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1771 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_float3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((12))
{-# LINE 1774 "HS_CURAND_H.hsc" #-}

instance Storable S_float3 where
  sizeOf _ = ((12))
{-# LINE 1777 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct float3"
  poke _ = error $ "peek and poke cannot be used with struct float3"
