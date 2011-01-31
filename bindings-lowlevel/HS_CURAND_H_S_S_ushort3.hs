
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_ushort3 (
  module HS_CURAND_H_S_S_ushort3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2916 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2917 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 2)) z
{-# LINE 2920 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 2)) z v
{-# LINE 2921 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 ((CUShort)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 2924 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 2925 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_ushort3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((6))
{-# LINE 2928 "HS_CURAND_H.hsc" #-}

instance Storable S_ushort3 where
  sizeOf _ = ((6))
{-# LINE 2931 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct ushort3"
  poke _ = error $ "peek and poke cannot be used with struct ushort3"
