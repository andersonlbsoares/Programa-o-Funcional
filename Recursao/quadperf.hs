quadperfaux a n
    | a * a == n = True
    | a * a > n = False
    | otherwise = quadperfaux (a + 1) n
    
quadperf n = quadperfaux 1 n