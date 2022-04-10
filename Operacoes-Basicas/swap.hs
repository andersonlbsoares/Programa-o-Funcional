    -- if ((x >= length(xs)) && (y >= length(xs)))
    --Não consegui fazer o if acima 
swap xs x y = 
            ini ++ troca2 ++ meio ++ troca1 ++ fim
            where
            ini = take x xs
            troca1 = take 1 (drop x xs) 
            troca2 = take 1 (drop y xs) 
            meio = take (y - x-1) (drop (x+1) xs)
            fim = drop (y + 1) xs
    