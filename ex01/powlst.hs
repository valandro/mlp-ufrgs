powlst :: [Int] -> Int -> [Int]
powlst list number = [x ^ number | x <- list]

main = print $ powlst [3,4,5] 2