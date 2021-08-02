module Main where

equ :: Float -> Float -> Float
equ t x = abs(a - b * x)**0.2 where
  a = log x
  b = sqrt (x**2 + t**2)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let t = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ t x)
