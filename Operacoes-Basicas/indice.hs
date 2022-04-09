
at indice (x:xs) = 
    if indice == 0 then x 
        else at (indice - 1) xs
elemento indice xs = at indice2 xs
        where len = length xs 
              indice2 = if indice < 0 then indice + len else indice