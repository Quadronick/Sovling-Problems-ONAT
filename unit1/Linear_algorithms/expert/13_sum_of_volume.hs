module Main where

volume :: Float -> Float
volume r = (4 * pi * r ** 3) / 3

z :: Float -> Float -> Float -> Float
z r1 r2 r3 = (v1 + v2 + v3) / 3 where
  v1 = volume r1
  v2 = volume r2
  v3 = volume r3

main :: IO()
main = do
  putStrLn "This program calculates arithmetic mean of volumes of three spheres."
  putStrLn "Please input radius R1"
  input1 <- getLine
  putStrLn "Please input radius R2"
  input2 <- getLine
  putStrLn "Please input radius R3"
  input3 <- getLine
  let radius1 = read input1 :: Float
  let radius2 = read input2 :: Float
  let radius3 = read input3 :: Float
  putStrLn $ "Result is " ++ show (z radius1 radius2 radius3) ++ " cm^3"
