--  triangulo aritimético
-- 1 - 1
-- 2 - 2  3
-- 3 - 4  5  6
-- 4 - 7  8  9 10
-- 5 - 11 12 13 14 15
-- 6 - 16 17 18 19 20 21
line' n = sum [1..n]
line n = [line' (n - 1) + 1.. line' n]
triangle x = [line y | y <- [1..x]]