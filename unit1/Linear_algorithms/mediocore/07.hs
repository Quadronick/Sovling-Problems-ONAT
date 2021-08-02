module Main where

equ :: Float -> Float -> Float
equ k x = log a**3 + cos x ** 5 where
  a = c**4 + k**3
  c = sqrt (abs x)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let k = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ k x)
