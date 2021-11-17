module Main where

mediana :: Float -> Float -> Float -> Float
mediana a b c = 0.5 * sqrt (2 * b**2 + 2 * c**2 - a**2)

main :: IO()
main = do
  print "This program calculates length of all medians of a given triagle"
  print "With given legth of the sides"
  print "Please enter lengs of the A side"
  input1 <- getLine
  print "Please enter lengs of the B side"
  input2 <- getLine
  print "Please enter lengs of the C side"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  putStrLn $ "A median is about " ++ show (mediana a b c) ++ " cm long"
  putStrLn $ "B median is about " ++ show (mediana b a c) ++ " cm long"
  putStrLn $ "C median is about " ++ show (mediana c a b) ++ " cm long"
