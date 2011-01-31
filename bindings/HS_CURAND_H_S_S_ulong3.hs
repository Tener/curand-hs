
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


instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2680 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2681 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 2684 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 2685 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 ((CULong)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 2688 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 2689 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ulong3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((24))
{-# LINE 2692 "HS_CURAND_H.hsc" #-}

instance Storable S_ulong3 where
  sizeOf _ = ((24))
{-# LINE 2695 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ulong3"
  poke _ = error $ "peek and poke cannot be used with struct ulong3"
