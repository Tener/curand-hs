
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar1 (
  module HS_CURAND_H_S_S_uchar1
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_uchar1 ((CUChar)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2389 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2390 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_uchar1 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((1))
{-# LINE 2393 "HS_CURAND_H.hsc" #-}

instance Storable S_uchar1 where
  sizeOf _ = ((1))
{-# LINE 2396 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uchar1"
  poke _ = error $ "peek and poke cannot be used with struct uchar1"
