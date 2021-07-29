module Main where

grav :: Float -> Float -> Float -> Float
grav m1 m2 r = gamma * m1 * m2 / r**2 where gamma = 6.67 * 10**(-11)

main :: IO()
main = do
  print "This program calculate gravitational pull force"
  print "Please enter mass of the first object (kg)"
  input1 <- getLine
  print "Please enter mass of the second object (kg)"
  input2 <- getLine
  print "Please enter distance between objects (m)"
  input3 <- getLine
  let m1 = read input1 :: Float
  let m2 = read input2 :: Float
  let  r = read input3 :: Float
  putStrLn $ "G = " ++ show (grav m1 m2 r) ++ " newtons!"
