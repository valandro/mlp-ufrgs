somalst :: [Int] -> Int
somalst list = foldr (+) 0 list

main = print $ somalst [2,4,6]