module Main where

csq :: Float -> Float
csq r = pi * r**2

cln :: Float -> Float
cln r = 2 * pi * r

main :: IO()
main = do
  print "This program calculates area of the circle and circumference with given R"
  print "Pls enter radius R (cm)"
  input1 <- getLine
  let r = read input1 :: Float
  putStrLn $ "Area A = " ++ show (csq r)
  putStrLn $ "Circumference C = " ++ show (cln r)
