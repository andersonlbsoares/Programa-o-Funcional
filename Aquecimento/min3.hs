min3 a b c
    | a < b && b < c = a
    | b < a && a < c = b
    | c < a && a < b = c
    | a == b && b < c = b
    | a == c && c < b = c
    | b == c && c < a = c
    | a == b && b == c = a
    | otherwise = a

