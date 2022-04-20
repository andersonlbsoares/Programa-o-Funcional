contarRepetido x xs = foldl contarRepetido' 0 xs
    where contarRepetido' acc xs' = if  x == xs' then acc+1 else acc