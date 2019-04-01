double :: [Int] -> [Int]
double list = map (*2) list

main = print $ double [2,4,6]