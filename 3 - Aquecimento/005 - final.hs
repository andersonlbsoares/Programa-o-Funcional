-- final qntd xs = reverse (take qntd (reverse xs))



-- O $ é usado para ordem de prioridade, compliado da direta pra esquerda
-- final qntd xs = reverse $ take qntd $ reverse xs

-- ORDEM DE COMPOSIÇÃO
-- final qntd = reverse . take qntd . reverse

final qntd xs = drop (length xs - qntd) xs

-- sem usar função
-- length'[] = 0
-- length' (x:xs) = 1 + length' xs
