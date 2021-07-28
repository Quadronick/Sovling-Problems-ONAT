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

f08 :: Float -> Float -> Float
f08 t y = (2.37 * sin(t + 1))/sqrt(4 * y**2 - 0.1 * y +5)

f09 :: Float -> Float -> Float
f09 w y = ((y + 2 * w)**3)/log (y + 0.75)

f10 :: Float -> Float -> Float
f10 t y = (2 * t + y * cos t)/sqrt (y + 4.831)

f11 :: Float -> Float -> Float
f11 n y = y**2 + (0.5 * n + 4.8)/sin y

f12 :: Float -> Float -> Float
f12 t y = (sin (2 * t + 1)**2 + 0.3)/log (t + y)

f13 :: Float -> Float -> Float
f13 h y = (sin (2 * y + h) + h**3)/(exp h + y)

f14 :: Float -> Float -> Float
f14 h y = (exp (y + 2.5) + 7.1 * h**3)/log (sqrt (y + 0.04 * h))

f15 :: Float -> Float -> Float
f15 j y = 2 * sin (0.345 * y + 1)/log (y + 2 *j)

f16 :: Float -> Float -> Float -> Float
f16 r t y = (4 * t**3 + log r)/(exp (y + r) + 7.2 * sin r)

f17 :: Float -> Float -> Float
f17 n y = (y**2 - 0.8 * y + sqrt y)/(23.1 * n**2 + cos n)

f18 :: Float -> Float -> Float
f18 k y = sqrt (sin y ** 2 + 6.835)/(log (y + k) + 3 * y**2)

f19 :: Float -> Float -> Float
f19 q y = log (0.7 * y +  2 * q)/sqrt (3 * y **2 + 0.5 * y + 4)

f20 :: Float -> Float -> Float -> Float
f20 l t y = (2 * t**2 + 3 * l + 7.2)/log (y + exp (2 *l))

f21 :: Float -> Float -> Float -> Float -> Float
f21 d k p x = sqrt (k + 2.6 * p * sin k)/(x - d**3)

f22 :: Float -> Float -> Float
f22 t y = (4.351 * y**3 + 2 * t * log t)/sqrt (cos 2*y + 4.351)

f23 :: Float -> Float -> Float
f23 d y = (sin y ** 2 + 0.3 * d)/(exp y + log d)

f24 :: Float -> Float -> Float
f24 k y = log (2 * k + 4.3)/(exp (k+y) + sqrt y)

f25 :: Float -> Float -> Float
f25 c t = cos c ** 2 + (3 * t**2  + 4)/sqrt (c + t)

f26 :: Float -> Float -> Float
f26 u y = (sin 2 * u)/log (2 * y + u)

f27 :: Float -> Float -> Float
f27 p y = sin(p + 0.4) ** 2/(y**2 + 7.325 * p)

f28 :: Float -> Float -> Float
f28 v y = (0.004 * v + exp (2 * y))/ exp (y / 2)

f29 :: Float -> Float -> Float
f29 h y = (0.355 * h**2 - 4.355)/(exp (y + h) + sqrt (2.7 * y))

f30 :: Float -> Float -> Float
f30 p y = (3 * y**2 + sqrt (y +1))/(log (p +y) + exp p)

main :: IO()
main = do
  print "Pls input arguments to perform calculations."
  input1 <- getLine
  input2 <- getLine
  let f = read input1 :: Float
  let y = read input2 :: Float
  print ("RESULT is ", f01 f y)
