
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_uchar3 (
  module HS_CURAND_H_S_S_uchar3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2444 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2445 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 1)) z
{-# LINE 2448 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 1)) z v
{-# LINE 2449 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 ((CUChar)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 2)) z
{-# LINE 2452 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 2)) z v
{-# LINE 2453 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_uchar3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((3))
{-# LINE 2456 "HS_CURAND_H.hsc" #-}

instance Storable S_uchar3 where
  sizeOf _ = ((3))
{-# LINE 2459 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct uchar3"
  poke _ = error $ "peek and poke cannot be used with struct uchar3"
