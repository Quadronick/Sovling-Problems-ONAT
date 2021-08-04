module Main where

equ :: Float -> Float -> Float
equ b k = cos (a**3 + b) ** 4 where
  a = b + t**2 * exp t
  t = k**2 + sqrt b

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let k = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b k)
