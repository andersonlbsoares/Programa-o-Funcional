unico x [] = False 
unico x xs = length (filter (==x) xs) == 1