module Main where

equ :: Float -> Float -> Float
equ x b = exp (2 * x) + 9.7**c where
  c = a**2 + sqrt (b * x)
  a = log x

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let x = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ x b)
