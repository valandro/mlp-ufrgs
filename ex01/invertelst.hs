invertelst :: [Int] -> [Int]

invertelst [] = []
invertelst x = last x : invertelst (init x)

main = print $ invertelst [1,2,3,4,5]