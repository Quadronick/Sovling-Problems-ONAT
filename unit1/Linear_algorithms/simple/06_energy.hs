module Main where

energ :: Float -> Float
energ a = (2 * pi**2 * a**2 * m) / t**2 where
  t = 2
  m = 0.2

main :: IO()
main = do
  print "This program calculates the energy of a material point."
  print "Period eq 2 and mass is 0.2 kg"
  print "Pls enter amplitude A"
  input <- getLine
  let a = read input :: Float
  putStrLn $ "Energy W = " ++ show (energ a) ++ " J"
