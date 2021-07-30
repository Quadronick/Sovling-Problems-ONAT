module Main where

arime :: Float -> Float -> Float -> Float
arime a b c = (a**2 + b**2 + c**2) / 3

main :: IO()
main = do
  print "This program calculates arithmetic mean of a tree numbers"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  print "Pls enter C"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  putStrLn $ "Arithmetic mean of those tree numbers is " ++ show (arime a b c)
