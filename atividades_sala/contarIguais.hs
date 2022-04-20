encontrarRepetido (acc, x) y = if x == y then (acc+1,y) else (acc, y)

contarIguais(x:xs) = fst $ foldl encontrarRepetido (0,x) xs