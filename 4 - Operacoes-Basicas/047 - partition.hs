
splitints fn xs = (func1 fn xs ,func2 fn xs) 

func1 fn [] = []
func1 fn (x:xs)
    | fn x == True = x : func1 fn xs
    | otherwise = func1 fn xs


func2 fn [] = []
func2 fn (x:xs)
    | fn x == False = x : func2 fn xs
    | otherwise = func2 fn xs


main = do
    print $ splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
    print $ splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])