module Main where

uFormula :: Float -> Float
uFormula n = sqrt (n / (n + 1))

tFormula :: Float -> Float
tFormula n = acos (sqrt (n / (n + 1)))/  2 * pi

main :: IO()
main = do
  print "This program calculates values for the given functions"
  print "Please input N parameter"
  input <- getLine
  let n = read input :: Float
  putStrLn $ "Value of the U/Umax = " ++ show (uFormula n)
  putStrLn $ "Value of the t/T = " ++ show (tFormula n)
