
reduce' x y z 
    | x `mod` z == 0 && y `mod` z == 0 = reduce' (x `div` z) (y `div` z) z
    | otherwise = (x, y)
    
menor x y= if x > y then y else x

reduce x y = (reduce' x y (menor x y))


