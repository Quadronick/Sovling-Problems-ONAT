module Main where

outerR :: Float -> Float -> Float
outerR n a = a / (2 * sin ( pi / n ))

innerR ::Float -> Float -> Float
innerR n a = a / ( 2 * tan ( pi / n ))

main :: IO()
main = do
  print "This program calculates length of the circumscribed"
  print "and inscribed into polygon circle"
  print "Please enter N (polygon sides number)"
  input1 <- getLine
  print "Please input A (side length)"
  input2 <- getLine
  let n = read input1 :: Float
  let a = read input2 :: Float
  putStrLn $ "Outer radius " ++ show (outerR n a)
  putStrLn $ "Inner radius " ++ show (innerR n a)
