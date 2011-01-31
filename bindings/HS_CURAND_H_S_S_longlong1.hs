
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_longlong1 (
  module HS_CURAND_H_S_S_longlong1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_longlong1 ((CLLong)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2061 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2062 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_longlong1 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((8))
{-# LINE 2065 "HS_CURAND_H.hsc" #-}

instance Storable S_longlong1 where
  sizeOf _ = ((8))
{-# LINE 2068 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct longlong1"
  poke _ = error $ "peek and poke cannot be used with struct longlong1"
