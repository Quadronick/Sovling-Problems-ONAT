module Main where

square :: Float -> Float -> Float
square a b = a * b / 2

hypo :: Float -> Float -> Float
hypo a b = sqrt (a**2 + b**2)

main :: IO()
main = do
  print "This program calculates suqare of right triangle and its hypotenuse"
  print "with given legs: A and B"
  print "Please, enter leg A length"
  input1 <- getLine
  print "Please, enter leg B length"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "Square is " ++ show (square a b) ++ " cm^2"
  putStrLn $ "Hypotenuse length is " ++ show (hypo a b) ++ " cm"
