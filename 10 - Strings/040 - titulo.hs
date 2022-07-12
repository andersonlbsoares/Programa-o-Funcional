import Data.Maybe 

alfabeto = zip['a'..'z']['A'..'Z']
 
upar char
    | elem char ['a'..'z'] = fromJust (lookup char alfabeto)
    | otherwise = char

upper string = map upar string

--------------------------------------------------------------------------------
alfabeto2 = zip['A'..'Z']['a'..'z']
 
lowar char
    | elem char ['A'..'Z'] = fromJust (lookup char alfabeto2)
    | otherwise = char

lower string = map lowar string
--------------------------------------------------------------------------------

uparInicio (x:xs) 
    |null(x:xs) = []
    |null(xs) = (upar (head x)) : (tail x)
    |otherwise = (upar (head x)) : (tail x) ++ " " ++ uparInicio xs

titulo string = function $ lower string
    where function string = uparInicio (words string) 


