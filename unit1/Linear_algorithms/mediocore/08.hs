module Main where

equ :: Float -> Float -> Float
equ b c = 7 * exp (sqrt (abs x)) + cos x ** 4 where
  x = a + (b + c)**3
  a = sin b

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let c = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b c)
