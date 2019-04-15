fibonacci :: Int -> Int
fibonacciList :: Int -> [Int]

fibonacciList list = take list fibonacciList where fibonacciList = map (fibonacci) [0,1..]

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = print $ fibonacciList 6