--frequência usando filtro
frequencia x xs = length (filter (==x) xs)

--frequência usando recursão
frequenciaRec x xs
    | xs == [] = 0
    | x == (head xs) = 1 + frequenciaRec x (tail xs)
    | otherwise = frequenciaRec x (tail xs)

--frequência usando compreensão de lista
frequenciaComp x xs = length [y | y <- xs, y == x]


--frequência usando foldl
frequenciaFold x xs = foldl (\a y -> if y == x then a + 1 else a) 0 xs