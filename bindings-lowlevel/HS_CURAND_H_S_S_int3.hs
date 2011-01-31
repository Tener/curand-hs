
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_int3 (
  module HS_CURAND_H_S_S_int3
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1880 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1881 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 1884 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 1885 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_int3 ((CInt)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1888 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1889 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_int3 (CInt) V_sizeof where
  z --> V_sizeof = return $ ((12))
{-# LINE 1892 "HS_CURAND_H.hsc" #-}

instance Storable S_int3 where
  sizeOf _ = ((12))
{-# LINE 1895 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct int3"
  poke _ = error $ "peek and poke cannot be used with struct int3"
