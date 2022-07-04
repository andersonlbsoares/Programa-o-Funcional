primeiros xs
    | xs == [] = []
    | otherwise = reverse (reverse (tail xs))