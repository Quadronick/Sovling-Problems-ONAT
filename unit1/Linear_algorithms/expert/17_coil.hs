module Main where

w1 :: Float -> Float -> Float
w1 delW m = delW / (m**2 - 1)

i1 :: Float -> Float -> Float
i1 w l = sqrt (2 * w / l)

main :: IO()
main = do
  print "This program calculates magnetic energy initial value and electric current intensity."
  print "With given parameters."
  let delW = 4 :: Float
  let m = 2 :: Float
  let l = 0.7 :: Float
  putStrLn $ "W1 = " ++ show (w1 delW m) ++ " J"
  putStrLn $ "I1 = " ++ show (i1 (w1 delW m) l) ++ " A"
