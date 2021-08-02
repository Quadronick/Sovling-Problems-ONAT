module Main where

equ :: Float -> Float -> Float
equ m x = sin (a + tan b ** 3) ** 2 where
  a = sqrt (abs x)
  b = x**4 + m**2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let m = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ m x)
