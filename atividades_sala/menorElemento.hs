menor xs = foldl menor' (head xs) xs
    where menor' x a = if x<a then x else a 