module Main where

fun :: Float -> Float
fun x = x / 1024

main :: IO()
main = do
  putStrLn "This program performs conversion from bytes to Kbytes"
  putStrLn "Please enter number of bytes for conversion..."
  input <- getLine
  let x = read input :: Float
  putStrLn $ "Result is " ++ show (fun x)
