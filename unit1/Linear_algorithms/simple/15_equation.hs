module Main where

eq :: Float -> Float
eq x = 3 * x**6 - 6 * x**2 - 7

main :: IO()
main = do
  print "This program calculates solution of the equation"
  print "Equation >> 3*x^6 - 6*x^2 - 7"
  print "Pls enter X"
  input <- getLine
  let x = read input :: Float
  putStrLn $ "Solution is " ++ show (eq x) ++ " !"
