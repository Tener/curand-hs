
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_long1 (
  module HS_CURAND_H_S_S_long1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_long1 ((CLong)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1943 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1944 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_long1 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((8))
{-# LINE 1947 "HS_CURAND_H.hsc" #-}

instance Storable S_long1 where
  sizeOf _ = ((8))
{-# LINE 1950 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct long1"
  poke _ = error $ "peek and poke cannot be used with struct long1"
