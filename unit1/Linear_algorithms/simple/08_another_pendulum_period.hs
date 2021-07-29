module Main where

period :: Float -> Float
period l = 2 * pi * sqrt (l / g) where
  g = 9.8

main :: IO()
main = do
  print "This program calculates oscillation period of a math pendulum"
  print "Pls enter length (m)"
  input <- getLine
  let l = read input :: Float
  putStrLn $ "Period T = " ++ show (period l) ++ "!"
