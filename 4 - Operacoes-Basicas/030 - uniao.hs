-- une as duas listas sem repetições
uniao xs xy = xs ++ [x | x <- xy, not (elem x xs)]