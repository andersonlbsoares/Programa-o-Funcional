concatena [] [] = []
concatena [] ys = ys
concatena xs [] = xs
concatena (x:xs) ys = x: concatena xs ys
