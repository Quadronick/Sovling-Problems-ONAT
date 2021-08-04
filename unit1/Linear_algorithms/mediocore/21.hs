module Main where

equ :: Float -> Float -> Float
equ b n = log a / log b ** 3 where
  a = sin (x**2 + b**2)
  x = n**b + b**2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let n = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b n)
