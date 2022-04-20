contar xs = foldl contar' 0 xs
    where contar' acc xs =  acc + 1 