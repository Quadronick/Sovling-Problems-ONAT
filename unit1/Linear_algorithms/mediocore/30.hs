module Main where

equ :: Float -> Float -> Float
equ b t = log (abs (x + a**2)) ** 5 where
  x = t**2 * sqrt (abs (a + b))
  a = t + b**3

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let t = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b t)
