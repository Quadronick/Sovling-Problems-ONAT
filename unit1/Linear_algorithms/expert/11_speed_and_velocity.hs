module Main where

path :: Float -> Float
path t = t ** 3 - sqrt t

speed :: Float -> Float
speed t = 3 * t ** 2 - 1 / sqrt t

main :: IO()
main = do
  print "This program calculates path and velocity of and object with"
  print "given movement law and moment of time t"
  print "Please enter t"
  input <- getLine
  let t = read input :: Float
  putStrLn $ "Speed at " ++ show t ++ " sec is " ++ show (speed t) ++ " m/sec"
  putStrLn $ "Distance covered at " ++ show t ++ " sec is " ++ show (path t) ++ "  m"
