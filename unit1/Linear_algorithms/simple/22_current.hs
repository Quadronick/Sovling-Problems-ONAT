module Main where

ework :: Float -> Float -> Float -> Float
ework t r u = u**2 * t / r

main :: IO()
main = do
  print "This program calculates work of the current in the section of a circuit."
  print "Pls enter time passed (s)"
  input1 <- getLine
  print "Pls enter resistance (Ohm)"
  input2 <- getLine
  print "Pls enter voltage (V)"
  input3 <- getLine
  let t = read input1 :: Float
  let r = read input2 :: Float
  let u = read input3 :: Float
  putStrLn $ "Work of the current W = " ++ show ( ework t r u ) ++ " J"
