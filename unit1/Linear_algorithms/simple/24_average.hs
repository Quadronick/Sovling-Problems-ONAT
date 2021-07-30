module Main where

geom :: Float -> Float -> Float
geom a b = sqrt ( a * b )

main :: IO()
main = do
  print "This program calculates geometric mean of a two numbers"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "The geometrical mean of " ++ show a ++ " and " ++ show b ++ " is " ++ show (geom a b)
