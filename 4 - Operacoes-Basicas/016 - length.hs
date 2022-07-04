-- caso 1
total xs = sum (map(\x -> (x/x)) xs)

--caso 2
total2 [] = 0
total2 (x:xs) = 1 + total2 xs

--caso3
total3 xs = foldl (\x2 x -> x2 + (x/x)) 0 xs