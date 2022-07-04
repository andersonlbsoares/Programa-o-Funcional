mynub [] = []                               -- caso base
mynub (x:xs) = x : mynub (filter (/=x) xs)  -- caso recursivo
