--Função que junta as duas funções
myMerge xs ys = ordenar $ juntar xs ys     

--Junta as listas
juntar [] xy = xy
juntar xy [] = xy
juntar (x:xs) (y:ys) = x : juntar xs (y:ys)  

--ordenar uma lista de numeros
ordenar [] = []
ordenar [x] = [x]
ordenar (x:xs) = ordenar [y | y <- xs, y <= x] ++ [x] ++ ordenar [y | y <- xs, y > x]

main = do
    print $ merge [1,3] [7,7,9] -- [1,3,7,7,9]
    print $ merge [7,7,9] [1,3] -- [1,3,7,7,9]
    print $ merge [1,3,5] [4,4,6,7] -- [1,3,4,4,5,6,7]
    print $ merge [4,4,5,6,7] [1,3] -- [1,3,4,4,5,6,7]