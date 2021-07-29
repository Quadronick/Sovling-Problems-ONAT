module Main where

tsqua :: Float -> Float -> Float
tsqua a b = a * b

tperi :: Float -> Float -> Float
tperi a b = 2 * (a + b)

main :: IO()
main = do
  print "This program calculates perimeter and square of"
  print "a rectangle with given sides a and b"
  print "Pls enter one side (cm)"
  input1 <- getLine
  print "Pls enter another side (cm)"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "Square S = " ++ show ( tsqua a b ) ++ " cm^2"
  putStrLn $ "Perimeter P = " ++ show ( tperi a b ) ++ " cm"
