module Main where

division :: Integer -> Maybe Integer
division x = Just $ x `div` 1024

main :: IO()
main = do
  print "This program performs conversion from bytes to Kbytes"
  print "Pls enter data size (bytes)"
  input <- getLine
  let x = read input :: Integer
  putStrLn $ "It's " ++ show ( division x ) ++ " Kbytes!"
