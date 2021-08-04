module Main where

equ :: Float -> Float -> Float
equ a t = tan 4 * x + sin (x**2) where
  x = log (abs (c * t)) + a**2
  c = t**2 + sqrt a

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
