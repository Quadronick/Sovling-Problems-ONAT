module Main where

equ :: Float -> Float -> Float
equ c x = cos b ** 2 + b * cos (a**2) ** 4 where
  a = abs (b + c) ** (1 / 3)
  b = x + c**2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let c = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ c x)
