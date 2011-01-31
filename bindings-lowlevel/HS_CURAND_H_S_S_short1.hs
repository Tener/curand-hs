
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short1 (
  module HS_CURAND_H_S_S_short1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_short1 ((CShort)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2179 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2180 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_short1 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((2))
{-# LINE 2183 "HS_CURAND_H.hsc" #-}

instance Storable S_short1 where
  sizeOf _ = ((2))
{-# LINE 2186 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct short1"
  poke _ = error $ "peek and poke cannot be used with struct short1"
