
import Data.List
import Data.Maybe

set xs index valor = take index xs ++ [valor] ++ drop (index + 1) xs

neib xs index lim = drop baixo . take cima $ xs
    where baixo = max 0 (index - lim)
          cima = min (length xs) (index + lim + 1)

exists y xs = isJust $ elemIndex y xs

dig2char dig = fromJust $ lookup dig $ zip [0..] "0123456789"

--  [x*2 | x <- [1..10], x*2 >= 12]  
verPos (a,b) = b 
getHoles xs = [ y | (x, y) <- zip xs [0..], x == '.']
-- getHoles (xs:x) = [ y | y <- xs!!x, x == '.']

fit (xs, lim) index valor = not . exists (dig2char valor) $ neib xs index lim

fitValues xs lim index = [v | v <- [0..lim], fit (xs, lim) index v]


localiza x y
    | y > length x - 1 = error "Posição excede o tamanho da lista"
    | otherwise = head(drop y x)