module Main where

conversion :: Float -> Float
conversion x = (x - 32) * 5 / 9

main :: IO()
main = do
  print "This program performs conversion from Fahrenheit <-> Celsius"
  print "Pls enter temerature in F"
  input1 <- getLine
  let x = read input1 :: Float
  putStrLn $ "It's " ++ show (conversion x) ++ " in Celsius"
