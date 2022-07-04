countNeg :: (Ord a, Num a) => [a] -> [a]
countNeg xs = filter(\x -> x <0) xs


-- countNeg xs = lenght(filter isNeg xs)
    -- where isNeg x = x < 0

-- countNeg xs = [x | x <- xs, x <0]
