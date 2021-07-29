module Main where

resist :: Float -> Float -> Float -> Float
resist c l r = sqrt (r**2 + (w * l - 1 / (w * c))**2) where w = 0.2

main :: IO()
main = do
  print "This program calculates full resistance of electric circuit..."
  print "Please enter active resistance value"
  input1 <- getLine
  print "Please enter capacity value..."
  input2 <- getLine
  print "Please enter active inductance value"
  input3 <- getLine
  let r = read input1 :: Float
  let c = read input2 :: Float
  let l = read input3 :: Float
  putStrLn $ "Full resistance of this circuit is " ++ show (resist c l r) ++ " Ohms!"
