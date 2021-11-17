module Main where

bisector :: Float -> Float -> Float -> Float
bisector a b c = (1 / (b + c)) * sqrt (b * c * (a + b + c) * (b + c - a))

main :: IO()
main = do
  print "This program calculates the length of the angle bisector with"
  print "given lengths of triange sides."
  print "Please enter length of side A"
  input1 <- getLine
  print "Please enter length of side B"
  input2 <- getLine
  print "Please enter length of side C"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  putStrLn $ "The length of the A agnle bisector is " ++ show (bisector a b c) ++ " cm!"
  putStrLn $ "The length of the B agnle bisector is " ++ show (bisector b c a) ++ " cm!"
  putStrLn $ "The length of the C agnle bisector is " ++ show (bisector c b a) ++ " cm!"
