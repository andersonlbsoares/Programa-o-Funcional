iguais :: (Eq a, Num p) => a -> a -> a -> p
iguais x y z =
    if x == y && y == z then 3
    else if x == y || y == z then 2
    else if x == z || z == y then 2
    else 1

