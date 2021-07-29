module Main where

time :: Integer -> Maybe Integer
time x = Just $ x `div` 60

main :: IO()
main = do
  print "This program calculates minutes passed since midnight"
  print "Pls enter number of seconds"
  input1 <- getLine
  let x = read input1 :: Integer
  putStrLn $ "Result is " ++ show ( time x ) ++ " minutes!"
