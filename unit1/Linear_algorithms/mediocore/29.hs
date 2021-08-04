module Main where

equ :: Float -> Float -> Float
equ a b = log (abs p) ** 3 + x where
  p = x * (a + b**3)
  x = exp (2 * a) + sqrt b

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ a b)
