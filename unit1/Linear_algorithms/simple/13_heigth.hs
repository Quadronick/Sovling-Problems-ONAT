module Main where

hi :: Float -> Float
hi a = sqrt 3 * a / 2

main :: IO()
main = do
  print "This program calculates height of a right triangle."
  print "Pls enter length one of it's  side"
  input1 <- getLine
  let a = read input1 :: Float
  putStrLn $ "The height = " ++ show (hi a) ++ " cm"
