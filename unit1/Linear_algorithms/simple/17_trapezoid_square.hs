module Main where

sq :: Float -> Float -> Float -> Float
sq a b alpha = a * b / sin alpha

main :: IO()
main = do
  print "This program calculated square of a isosceles trapezoid."
  print "Pls enter base (cm)"
  input1 <- getLine
  print "Pls enter another base (cm)"
  input2 <- getLine
  print "Pls enter an angle (rad)"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let alpha = read input3 :: Float
  putStrLn $ "Square S = " ++ show (sq a b alpha) ++ " cm^3."
