import Data.Maybe 

alfabeto = zip['a'..'z']['A'..'Z']
 
upar char
    | elem char ['a'..'z'] = fromJust (lookup char alfabeto)
    | otherwise = char

upper string = map upar string

main = do
    print $ upper "abc" -- "ABC"
    print $ upper "a Casa Caiu" -- "A CASA CAIU"
    print $ upper "tenho 45 ABCs" -- "TENHO 45 ABCS"



