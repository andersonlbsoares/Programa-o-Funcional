unir xs = zip xs [0..] 
myElemIndex a xs = lookup a (unir xs) 


main = do
    print $ myElemIndex 4 [1,2,6,4,3] -- Just 3
    print $ myElemIndex 5 [1,2,6,4,3] -- Nothing
    print $ myElemIndex 4 []          -- Nothing
    print $ myElemIndex 1 [1,2,6,4,3] -- Just 0