
-- CUSTOM SORTING
{-
import Data.List
namesToSort = [("Yenn", "Curtis"),
              ("Anus", "Psa"),
              ("Nos", "Psa"),
              ("Nikita", "Nikitanko"),
              ("Polina", "Pridnya"),
              ("Cath", "Pino")]

compareLastNames name1 name2 = if lastName1 > lastName2
                                       then GT
                                       else if lastName1 < lastName2
                                            then LT
                                            else if fst name1 > fst name2
                                                 then GT
                                                 else if fst name1 < fst name2
                                                      then LT
                                                      else EQ

  where lastName1 = snd name1
        lastName2 = snd name2


compareLastNames2 name1 name2 = if result == EQ
                                then compare (fst name1) (fst name2)
                                else result
  where result = compare (snd name1) (snd name2)
-}

-- RETURN FUNCTIONS
{-
sfOffice name = if lastName < "L"
                then nameText ++ " string 1"
                else nameText ++ " string 2"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": string 3"
  where nameText = (fst name) ++ " " ++ (snd name)

ryOffice name = nameText ++ " string 4"
  where nameText = snd name

coCoffice = nameText ++ " string5"
  where nameText = "Greetings" ++ (fst name) ++ " " ++ (snd name)

getLoc location =
  case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "ry" -> ryOffice
    "co" -> coOffice
    _ -> (\name -> (fst name) ++ " " ++ (snd name))


resultFunction name location = locationFunction name
  where locationFunction = getLoc location
-}


-- Closure in Haskell.
{- genFunc f = (\x -> Func f x ) -}
-- Захват значения в лямбда функцию называется замыканием.

{-
genURL host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey
genHostLock host = (\apiKey resource id -> genURL host apiKey resource id)
exampleLock = genHostLock "https://example.com"
genAPILock hostBuild apiKey = (\resource id -> hostBuild apiKey resource id)
exampleBuilder = genAPILock exampleLock "%api-token%"

-- usage: exampleBuilder "id" "resource"
-- output: "https://example.com/id/resource?token=%api-token%"

-}

-- Частичное применение.
{-
add4 a b c d = a + b + c + d 
addXto3 x = (\b c d -> add4 x b c d)
addXto2 x y = (\c d -> add x y c d )

mystery = add4 1
mystery 2 3 4
-- и это работает! Mystery захватила функцию add4 и значение 1.
-- и последовательно добавяет полученные 3 дополнителльных параметра.

anotherMystery = add4 1 2
anotherMystery 2 3


flipBinatyArgs binaryFunc = (\x y -> binaryFunc y x)
substructAlt = flip (-) 2
-}

{-
ifEven myFunc x = if even x
  then myFunc x
  else x

inc x = x + 1
double x = x * 2
square x = x ^ 2

ifEvenInc = ifEven inc
ifEvenDoub = ifEven double 
ifEvenSquare = ifEven square
-}

-- binPartialApplication binaryFunc arg = (\x -> binaryFunc arg x)

