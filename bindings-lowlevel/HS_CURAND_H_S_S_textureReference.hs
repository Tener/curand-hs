
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_textureReference (
  module HS_CURAND_H_S_S_textureReference
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((CInt)) V_normalized where
  z --> V_normalized = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 2331 "HS_CURAND_H.hsc" #-}
  (z, V_normalized) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 2332 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((CInt)) V_filterMode where
  z --> V_filterMode = ((\hsc_ptr -> peekByteOff hsc_ptr 4)) z
{-# LINE 2335 "HS_CURAND_H.hsc" #-}
  (z, V_filterMode) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 4)) z v
{-# LINE 2336 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (Ptr (CInt)) V_addressMode where
  z --> V_addressMode = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 2339 "HS_CURAND_H.hsc" #-}
  (z, V_addressMode) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 2340 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ([Int]) D_addressMode where
  z --> D_addressMode = return [(3)]
{-# LINE 2343 "HS_CURAND_H.hsc" #-}
  (z, D_addressMode) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ((Ptr S_cudaChannelFormatDesc)) V_channelDesc where
  z --> V_channelDesc = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 20)) z
{-# LINE 2347 "HS_CURAND_H.hsc" #-}
  (z, V_channelDesc) <-- v = error $ "field channelDesc is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = ((\hsc_ptr -> peekByteOff hsc_ptr 40)) z
{-# LINE 2351 "HS_CURAND_H.hsc" #-}
  (z, V___cudaReserved) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 40)) z v
{-# LINE 2352 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_textureReference ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(16)]
{-# LINE 2355 "HS_CURAND_H.hsc" #-}
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_textureReference (CInt) V_sizeof where
  z --> V_sizeof = return $ ((104))
{-# LINE 2359 "HS_CURAND_H.hsc" #-}

instance Storable S_textureReference where
  sizeOf _ = ((104))
{-# LINE 2362 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct textureReference"
  poke _ = error $ "peek and poke cannot be used with struct textureReference"
