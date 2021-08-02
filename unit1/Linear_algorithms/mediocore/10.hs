module Main where

equ :: Float -> Float -> Float
equ b x = exp x + 5.8**c where
  c = a**2 + sqrt b
  a = b**3 + log (abs b)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let b = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ b x)
