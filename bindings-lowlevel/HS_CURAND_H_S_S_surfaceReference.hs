
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_surfaceReference (
  module HS_CURAND_H_S_S_surfaceReference
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_surfaceReference ((Ptr S_cudaChannelFormatDesc)) V_channelDesc where
  z --> V_channelDesc = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 0)) z
{-# LINE 2297 "HS_CURAND_H.hsc" #-}
  (z, V_channelDesc) <-- v = error $ "field channelDesc is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_surfaceReference (CInt) V_sizeof where
  z --> V_sizeof = return $ ((20))
{-# LINE 2301 "HS_CURAND_H.hsc" #-}

instance Storable S_surfaceReference where
  sizeOf _ = ((20))
{-# LINE 2304 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct surfaceReference"
  poke _ = error $ "peek and poke cannot be used with struct surfaceReference"
