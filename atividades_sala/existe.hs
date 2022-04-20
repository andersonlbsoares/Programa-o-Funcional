existe x xs = foldl existe' False xs
    where existe' y xs = if y == True 
                            then True
                        else
                            if x /= xs then False else True