module Main where

equ :: Float -> Float -> Float
equ a x = a * z**7 + sin w ** 2 where
  z = cos a ** 2 + w**2
  w = x**2 * sqrt (abs (a + x))

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let x = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ a x)
