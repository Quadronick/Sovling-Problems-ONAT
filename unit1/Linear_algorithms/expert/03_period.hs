module Main where

period :: Float -> Float -> Float
period c l = 2 * pi * sqrt (l * c)

freq :: Float -> Float
freq x = 1 / x

main :: IO()
main = do
  print "This program calculates oscillation period and frequency of the oscillating circuit."
  print "Pls enter C (F)"
  input1 <- getLine
  print "Pls enter L (H)"
  input2 <- getLine
  let c = read input1 :: Float
  let l = read input2 :: Float
  putStrLn $ "Period T = " ++ show (period c l)
  putStrLn $ "Frequency v = " ++ show (freq (period c l))
