    euler1 x = sum[x | x <- [1..x], (mod x 3 == 0 || mod x 5 == 0)]

