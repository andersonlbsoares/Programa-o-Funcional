-- cM fn x = fn x
-- cM fn xs = fn last xs ++ cM fn (tail xs)

concatmap fn xs = foldl (++) [] (map fn xs)