module Main where

roots :: Float -> Float -> Float
roots a b = 6 * a - a * b / 2

main :: IO()
main = do
  print "This program calculates root of the following equation"
  print "2 * x/a + b - 12 = 0"
  print "Please enter A"
  input1 <- getLine
  print "Please enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ " The X = " ++ show (roots a b) ++ "!"
