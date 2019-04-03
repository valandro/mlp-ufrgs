lstvezes :: [Int] -> Int -> [Int]
lstvezes [] number = []
lstvezes list number = number * head list ++ lstvezes tail list number

main = print $ lstvezes [1,2,3,4] 2