module Main where

equ :: Float -> Float -> Float
equ a x = x * p**2 + t**5 where
  p = x**2 - sqrt (abs x)
  t = x**2 + a**2

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ a x)
