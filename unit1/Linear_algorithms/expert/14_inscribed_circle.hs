module Main where

radius :: Double -> Double
radius s = sqrt s / 2

inscribedSq :: Double -> Double
inscribedSq r = 2 * r ** 2

main :: IO()
main = do
  putStrLn "This program calculates differences between areas of two squares"
  putStrLn "Original one and the one inscribed into circle, which is inscribed"
  putStrLn "into original square"
  putStrLn "Please input area of the original square..."
  input1 <- getLine
  let sq1 = read input1 :: Double
  putStrLn $ "Area of the inscribed square is " ++ show (inscribedSq (radius sq1)) ++ " cm^3"
  putStrLn $ "The quotient of two areas is " ++ show (sq1 / inscribedSq (radius sq1))
