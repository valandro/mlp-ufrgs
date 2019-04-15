firstN :: Int -> [Int]

firstN number = take number firstN where firstN = 2:map (^2) firstN

main = print $ firstN 6