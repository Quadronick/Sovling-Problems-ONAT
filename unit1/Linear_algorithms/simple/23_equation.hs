module Main where

equation :: Float -> Float
equation x = 8 * (x-3)**6 - 7 * (x-3)**3 + 27

main :: IO()
main = do
  print "This program calculates a numerical value of the equation."
  print "Pls enter value of the X"
  input1 <- getLine
  let x = read input1 :: Float
  putStrLn $ "Result is " ++ show (equation x) ++ "!"
