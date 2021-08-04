module Main where

equ :: Float -> Float -> Float
equ a p = x**3 / t**2 where
  x = exp (sqrt (p + a))
  t = p**3 + a**3

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let p = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ a p)
