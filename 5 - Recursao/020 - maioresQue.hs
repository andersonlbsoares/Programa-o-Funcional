maioresQue x [] = []
maioresQue x (y:ys) = 
    if (y > x) 
        then 
            y:maioresQue x ys 
        else maioresQue x ys