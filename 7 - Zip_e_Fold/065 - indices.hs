indices x xs = [y | (y, k) <- zip [0..] xs, k == x]


