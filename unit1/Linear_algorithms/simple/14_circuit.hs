module Main where

curr :: Float -> Float -> Float
curr r1 r2 = e / (r1 + r2) where
  e = 285

main :: IO()
main = do
  print "This program calculates electric current."
  print "Pls enter resistance of the circuit itself (Ohm)"
  input1 <- getLine
  print "Pls enter resistance of the power element (Ohm)"
  input2 <- getLine
  let r1 = read input1 :: Float
  let r2 = read input2 :: Float
  putStrLn $ "The current I = " ++ show (curr r1 r2) ++ " A"
