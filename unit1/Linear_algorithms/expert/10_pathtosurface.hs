module Main where

path1 :: Float -> Float -> Float -> Float
path1 x y z = abs (4 * x - 2 * y - 0.5 * z - 5) / sqrt (4**2 + (-2)**2 + (-0.5)**2)

path2 :: Float -> Float -> Float -> Float
path2 x y z = abs (2 * x - y + 3 * z + 1) / sqrt (2**2 + (-1)**2 + 3**2)

main :: IO()
main = do
  print "This program calculates distance between given point and"
  print "two surfaces."
  print "Please enter coordinates X Y and Z respectively"
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  let x = read input1 :: Float
  let y = read input2 :: Float
  let z = read input3 :: Float
  putStrLn $ "The distance to first surface is " ++ show (path1 x y z) ++ " units!"
  putStrLn $ "The distance to second surface is " ++ show (path2 x y z) ++ " units!"
