module Main where

import System.Random.CURAND
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  gen <- createGenerator RNG_PSEUDO_DEFAULT
  setPseudoRandomGeneratorSeed gen 1234
  
  destroyGenerator gen

  putStrLn "PASSED!"