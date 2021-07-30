module Main where

wavei :: Float -> Float -> Float
wavei d n = 115 * (log ((2 * lambda) / (pi *d)) - 0.667) where
  lambda = 4 + 0.1 * n

main :: IO()
main = do
  print "This program wave impedance P"
  print "Pls enter d"
  input1 <- getLine
  print "Pls enter n"
  input2 <-getLine
  let d = read input1 :: Float
  let n = read input2 :: Float
  putStrLn $ "P = " ++ show (wavei d n)
