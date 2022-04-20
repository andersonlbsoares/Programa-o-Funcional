ehPrimo x = foldl divisivel True[2..x-1]
    where divisivel a b = a && (mod x b /= 0)