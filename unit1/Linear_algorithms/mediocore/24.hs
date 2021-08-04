module Main where

equ :: Float -> Float -> Float
equ b t = cos (x**5) - b *  sin x ** 2 where
  x = a**3 + sqrt (t + b)
  a = t**2 * b

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
