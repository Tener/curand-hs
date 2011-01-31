
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_char3 (
  module HS_CURAND_H_S_S_char3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 931 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 932 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 1)) z
{-# LINE 935 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 1)) z v
{-# LINE 936 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_char3 ((CSChar)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 2)) z
{-# LINE 939 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 2)) z v
{-# LINE 940 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_char3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((3))
{-# LINE 943 "HS_CURAND_H.hsc" #-}

instance Storable S_char3 where
  sizeOf _ = ((3))
{-# LINE 946 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct char3"
  poke _ = error $ "peek and poke cannot be used with struct char3"
