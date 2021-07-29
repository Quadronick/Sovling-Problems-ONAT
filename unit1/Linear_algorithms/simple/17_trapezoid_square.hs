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
  putStrLn $ "Square S = " ++ show (sq a b alpha) ++ " cm^3."
