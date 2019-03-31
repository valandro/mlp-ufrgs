lstvezes :: [Int] -> Int -> [Int]
lstvezes list number = [x * number | x <- list]

main = print $ lstvezes [1,2,3,4] 2