myfilter _ [] = []
myfilter fn (x:xs) = 
    if fn x == True
        then x : myfilter fn xs
        else myfilter fn xs
