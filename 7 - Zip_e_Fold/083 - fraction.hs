
reduce x y 
    | x `mod` 2 == 0 && y `mod` 2 == 0 = (reduce (x/2) (y/2))
    | x `mod` 3 == 0 && y `mod` 3 == 0 = (reduce (x/3) (y/3))
    | x `mod` 5 == 0 && y `mod` 5 == 0 = (reduce (x/5) (y/5))
    | x `mod` 7 == 0 && y `mod` 7 == 0 = (reduce (x/7) (y/7))
    | x == y = (reduce 1 1)
    | otherwise = (x,y) 
