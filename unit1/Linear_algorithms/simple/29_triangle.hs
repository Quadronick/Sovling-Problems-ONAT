module Main where

trisq :: Float -> Float -> Float -> Float
trisq a b c = sqrt (p * (p-a) * (p-b) * (p-c)) where
  p = (a + b + c) / 2

main :: IO()
main = do
  print "This program calculates area of a triangle with given length of all its sides."
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  print "Pls input C"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  putStrLn $ "Area S =" ++ show (trisq a b c) ++ " cm^2"
