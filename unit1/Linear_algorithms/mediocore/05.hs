module Main where

equ :: Float -> Float -> Float
equ p t = tan (x**2) ** 3 + k * t where
  x = p * t**2 + sqrt k
  k = sqrt (p *t)

main :: IO()
main = do
  print "This program calculates value of the function with given arguments"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let p = read input1 :: Float
  let t = read input2 :: Float
  putStrLn $ "The value of the function is " ++ show (equ p t)
