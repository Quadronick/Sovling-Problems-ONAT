module Main where

f01 :: Float -> Float -> Float -> Float
f01 a c x = (sqrt (exp x - cos(x**2 * a**5)**4) + atan(a - x**5)**4) / (abs(a + x * c**4)**1 / exp 1)

f02 :: Float -> Float -> Float -> Float
f02 c t x = cotan c ** 2 + (2 * x +5) / sqrt (c + t) where
  cotan rad = 1 / tan rad

f03 :: Float -> Float -> Float
f03 h y = (tan (y**3 - h**4) + h**2) / (sin h ** 3 + y)

f04 :: Float -> Float -> Float
f04 x y = sqrt ((2 + y)**2 + sin(y + 5)**(1/7)) / (log (x + 1) - y**3)

f05 :: Float -> Float -> Float -> Float -> Float
f05 c x y z = (tan (x**4 - 6) - cos (z + x * y)**3) / cos (x**3 * c**2) ** 4

f06 :: Float -> Float -> Float -> Float -> Float
f06 a b x y = (sqrt (x + b - a) + log y) / atan (b +a)

f07 :: Float -> Float -> Float -> Float
f07 a x y = (cos (x**3 + 6) - sin (y - a)) / log x**4 - 2 * sin x ** 5

f08 :: Float -> Float -> Float -> Float -> Float
f08 a c x y = (a**5 + sin (y - c) ** 4) / (sin (x + y)**3 + abs (x - y))

f09 :: Float -> Float -> Float -> Float
f09 d x y = (cos y ** 3 + 2**x * d) / (exp y + log (sin x ** 2 + 7.4))

f10 :: Float -> Float -> Float
f10 x y = (exp (x**3) + cos (x - 4) ** 2) / (atan x + 5.2 * y)

f11 :: Float -> Float -> Float
f11 x y = (2.33 * log (sqrt (1 + cos y ** 2))) / (exp y + sin x ** 2)

f12 :: Float -> Float -> Float -> Float
f12 a x y = (cos (abs (y + x)) ** 3 - x - y) / atan ((x + a) * x**5) ** 4




main :: IO()
main = do
  print "Please enter two float numbers"
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  print ("Result", f04 a b)
