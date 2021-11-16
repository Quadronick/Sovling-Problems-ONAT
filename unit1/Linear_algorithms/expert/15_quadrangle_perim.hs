module Main where

distance :: [Float] -> [Float] -> Float
distance point1 point2 = sqrt ((head point2 - head point1)**2 + (point2 !! 1  - point1 !! 1)**2)

main :: IO()
main = do
  putStrLn "This program calculates perimeter of a quadrangle with"
  putStrLn "given corner coordinates"
  putStrLn "Please enter A coordinates, e.g [X, Y]"
  input1 <- getLine
  putStrLn "Please enter B coordinates, e.g [X, Y]"
  input2 <- getLine
  putStrLn "Please enter C coordinates, e.g [X, Y]"
  input3 <- getLine
  putStrLn "Please enter D coordinates, e.g [X, Y]"
  input4 <- getLine
  let a = read input1 :: [Float]
  let b = read input2 :: [Float]
  let c = read input3 :: [Float]
  let d = read input4 :: [Float]
  print $ distance a b + distance b c + distance c d + distance d a
