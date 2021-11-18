module Main where

minut :: Integer -> Integer
minut t = t `div` 60

hour :: Integer -> Integer
hour t = t `div` 3600

main :: IO()
main = do
  print "This program calculates integer amount of minutes and hours with given"
  print "INTEGER amount of seconds."
  print "Please input seconds..."
  input <- getLine
  let t = read input :: Integer
  putStrLn $ show t ++ " seconds contains " ++ show (minut t) ++ " minutes!"
  putStrLn $ show t ++ " seconds contains " ++ show (hour t) ++ " hours!"
