module Main where

square :: Float -> Float -> Float -> Float
square a b h = (a + b) * h / 2

main :: IO()
main = do
  print "This program calculates the area of a trapezoid."
  print "Pls enter trapezoid height (cm)"
  input1 <- getLine
  print "Pls enter first trapezoid base (cm)"
  input2 <- getLine
  print "Pls enter second trapezoid base (cm)"
  input3 <- getLine
  let a = read input2 :: Float
  let b = read input3 :: Float
  let h = read input1 :: Float
  putStrLn $ "Total square S = " ++ show (square a b h) ++ " cm^3"
