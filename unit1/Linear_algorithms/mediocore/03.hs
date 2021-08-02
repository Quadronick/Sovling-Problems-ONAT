module Main where

equ :: Float -> Float -> Float
equ p x = a**3 / b**2 where
  a = exp (sqrt(abs x))
  b = sin p ** 2 + x**3

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let p = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ p x)
