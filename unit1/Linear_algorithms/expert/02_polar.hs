module Main where

ro :: Float -> Float -> Float
ro x y = sqrt (x**2 + y**2)

tanPhi :: Float -> Float -> Float
tanPhi x y = y / x

main :: IO()
main = do
  print "This program converts Cartesian coordinates into polar ones"
  print "Pls enter X"
  input1 <- getLine
  print "Pls enter Y"
  input2 <- getLine
  let x = read input1 :: Float
  let y = read input2 :: Float
  putStrLn $ "Ro = " ++ show (ro x y)
  putStrLn $ "Tan Phi = " ++ show (tanPhi x y)
