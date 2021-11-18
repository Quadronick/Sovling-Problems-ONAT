module Main where

volume :: Float -> Float -> Float -> Float
volume r1 r2 h = h * (square r1 + sqrt (square r1 * square r2) + square r2) / 3 where
  square x = pi * x ** 2

main :: IO()
main = do
  print "This program calculates volume of a square truncated cone."
  print "with given radiuses and height"
  print "Please input radius of the mount."
  input1 <- getLine
  print "Please input radius of the top."
  input2 <- getLine
  print "Please input height"
  input3 <- getLine
  let r1 = read input1 :: Float
  let r2 = read input2 :: Float
  let h = read input3 :: Float
  putStrLn $ "Resulting volume is = " ++ show (volume r1 r2 h)
