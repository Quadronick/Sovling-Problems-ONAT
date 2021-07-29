module Main where

fsum :: Float -> Float -> Float
fsum a b = a + b

fsub :: Float -> Float -> Float
fsub a b = a - b

fdiv :: Float -> Float -> Float
fdiv a b = a / b

fmul :: Float -> Float -> Float
fmul a b = a * b

main :: IO()
main = do
  print "This program performs four basic operations on two numbers"
  print "Pls enter two numbers to begin"
  input1 <- getLine
  input2 <- getLine
  let a = read input1 :: Float
  let b = read input2 :: Float
  putStrLn $ "A + B = " ++ show (fsum a b)
  putStrLn $ "A - B = " ++ show (fsub a b)
  putStrLn $ "A / B = " ++ show (fdiv a b)
  putStrLn $ "A * B = " ++ show (fmul a b)
