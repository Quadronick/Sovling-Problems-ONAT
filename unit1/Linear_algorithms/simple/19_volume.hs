module Main where

vcyl :: Float -> Float -> Float
vcyl h r = pi * r**2 * h

vcon :: Float -> Float -> Float
vcon h r = pi * r**2 * h / 3

main :: IO()
main = do
  print "This program calculates volume of a cylinder and a cone"
  print "shared the same radius and height."
  print "Pls enter radius (cm)"
  input1 <- getLine
  print "Pls enter height (cm)"
  input2 <- getLine
  let r = read input1 :: Float
  let h = read input2 :: Float
  putStrLn $ "Cylinder volume is " ++ show ( vcyl h r ) ++ " cm^3"
  putStrLn $ "Cone volume is " ++ show ( vcon h r ) ++ " cm^3"
