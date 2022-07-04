--usado recursão retorne os x menores elementos de uma lista
menores x [] = []
menores x (xy:y) = 
    if x > 0 
        then xy:menores (x-1) y 
    else menores x y