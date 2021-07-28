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

f13 :: Float -> Float -> Float -> Float
f13 a b x = a / (x - a) + (b**x + cos x ** 3) / log a ** 3 + 4.5

f14 :: Float -> Float
f14 x = (sin ((x**2 + 4) ** 3) + 4.5) / sin (x**4) ** 3

f15 :: Float -> Float -> Float
f15 m y = (m**2 + 2.8 * m + 0.355) / (cos 2*y + 3.6)

f16 :: Float -> Float -> Float -> Float
f16 t x y = (sin x ** 3 + log (2 * y + 3 * x)) / t ** e + sqrt x where
  e = exp 1

f17 :: Float -> Float -> Float -> Float -> Float
f17 a b x y = (sqrt (x + b - a) + log y) / atan (a + b)

f18 :: Float -> Float -> Float
f18 t y = (4.351 * y**3 + 2 * t * log t) / sqrt (cos (2 * y) + 4.351)

f19 :: Float -> Float -> Float -> Float -> Float -> Float -> Float
f19 a b k r x y = (k**(-a * r *x) - a * sqrt 6 - cos (3 * a * b) / sin (a * asin x + log y) ** 2)

f20 :: Float -> Float -> Float -> Float -> Float -> Float
f20 a b c x y = (tan y ** 3 + sin (x * sqrt (b - c) ** 5)) / sqrt (a - b + c)

f21 :: Float -> Float -> Float -> Float
f21 a z x = ((z + sqrt (z * x)) ** 0.2) / exp x + a**5 * atan x

f22 :: Float -> Float -> Float
f22 x y = cos (x**2 + 2) + (3.5 * x**2 + 1) / cos y ** 2

f23 :: Float -> Float -> Float -> Float -> Float
f23 a b x z = sqrt (abs x + cos x ** 3 + z**4) / (log x - asin (b * x - a))

f24 :: Float -> Float -> Float -> Float -> Float
f24 a b x z = (cos (b * x)**7 - (sin (a**2) + acos (x**3 + z**5 - a**2))) / (asin(a**2) + acos(x**7 - a**2))

f25 :: Float -> Float -> Float -> Float
f25 a x y = (cotan (a**3) ** 3 + atan a ** 2) / sqrt (y**(tan x)) where
  cotan rad = 1 / tan rad

f26 :: Float -> Float -> Float -> Float
f26 k x y = (log (x**3 + y) - y**4) / (exp y + 5.4 * k**3)

f27 :: Float -> Float -> Float -> Float -> Float
f27 a c x y = (a**5 + acos (a + x**3) - sin (y - c) ** 4 ) / (sin (x + y) ** 3 + abs (x - y))

f28 :: Float -> Float -> Float -> Float -> Float
f28 c x y z = (tan (x**4 + 6) - cos (z + x**3 * y) ** (3*x)) / cos (x**3 * c**2) ** 2

f29 :: Float -> Float -> Float -> Float
f29 d x y = (cos y ** 2 + 2.4 * d) / exp y + log (sin x **2 + 6)

f30 :: Float -> Float
f30 x = sqrt ((3 + x)**6 - log x) / exp 0 + asin (6 * x**2)

main :: IO()
main = do
  print "Please enter three float numbers"
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  let c = read input3 :: Float
  print ("Result", f04 a b)
