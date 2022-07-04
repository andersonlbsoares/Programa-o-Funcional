intercalRec xs xy
    | xs == [] = xy
    | xy == [] = xs
    | otherwise = intercalRec (init xs) (init xy) ++ [last xs] ++ [last xy]