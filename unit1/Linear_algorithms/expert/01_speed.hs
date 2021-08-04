module Main where

velo :: Float -> Float
velo t = 3 * t**2 - 6 * t

main :: IO()
main = do
  print "This program calculates velocity in a given moment of time."
  print "Pls enter T (sec)"
  input1 <- getLine
  let t = read input1 :: Float
  putStrLn $ "The velocity V = " ++ show (velo t) ++ " m/sec"
