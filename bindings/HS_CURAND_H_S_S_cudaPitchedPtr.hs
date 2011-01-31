
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaPitchedPtr (
  module HS_CURAND_H_S_S_cudaPitchedPtr
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((Ptr (CChar))) V_ptr where
  z --> V_ptr = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1438 "HS_CURAND_H.hsc" #-}
  (z, V_ptr) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1439 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_pitch where
  z --> V_pitch = ((\hsc_ptr -> peekByteOff hsc_ptr 8)) z
{-# LINE 1442 "HS_CURAND_H.hsc" #-}
  (z, V_pitch) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 8)) z v
{-# LINE 1443 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_xsize where
  z --> V_xsize = ((\hsc_ptr -> peekByteOff hsc_ptr 16)) z
{-# LINE 1446 "HS_CURAND_H.hsc" #-}
  (z, V_xsize) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 16)) z v
{-# LINE 1447 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr ((CSize)) V_ysize where
  z --> V_ysize = ((\hsc_ptr -> peekByteOff hsc_ptr 24)) z
{-# LINE 1450 "HS_CURAND_H.hsc" #-}
  (z, V_ysize) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 24)) z v
{-# LINE 1451 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaPitchedPtr (CInt) V_sizeof where
  z --> V_sizeof = return $ ((32))
{-# LINE 1454 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaPitchedPtr where
  sizeOf _ = ((32))
{-# LINE 1457 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaPitchedPtr"
  poke _ = error $ "peek and poke cannot be used with struct cudaPitchedPtr"
