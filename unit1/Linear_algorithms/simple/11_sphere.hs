module Main where

sq :: Float -> Float
sq r = pi * r**2

vo :: Float -> Float
vo r = 4 * pi * r**3 / 3

main :: IO()
main = do
  print "This program calculates the volume of a sphere and"
  print "the square of a circle. Both of them have a same R."
  print "Pls enter radius R (cm)"
  input <- getLine
  let r = read input :: Float
  putStrLn $ "Square S = " ++ show ( sq r ) ++ " cm^2"
  putStrLn $ "Volume V = " ++ show ( vo r ) ++ " cm^3"
