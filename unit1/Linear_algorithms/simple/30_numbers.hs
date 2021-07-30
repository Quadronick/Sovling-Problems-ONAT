module Main where

arithmean :: Float -> Float -> Float
arithmean a b = (a**3 + b**3) / 2

geomemean :: Float -> Float -> Float
geomemean a b = sqrt ( abs a * abs b )

main :: IO()
main = do
  print "This program calculates (a**3 + b**3) / 2"
  print "and sqrt ( abs a * abs b ) for literally no reason"
  print "Pls enter A"
  input1 <- getLine
  print "Pls enter B"
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "Result of the first equation is  " ++ show (arithmean a b)
  putStrLn $ "Result of the second is " ++ show (geomemean a b)
