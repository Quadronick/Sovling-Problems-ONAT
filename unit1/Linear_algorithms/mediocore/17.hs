module Main where

equ :: Float -> Float -> Float
equ x t = cos (a + b**3) ** 3 where
  a = t * x + abs (sqrt b)
  b = log (abs x) ** 2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let x = read input1 :: Float
  let t = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ x t)
