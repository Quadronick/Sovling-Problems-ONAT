module Main where

bmr :: [Char] -> Float -> Float -> Float -> Float
bmr sex age mass height
    | sex == "Male" = 5 + 10 * mass + 6.25 * height - 5 * age
    | sex == "Female" = 10 * mass + 6.25 * height - 5 * age - 161
    | otherwise = 0

bmi :: Float -> Float -> Float
bmi mass height = (1.3 * mass) / ((height / 100 )** 2.5)

bmiHuman :: Float -> String
bmiHuman index
    | index < 15                    = "Very severely underweight"
    | index >= 15   && index < 16   = "Severely underweight"
    | index >= 16   && index < 18.5 = "Underweight"
    | index >= 18.5 && index < 25   = "OK"
    | index >= 25   && index < 30   = "Overweight"
    | index >= 30   && index < 25   = "Obese Class I (Moderately obese)"
    | index >= 35   && index < 40   = "Obese Class II (Severely obese)"
    | index >= 40                   = "Obese Class III (Very severely obese)"
    | otherwise                     = "Undefined"


main :: IO()
main = do
    print "Gender? [Male/Female]"
    gender <- getLine
    print "Age? [Years]"
    input2 <- getLine
    print "Body mass? [Kg]"
    input3 <- getLine
    print "Height? [Cm]"
    input4 <- getLine
    let age = read input2 :: Float
    let mass = read input3 :: Float
    let height = read input4 :: Float
    print ("BMR ::> ", bmr gender age mass height, " KCal")
    print ("BMI ::> ", bmi mass height)
    print $ bmiHuman(bmi mass height)