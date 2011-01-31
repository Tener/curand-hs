
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_double3 (
  module HS_CURAND_H_S_S_double3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1644 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1645 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1648 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1649 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_double3 ((CDouble)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1652 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1653 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_double3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((24))
{-# LINE 1656 "HS_CURAND_H.hsc" #-}

instance Storable S_double3 where
  sizeOf _ = ((24))
{-# LINE 1659 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct double3"
  poke _ = error $ "peek and poke cannot be used with struct double3"
