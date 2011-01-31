
{-# OPTIONS -fglasgow-exts -XForeignFunctionInterface #-}
module HS_CURAND_H_S_S_cudaDeviceProp (
  module HS_CURAND_H_S_S_cudaDeviceProp
) where

import Foreign
import Foreign.C.Types
import HSFFIG.FieldAccess
import HS_CURAND_H_S_t
import HS_CURAND_H_S_n
import HS_CURAND_H_S_d


instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CChar)) V_name where
  z --> V_name = ((\hsc_ptr -> peekByteOff hsc_ptr 0)) z
{-# LINE 1065 "HS_CURAND_H.hsc" #-}
  (z, V_name) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 0)) z v
{-# LINE 1066 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_name where
  z --> D_name = return [(256)]
{-# LINE 1069 "HS_CURAND_H.hsc" #-}
  (z, D_name) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_totalGlobalMem where
  z --> V_totalGlobalMem = ((\hsc_ptr -> peekByteOff hsc_ptr 256)) z
{-# LINE 1073 "HS_CURAND_H.hsc" #-}
  (z, V_totalGlobalMem) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 256)) z v
{-# LINE 1074 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_sharedMemPerBlock where
  z --> V_sharedMemPerBlock = ((\hsc_ptr -> peekByteOff hsc_ptr 264)) z
{-# LINE 1077 "HS_CURAND_H.hsc" #-}
  (z, V_sharedMemPerBlock) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 264)) z v
{-# LINE 1078 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_regsPerBlock where
  z --> V_regsPerBlock = ((\hsc_ptr -> peekByteOff hsc_ptr 272)) z
{-# LINE 1081 "HS_CURAND_H.hsc" #-}
  (z, V_regsPerBlock) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 272)) z v
{-# LINE 1082 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_warpSize where
  z --> V_warpSize = ((\hsc_ptr -> peekByteOff hsc_ptr 276)) z
{-# LINE 1085 "HS_CURAND_H.hsc" #-}
  (z, V_warpSize) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 276)) z v
{-# LINE 1086 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_memPitch where
  z --> V_memPitch = ((\hsc_ptr -> peekByteOff hsc_ptr 280)) z
{-# LINE 1089 "HS_CURAND_H.hsc" #-}
  (z, V_memPitch) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 280)) z v
{-# LINE 1090 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_maxThreadsPerBlock where
  z --> V_maxThreadsPerBlock = ((\hsc_ptr -> peekByteOff hsc_ptr 288)) z
{-# LINE 1093 "HS_CURAND_H.hsc" #-}
  (z, V_maxThreadsPerBlock) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 288)) z v
{-# LINE 1094 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxThreadsDim where
  z --> V_maxThreadsDim = ((\hsc_ptr -> peekByteOff hsc_ptr 292)) z
{-# LINE 1097 "HS_CURAND_H.hsc" #-}
  (z, V_maxThreadsDim) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 292)) z v
{-# LINE 1098 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxThreadsDim where
  z --> D_maxThreadsDim = return [(3)]
{-# LINE 1101 "HS_CURAND_H.hsc" #-}
  (z, D_maxThreadsDim) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxGridSize where
  z --> V_maxGridSize = ((\hsc_ptr -> peekByteOff hsc_ptr 304)) z
{-# LINE 1105 "HS_CURAND_H.hsc" #-}
  (z, V_maxGridSize) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 304)) z v
{-# LINE 1106 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxGridSize where
  z --> D_maxGridSize = return [(3)]
{-# LINE 1109 "HS_CURAND_H.hsc" #-}
  (z, D_maxGridSize) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_clockRate where
  z --> V_clockRate = ((\hsc_ptr -> peekByteOff hsc_ptr 316)) z
{-# LINE 1113 "HS_CURAND_H.hsc" #-}
  (z, V_clockRate) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 316)) z v
{-# LINE 1114 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_totalConstMem where
  z --> V_totalConstMem = ((\hsc_ptr -> peekByteOff hsc_ptr 320)) z
{-# LINE 1117 "HS_CURAND_H.hsc" #-}
  (z, V_totalConstMem) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 320)) z v
{-# LINE 1118 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_major where
  z --> V_major = ((\hsc_ptr -> peekByteOff hsc_ptr 328)) z
{-# LINE 1121 "HS_CURAND_H.hsc" #-}
  (z, V_major) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 328)) z v
{-# LINE 1122 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_minor where
  z --> V_minor = ((\hsc_ptr -> peekByteOff hsc_ptr 332)) z
{-# LINE 1125 "HS_CURAND_H.hsc" #-}
  (z, V_minor) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 332)) z v
{-# LINE 1126 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_textureAlignment where
  z --> V_textureAlignment = ((\hsc_ptr -> peekByteOff hsc_ptr 336)) z
{-# LINE 1129 "HS_CURAND_H.hsc" #-}
  (z, V_textureAlignment) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 336)) z v
{-# LINE 1130 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_deviceOverlap where
  z --> V_deviceOverlap = ((\hsc_ptr -> peekByteOff hsc_ptr 344)) z
{-# LINE 1133 "HS_CURAND_H.hsc" #-}
  (z, V_deviceOverlap) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 344)) z v
{-# LINE 1134 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_multiProcessorCount where
  z --> V_multiProcessorCount = ((\hsc_ptr -> peekByteOff hsc_ptr 348)) z
{-# LINE 1137 "HS_CURAND_H.hsc" #-}
  (z, V_multiProcessorCount) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 348)) z v
{-# LINE 1138 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_kernelExecTimeoutEnabled where
  z --> V_kernelExecTimeoutEnabled = ((\hsc_ptr -> peekByteOff hsc_ptr 352)) z
{-# LINE 1141 "HS_CURAND_H.hsc" #-}
  (z, V_kernelExecTimeoutEnabled) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 352)) z v
{-# LINE 1142 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_integrated where
  z --> V_integrated = ((\hsc_ptr -> peekByteOff hsc_ptr 356)) z
{-# LINE 1145 "HS_CURAND_H.hsc" #-}
  (z, V_integrated) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 356)) z v
{-# LINE 1146 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_canMapHostMemory where
  z --> V_canMapHostMemory = ((\hsc_ptr -> peekByteOff hsc_ptr 360)) z
{-# LINE 1149 "HS_CURAND_H.hsc" #-}
  (z, V_canMapHostMemory) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 360)) z v
{-# LINE 1150 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_computeMode where
  z --> V_computeMode = ((\hsc_ptr -> peekByteOff hsc_ptr 364)) z
{-# LINE 1153 "HS_CURAND_H.hsc" #-}
  (z, V_computeMode) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 364)) z v
{-# LINE 1154 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_maxTexture1D where
  z --> V_maxTexture1D = ((\hsc_ptr -> peekByteOff hsc_ptr 368)) z
{-# LINE 1157 "HS_CURAND_H.hsc" #-}
  (z, V_maxTexture1D) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 368)) z v
{-# LINE 1158 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture2D where
  z --> V_maxTexture2D = ((\hsc_ptr -> peekByteOff hsc_ptr 372)) z
{-# LINE 1161 "HS_CURAND_H.hsc" #-}
  (z, V_maxTexture2D) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 372)) z v
{-# LINE 1162 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture2D where
  z --> D_maxTexture2D = return [(2)]
{-# LINE 1165 "HS_CURAND_H.hsc" #-}
  (z, D_maxTexture2D) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture3D where
  z --> V_maxTexture3D = ((\hsc_ptr -> peekByteOff hsc_ptr 380)) z
{-# LINE 1169 "HS_CURAND_H.hsc" #-}
  (z, V_maxTexture3D) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 380)) z v
{-# LINE 1170 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture3D where
  z --> D_maxTexture3D = return [(3)]
{-# LINE 1173 "HS_CURAND_H.hsc" #-}
  (z, D_maxTexture3D) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V_maxTexture2DArray where
  z --> V_maxTexture2DArray = ((\hsc_ptr -> peekByteOff hsc_ptr 392)) z
{-# LINE 1177 "HS_CURAND_H.hsc" #-}
  (z, V_maxTexture2DArray) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 392)) z v
{-# LINE 1178 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D_maxTexture2DArray where
  z --> D_maxTexture2DArray = return [(3)]
{-# LINE 1181 "HS_CURAND_H.hsc" #-}
  (z, D_maxTexture2DArray) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CSize)) V_surfaceAlignment where
  z --> V_surfaceAlignment = ((\hsc_ptr -> peekByteOff hsc_ptr 408)) z
{-# LINE 1185 "HS_CURAND_H.hsc" #-}
  (z, V_surfaceAlignment) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 408)) z v
{-# LINE 1186 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_concurrentKernels where
  z --> V_concurrentKernels = ((\hsc_ptr -> peekByteOff hsc_ptr 416)) z
{-# LINE 1189 "HS_CURAND_H.hsc" #-}
  (z, V_concurrentKernels) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 416)) z v
{-# LINE 1190 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_ECCEnabled where
  z --> V_ECCEnabled = ((\hsc_ptr -> peekByteOff hsc_ptr 420)) z
{-# LINE 1193 "HS_CURAND_H.hsc" #-}
  (z, V_ECCEnabled) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 420)) z v
{-# LINE 1194 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_pciBusID where
  z --> V_pciBusID = ((\hsc_ptr -> peekByteOff hsc_ptr 424)) z
{-# LINE 1197 "HS_CURAND_H.hsc" #-}
  (z, V_pciBusID) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 424)) z v
{-# LINE 1198 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_pciDeviceID where
  z --> V_pciDeviceID = ((\hsc_ptr -> peekByteOff hsc_ptr 428)) z
{-# LINE 1201 "HS_CURAND_H.hsc" #-}
  (z, V_pciDeviceID) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 428)) z v
{-# LINE 1202 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ((CInt)) V_tccDriver where
  z --> V_tccDriver = ((\hsc_ptr -> peekByteOff hsc_ptr 432)) z
{-# LINE 1205 "HS_CURAND_H.hsc" #-}
  (z, V_tccDriver) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 432)) z v
{-# LINE 1206 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (Ptr (CInt)) V___cudaReserved where
  z --> V___cudaReserved = ((\hsc_ptr -> peekByteOff hsc_ptr 436)) z
{-# LINE 1209 "HS_CURAND_H.hsc" #-}
  (z, V___cudaReserved) <-- v = ((\hsc_ptr -> pokeByteOff hsc_ptr 436)) z v
{-# LINE 1210 "HS_CURAND_H.hsc" #-}

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp ([Int]) D___cudaReserved where
  z --> D___cudaReserved = return [(21)]
{-# LINE 1213 "HS_CURAND_H.hsc" #-}
  (z, D___cudaReserved) <-- v = error $ "dimensions of a field  cannot be set"

instance HSFFIG.FieldAccess.FieldAccess S_cudaDeviceProp (CInt) V_sizeof where
  z --> V_sizeof = return $ ((520))
{-# LINE 1217 "HS_CURAND_H.hsc" #-}

instance Storable S_cudaDeviceProp where
  sizeOf _ = ((520))
{-# LINE 1220 "HS_CURAND_H.hsc" #-}
  alignment _ = 1
  peek _ = error $ "peek and poke cannot be used with struct cudaDeviceProp"
  poke _ = error $ "peek and poke cannot be used with struct cudaDeviceProp"
