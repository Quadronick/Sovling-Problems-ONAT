module Main where

amperage :: Float -> Float -> Float -> Float
amperage c l u = u * sqrt ( c / l )

energy :: Float -> Float -> Float
energy i l = l * i**2 / 2

main :: IO()
main = do
  print "This program calculates amplitude of the current in the capacitor"
  print "with given parameters..."
  print "C = 10^-6 F, L = 0.04 H, U = 100 V"
  let c = 10**(-6)
  let l = 0.04
  let u = 100
  putStrLn $ "I = " ++ show (amperage c l u)
  putStrLn $ "W = " ++ show (energy (amperage c l u ) l)
