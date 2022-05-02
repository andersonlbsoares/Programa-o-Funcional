split xs n = (take n xs, xs !! n, drop (n+1) xs)

swap xs a b = inicio ++ [n2] ++ meio ++ [n1] ++ fim
    where (inicio, n1, resto) = split xs a
          (meio, n2, fim) = split resto (b-a-1)

--faz o mesmo que o de cima só que com recursão

splitAtRec' [] pos ind result = result
splitAtRec' (x:xs) pos ind result
    | ind < pos   = splitAtRec' xs pos (ind+1) (antes ++ [x], elem, depois)
    | ind == pos  = splitAtRec' xs pos (ind+1) (antes, x, depois)
    | otherwise   = splitAtRec' xs pos (ind+1) (antes, elem, depois ++ [x])
    where (antes, elem, depois) = result

splitAtRec xs pos = splitAtRec' xs pos 0 ([], 0, [])

-- faz o mesmo que os de cima só que com o fold

splitAtfold xs pos  

    