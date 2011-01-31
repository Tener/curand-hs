
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaExtent (
  module HS_CURAND_H_S_S_cudaExtent
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_width where
  z --> V_width = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1247 "HS_CURAND_H.hsc" #-}
  (z, V_width) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1248 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_height where
  z --> V_height = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1251 "HS_CURAND_H.hsc" #-}
  (z, V_height) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1252 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent ((CSize)) V_depth where
  z --> V_depth = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1255 "HS_CURAND_H.hsc" #-}
  (z, V_depth) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1256 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaExtent (CInt) V_sizeof where
  z --> V_sizeof = return $ ((24))
{-# LINE 1259 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaExtent where
  sizeOf _ = ((24))
{-# LINE 1262 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaExtent"
  poke _ = error $ "peek and poke cannot be used with struct cudaExtent"
