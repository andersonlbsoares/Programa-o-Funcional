mymap _ [] = []                      -- caso base    
mymap fn (x:xs) = fn x : mymap fn xs -- caso recursivo


