module Main where

sq :: Float -> Float -> Float
sq a b = a * b / 2

main :: IO()
main = do
  print "This program calculates square of a right triangle."
  print "Pls enter length of the one side"
  input1 <- getLine
  print "Pls enter lengs of another side"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "The square S = " ++ show (sq a b) ++ " cm^2"
