
at' xs 0 = head xs
at' (x:xs) n = at xs (n-1)


at xs ind = at' xs ind2
    where 
        ind2 = mod ind $ length xs