module Main where

volume :: Float -> Float -> Float -> Float
volume a b h = h * (square a + sqrt (square a * square b) + square b) / 3 where
  square x = x ** 2

main :: IO()
main = do
  print "This program calculates volume of a square truncated pyramid."
  print "with given sides and height"
  print "Please input length of the A side"
  input1 <- getLine
  print "Please input length of the B side"
  input2 <- getLine
  print "Please input height"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let h = read input3 :: Float
  putStrLn $ "Resulting volume is = " ++ show (volume a b h)
