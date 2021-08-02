module Main where

equ :: Float -> Float -> Float
equ k m = (x**2 + c**2) ** (1/3) where
  x = exp (m * k)
  c = cos m ** 2 + k**2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let k = read input1 :: Float
  let m = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ k m)
