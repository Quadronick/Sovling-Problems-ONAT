module Main where

equ :: Float -> Float -> Float
equ b q = atan (abs x) ** 2 where
  x = t**3 + b**3
  t = b**3 + exp (sqrt q)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let q = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b q)
