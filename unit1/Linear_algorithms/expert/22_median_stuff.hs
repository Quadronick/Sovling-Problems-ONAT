module Main where

mediana :: Float -> Float -> Float -> Float
mediana a b c = 0.5 * sqrt (2 * b**2 + 2 * c**2 - a**2)

main :: IO()
main = do
  print "This program calculates length of medians in a complicated (cringe) way."
  print "With given legth of the original triangles' sides"
  print "Please enter lengs of the A side"
  input1 <- getLine
  print "Please enter lengs of the B side"
  input2 <- getLine
  print "Please enter lengs of the C side"
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  let a1 = mediana a b c
  let b1 = mediana b c a
  let c1 = mediana c b a
  putStrLn $ "A median is about " ++ show (mediana a1 b1 c1) ++ " cm long"
  putStrLn $ "B median is about " ++ show (mediana b1 a1 c1) ++ " cm long"
  putStrLn $ "C median is about " ++ show (mediana c1 a1 b1) ++ " cm long"
