module Main where

equ :: Float -> Float -> Float
equ m p = log (abs (x + t)) ** 4 where
  x = p**2 + t
  t = sin (m**3)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let m = read input1 :: Float
  let p = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ m p)
