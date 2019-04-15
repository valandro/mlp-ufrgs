multipleTwo :: [Int] -> [Int]

multipleTwo list = filter (\x -> (x `mod` 2) == 0) list

main = print $ multipleTwo [1,2,3,4]