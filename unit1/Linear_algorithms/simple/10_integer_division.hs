module Main where

division :: Int -> Maybe Int
division x = Just $ x `div` 100

main :: IO()
main = do
  print "This program performs integer division by 100"
  print "Pls enter distance (cm)"
  input <- getLine
  let x = read input :: Int
  putStrLn $ "Period T = " ++ show ( division x ) ++ "!"
