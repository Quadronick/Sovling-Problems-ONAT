module Main where

f01 :: Float -> Float -> Float
f01 f y = (exp 2*y + sin f)/log (3.8 * y + f)

f02 :: Float -> Float -> Float
f02 d y = log d + (3.5 * d**2 + 1)/cos 2*y

f03 :: Float -> Float -> Float
f03 k y = (log(k-y) + y**4)/(exp y + 2.355 * k**2)

f04 :: Float -> Float -> Float
f04 w y = (9.33 * w **2 + sqrt w)/(log(y + 3.5) + sqrt y)

f05 :: Float -> Float -> Float -> Float
f05 a t y = (7.8 * a**2 + 3.52 * t)/(log (a + 2*y) + exp y)

f06 :: Float -> Float -> Float
f06 i y = (0.81 * cos i)/(log y + 2 * i**3)

f07 :: Float -> Float -> Float
f07 m y = (m**2 + 2.8 * m + 0.355)/(cos 2*y + 3.6)

main :: IO()
main = do
  print "Pls input arguments to perform calculations."
  input1 <- getLine
  input2 <- getLine
  let f = read input1 :: Float
  let y = read input2 :: Float
  print ("RESULT is ", f01 f y)