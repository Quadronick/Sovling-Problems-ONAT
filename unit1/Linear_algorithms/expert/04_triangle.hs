module Main where

squa :: Float -> Float -> Float
squa a c = 0.5 * a * sqrt (c**2 - a**2)

leg :: Float -> Float -> Float
leg s a = 2 * s / a

main :: IO()
main = do
  print "This program calculates square of triangle and it's second leg"
  print "By given leg and hypotenuse"
  print "Please enter first leg (cm)"
  input1 <- getLine
  print "Please enter hypotenuse (cm)"
  input2 <- getLine
  let a = read input1 :: Float
  let c = read input2 ::  Float
  putStrLn $ "Square is " ++ show (squa a c) ++ " cm"
  putStrLn $ "Second leg is " ++ show (leg (squa a c) a) ++ " cm"
