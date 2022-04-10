sublist x y xs
    |x>=0 && y>=0 = take (y-1) (drop x xs)
    |otherwise = take ((y+length(xs))-1) (drop (x+length(xs)) xs)
    -- |otherwise = reverse(take ((y*(-1))-1) (drop (x*(-1)) (reverse (xs))))
