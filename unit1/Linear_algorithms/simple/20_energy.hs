module Main where

energ :: Float -> Float -> Float
energ i l = l * i**2 / 2

main :: IO()
main = do
  print "This program calculates magnetic field energy of the circuit."
  print "Pls enter current I (A)"
  input1 <- getLine
  print "Pls enter inductance L (H)"
  input2 <- getLine
  let i = read input1 :: Float
  let l = read input2 :: Float
  putStrLn $ "Magnetic field energy W = " ++ show ( energ i l ) ++ " J"
