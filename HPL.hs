{-# LANGUAGE MultiWayIf #-}



-- HPL lessons
-- [FUNCTIONS]

{-
main :: IO()
main = putStrLn "Hello world"
-}

{-
square :: Float -> Float
square x = x ^ 2

main :: IO ()
main = print $ square 5
-}

{-
add :: Num a => a -> a -> a
add x y = x + y
main :: IO()
-- main = print $ add 25 50
main = print $ 25 `add` 55
-}

-- [TYPES]

--a,b,c :: Float
--Leagal statement.

{-
main :: IO()
main = do
    print (minBound :: Int)
    print (maxBound :: Int)
-}

--func :: (a -> b) -> [a] -> [b]
--Recieve Func and a List, returns List.

-- [CONDITIONS]
-- HEAD

--func :: Int -> String
--main :: IO()
--main = print $ func 2

--1
{- IMPERATIVE style
func option = if option == 1
    then "String one!"
    else if option == 2
        then "String two!"
        else "Undefined"
-}

--2 CASE style
{-
func option = case option of
    1 -> "String one!"
    2 -> "String two!"
    _ -> "Undefined"
-}

--3 PATTERN matching
{-
func 1 = "String one"
func 2 = "String two"
func _ = "Undefined"
-}

--4 Func agrument and condition
{-
func option | option == 1 = "String one!"
func option | option == 2 = "String two!"
func _ = "Undefined"
-}

--5 GUARDS
{-
func option
    | option == 1 = "String one"
    | option == 2 = "String twi"
    | otherwise = "Undefined"
-}

--6 GUARDS with IF
{-
func option = if
    | option == 1 -> "String one"
    | option == 2 -> "String two"
    | otherwise -> "Undefined"
-}

-- [LET AND WHERE]

{-
func :: Int -> String
func x = case x of
    1960 -> "1-9-6-0"
    1970 -> "1-9-7-0"
    1980 -> "1-9-8-0"
    1990 -> "1-9-9-0"
    otherwise -> "Fuck you"
-}

--main = let year = 1970 in print $ func year
-- OR
--main = print $ func year where year = 1990

-- [LISTS]
-- '' are for CHARS
-- "" are for STRINGS

-- main = print $ ['a'..'z'] !! 5
-- (!!) возвращает элемент списка.

--main :: IO()
--main = print [ x^3 | x <- [1..5], x `mod` 3 == 0]
-- генератор списков

--main = [if x `mod` 2 == 0 then "Hello!" else "Fuck you!" | x <- [1..25]]
-- условия в генераторах списков
