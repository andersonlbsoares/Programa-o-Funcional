tails [] = [[]]                     -- caso base
tails (x:xs) =  [x:xs] ++ tails(xs) -- caso recursivo

