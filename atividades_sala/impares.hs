impares xs = foldr fn [] xs 
    where fn x ys = if odd x then x : ys else ys 