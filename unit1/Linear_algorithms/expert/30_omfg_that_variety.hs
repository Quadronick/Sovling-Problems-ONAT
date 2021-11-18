module Main where

rent :: Float -> Float -> Float
rent prof cost = prof / cost * 100

main :: IO()
main = do
  print "This program calculates cost-effectiveness of a random business"
  print "You have to input company cost and profit"
  print "Please input Cost"
  input1 <- getLine
  print "Please input Profit"
  input2 <- getLine
  let prof = read input2 :: Float
  let cost = read input1 :: Float
  putStrLn $ "The result is " ++ show (rent prof (cost * 0.95))
