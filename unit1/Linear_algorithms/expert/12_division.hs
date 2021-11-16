module Main where

result :: Integer -> Integer -> Integer
result a b = a `div` b

main :: IO()
main = do
  putStrLn "This program calculates how many b-size segments are contained in a-size segment"
  putStrLn "All inputs are integers!"
  putStrLn "Please, enter length of section A"
  input1 <- getLine
  print "Please, enter length of section B"
  input2 <- getLine
  let a = read input1 :: Integer
  let b = read input2 :: Integer
  putStrLn $ "The number of B segments is " ++ show (result a b)
