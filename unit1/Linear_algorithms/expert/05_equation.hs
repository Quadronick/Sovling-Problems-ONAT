module Main where

discr :: Float -> Float -> Float -> Float
discr a b c = b**2 - 4 * a * c

root1 :: Float -> Float -> Float -> Float
root1 a b d = ( -b + sqrt d ) / 2 * a

root2 :: Float -> Float -> Float -> Float
root2 a b d = ( -b - sqrt d ) / 2 * a

main :: IO()
main = do
  print "This program calculates roots of quadratic equation"
  print "Please enter only coefficients which leads to positive D"
  print "Enter A"
  input1 <- getLine
  print "Enter B"
  input2 <- getLine
  print "Enter C"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  putStrLn $ "First root is " ++ show (root1 a b (discr a b c))
  putStrLn $ "Second root is " ++ show (root2 a b (discr a b c))
