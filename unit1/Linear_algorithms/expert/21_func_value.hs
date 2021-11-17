module Main where

y :: Float -> Float
y x = (sh x) * tan(x + 1) - (tan (2 + sh (x -1))) where
  sh x = (exp x - exp (-x)) / 2

main :: IO()
main = do
  print "This program calculates some value with given formula and x"
  print "Please enter X"
  input <- getLine
  let x = read input :: Float
  putStrLn $ "The value is " ++ show (y x)
