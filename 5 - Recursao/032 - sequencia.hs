--FORMA MAIS SIMPLES SEM RECURSÃO
-- sequencia x y
    -- | x == 0 = []
    -- | otherwise = x : y : sequencia (x-1) (y+1)

sequencia 0 x = []
sequencia x y = y:(sequencia (x-1) (y+1))