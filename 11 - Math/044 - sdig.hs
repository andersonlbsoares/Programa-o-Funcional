sdig n = sum (map (\x -> read [x] :: Int) (show n))
-- o Show transforma um tipo em uma string
-- o Read ele lê um valor como um determinado tipo(nesse caso INT) 

main = do 
    print $ sdig 4132 -- 10
    print $ sdig 328464584658 -- 63