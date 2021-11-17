module Main where

z :: Float -> Float -> Float -> Float
z v1 v2 v3 = (r1 + r2 + r3) / 3 where
  r1 = ((3 * v1) / (4 * pi)) ** (1 / 3)
  r2 = ((3 * v2) / (4 * pi)) ** (1 / 3)
  r3 = ((3 * v3) / (4 * pi)) ** (1 / 3)

main :: IO()
main = do
  print "This program calculates value of the given formula."
  print "You have to provide radiuses."
  print "Please enter value of radius one"
  input1 <- getLine
  print "Please enter value of radius two"
  input2 <- getLine
  print "Please enter value of radius three"
  input3 <- getLine
  let v1 = read input1 :: Float
  let v2 = read input2 :: Float
  let v3 = read input3 :: Float
  putStrLn $ "The final value is " ++ show (z v1 v2 v3) ++ " cm"
