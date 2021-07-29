module Main where

period :: Float -> Float
period m = 2 * pi * sqrt (m / k) where
  k = 100

main :: IO()
main = do
  print "This program calculates oscillation period of a spring pendulum"
  print "Pls enter mass (kg)"
  input <- getLine
  let m = read input :: Float
  putStrLn $ "Period T = " ++ show (period m) ++ "!"
