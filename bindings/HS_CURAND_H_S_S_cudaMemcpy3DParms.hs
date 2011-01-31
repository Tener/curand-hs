
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaMemcpy3DParms (
  module HS_CURAND_H_S_S_cudaMemcpy3DParms
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr (S_cudaArray))) V_srcArray where
  z --> V_srcArray = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1376 "HS_CURAND_H.hsc" #-}
  (z, V_srcArray) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1377 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPos)) V_srcPos where
  z --> V_srcPos = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 8)) z
{-# LINE 1380 "HS_CURAND_H.hsc" #-}
  (z, V_srcPos) <-- v = error $ "field srcPos is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPitchedPtr)) V_srcPtr where
  z --> V_srcPtr = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 32)) z
{-# LINE 1384 "HS_CURAND_H.hsc" #-}
  (z, V_srcPtr) <-- v = error $ "field srcPtr is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr (S_cudaArray))) V_dstArray where
  z --> V_dstArray = ((\hsc_ptr -> peekByteOff hsc_ptr 64)) z
{-# LINE 1388 "HS_CURAND_H.hsc" #-}
  (z, V_dstArray) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 64)) z v
{-# LINE 1389 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPos)) V_dstPos where
  z --> V_dstPos = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 72)) z
{-# LINE 1392 "HS_CURAND_H.hsc" #-}
  (z, V_dstPos) <-- v = error $ "field dstPos is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaPitchedPtr)) V_dstPtr where
  z --> V_dstPtr = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 96)) z
{-# LINE 1396 "HS_CURAND_H.hsc" #-}
  (z, V_dstPtr) <-- v = error $ "field dstPtr is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((Ptr S_cudaExtent)) V_extent where
  z --> V_extent = return $ ((\hsc_ptr -> hsc_ptr `plusPtr` 128)) z
{-# LINE 1400 "HS_CURAND_H.hsc" #-}
  (z, V_extent) <-- v = error $ "field extent is a structure or an array: cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms ((CInt)) V_kind where
  z --> V_kind = ((\hsc_ptr -> peekByteOff hsc_ptr 152)) z
{-# LINE 1404 "HS_CURAND_H.hsc" #-}
  (z, V_kind) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 152)) z v
{-# LINE 1405 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaMemcpy3DParms (CInt) V_sizeof where
  z --> V_sizeof = return $ ((160))
{-# LINE 1408 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaMemcpy3DParms where
  sizeOf _ = ((160))
{-# LINE 1411 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaMemcpy3DParms"
  poke _ = error $ "peek and poke cannot be used with struct cudaMemcpy3DParms"
