module Main where

current :: Float -> Float -> Float
current r u = u / r

main :: IO()
main = do
  print "This program calculates the electric current via Ohm's formulae"
  print "Pls enter resistance (ohm)"
  input1 <- getLine
  print "Pls enter electric voltage (v)"
  input2 <- getLine
  let r = read input1 :: Float
  let u = read input2 :: Float
  putStrLn $ "Electic current I = " ++ show (current r u) ++ " ampers !"
