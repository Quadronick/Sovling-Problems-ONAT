module Main where

modX :: Float -> Float -> Float
modX x1 x2 = sqrt (x1**2 + x2**2)

scalX :: Float -> Float -> Float -> Float -> Float
scalX a1 a2 b1 b2 = a1 * b1 + a2 * b2

main :: IO()
main = do
  print "This program calculates cosinus of an angle between two given vectors"
  print "Please enter Vector1 A1"
  input1 <- getLine
  print "Please enter Vector1 A2"
  input2 <- getLine
  print "Please enter Vector2 B1"
  input3 <- getLine
  print "Please enter Vector2 B2"
  input4 <- getLine
  let a1 = read input1 :: Float
  let a2 = read input2 :: Float
  let b1 = read input3 :: Float
  let b2 = read input4 :: Float
  putStrLn $ "Cos = " ++ show (scalX a1 a2 b1 b2 / (modX a1 a2 * modX b1 b2))
