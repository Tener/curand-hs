
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_short3 (
  module HS_CURAND_H_S_S_short3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2234 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2235 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 2)) z
{-# LINE 2238 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 2)) z v
{-# LINE 2239 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_short3 ((CShort)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 2242 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 2243 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_short3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((6))
{-# LINE 2246 "HS_CURAND_H.hsc" #-}

instance Storable S_short3 where
  sizeOf _ = ((6))
{-# LINE 2249 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct short3"
  poke _ = error $ "peek and poke cannot be used with struct short3"
