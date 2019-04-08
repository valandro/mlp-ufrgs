lstvezes :: [Int] -> Int -> [Int]

lstvezes list number = (number * head (list)) ++ (lstvezes (tail list) number)

main = print $ lstvezes [1,2,3,4] 2