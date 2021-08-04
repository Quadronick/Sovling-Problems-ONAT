module Main where

equ :: Float -> Float -> Float
equ b t = x**2 + abs x ** (1/3) where
  x = cos b ** 2 + sin a ** 2
  a = sqrt (b + t**2)

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
