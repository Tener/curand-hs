
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaChannelFormatDesc (
  module HS_CURAND_H_S_S_cudaChannelFormatDesc
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_x where
  z --> V_x = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1015 "HS_CURAND_H.hsc" #-}
  (z, V_x) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1016 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_y where
  z --> V_y = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 1019 "HS_CURAND_H.hsc" #-}
  (z, V_y) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 1020 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_z where
  z --> V_z = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1023 "HS_CURAND_H.hsc" #-}
  (z, V_z) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1024 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_w where
  z --> V_w = ((\hsc_ptr -> peekByteOff hsc_ptr 12)) z
{-# LINE 1027 "HS_CURAND_H.hsc" #-}
  (z, V_w) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 12)) z v
{-# LINE 1028 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc ((CInt)) V_f where
  z --> V_f = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1031 "HS_CURAND_H.hsc" #-}
  (z, V_f) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1032 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaChannelFormatDesc (CInt) V_sizeof where
  z --> V_sizeof = return $ ((20))
{-# LINE 1035 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaChannelFormatDesc where
  sizeOf _ = ((20))
{-# LINE 1038 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaChannelFormatDesc"
  poke _ = error $ "peek and poke cannot be used with struct cudaChannelFormatDesc"
