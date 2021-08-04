module Main where

equ :: Float -> Float -> Float
equ b k = sin (a**2 + b**2) ** 4 where
  a = sqrt (b + t)
  t = b**2 + k**3

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let t = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ a t)
