module Main where

f1 :: Float -> Float -> Float
f1 l t = 3 * t**2 + 3 * l**5 + 4.9

f2 :: Float -> Float -> Float
f2 p y = log (p**2 + y**3) + exp p

f3 :: Float -> Float -> Float
f3 n y = n * (y + 3.5) + sqrt y

f4 :: Float -> Float -> Float
f4 a t = 9.8 * a**2 + 5.52 * cos (t**2)

f5 :: Float -> Float
f5 x = 1.51 * cos x**2 + 2 * x**3

f6 :: Float -> Float -> Float
f6 x y = cos 2 * y + 3.6 * exp x

f7 :: Float -> Float
f7 m = m**2 + 2.58 * abs m + 0.55

f8 :: Float -> Float
f8 y = sqrt $ abs $ 6 * y**2 - 0.1 * y + 4

f9 :: Float -> Float -> Float
f9 x y = log (y + 0.95) + sin x**4

f10 :: Float -> Float -> Float -> Float
f10 k x y = exp y + 7.355 * k**2 + sin x**2

f11 :: Float -> Float -> Float
f11 x y = 9.756 * y**7 + 2 * tan x

f12 :: Float -> Float -> Float
f12 t x = 7 * t**2 + 3 * sin x**3 + 9.2

f13 :: Float -> Float
f13 y = sqrt $ abs $ 3 * y**2 + 0.5 * y + 4

f14 :: Float -> Float -> Float
f14 x y = abs $ sqrt $ sin y**2 + 6.835 + exp x

f15 :: Float -> Float
f15 y = sin (y**2) - 2.8 * y + sqrt (abs y)

f16 :: Float -> Float
f16 y = sqrt $ cos(4*y)**2 + 7.151

f17 :: Float -> Float
f17 y = 3 * y**2 + sqrt (y + 1)

f18 :: Float -> Float
f18 y = 3 * y**2 + sqrt (y**3 + 1)

f19 :: Float -> Float -> Float -> Float
f19 g n y = (y**3 + 1.09*g)**(1/n)

f20 :: Float -> Float -> Float -> Float
f20 k x y = exp (k+y) + tan x * sqrt y

f21 :: Float -> Float -> Float
f21 h y = exp (y + 5.5) + 9.1 * h**3

f22 :: Float -> Float -> Float -> Float
f22 u x y = sin(2*u) * log (2*y**2 + sqrt x)

f23 :: Float -> Float -> Float
f23 f y = exp 2*y + sin f

f24 :: Float -> Float
f24 y = 2 * sin (0.214 * y**5 +1)

f25 :: Float -> Float -> Float
f25 f y = exp 2*y + sin(f**2)

f26 :: Float -> Float
f26 p = sin(p**2 + 0.4)**3

f27 :: Float -> Float -> Float -> Float
f27 v x y = 1.03 * v + exp (2*y) + tan (abs x)

f28 :: Float -> Float -> Float
f28 h y = exp (y + h) + sqrt (abs $ 6.4 * y)

f29 :: Float -> Float
f29 y = 3 * y**2 + sqrt(abs $ y + 1)

f30 :: Float -> Float -> Float
f30 r y = exp (y + r) + 7.2 * sin r

main :: IO()
main = do
    print "Please enter two float numbers"
    input1 <- getLine
    input2 <- getLine
    let t = read input1 :: Float
    let l = read input2 :: Float
    print ("RESULT ", f1 t l)
