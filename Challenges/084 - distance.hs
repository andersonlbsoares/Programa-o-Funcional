import Data.List
import Data.Maybe

-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop liminferior $ take limsuperior xs
    where liminferior = index - lim
          limsuperior = index + lim + 1

-- verifica se o valor existe no vetor
exists :: Eq a => a -> [a] -> Bool
exists y xs = elem y xs

-- converte de digito para char
dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = fromJust $ lookup dig $ zip [0..] "0123456789"

-- verifica se esse valor pode ser inserido nesse índice
fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index valor = if ((exists (dig2char valor)(neib xs index lim)) == True) then False else True

-- pega as posições de todos os .
getHoles :: String -> [Int]
getHoles xs = [ y | (x, y) <- zip xs [0..], x == '.']

-- insere esse valor nesse index e retorna o novo vetor resultante
set :: String -> Int -> Int -> String
set xs index value = (take index xs) ++ [dig2char value] ++ (drop (index + 1) xs)
--segue abaixo a representação

-- tenta resolver o problema para essa posição
-- se é possível resolver, retorna Just resposta, senão Nothing
-- problema (xs, lim)
-- holes: lista de posições a serem preenchidas
-- hindex: posicao atual no vetor de holes
-- solve :: (String, Int) -> [Int] -> Int -> Maybe String
-- solve (xs, lim) holes hindex = ...

-- prepara a entrada para a função recursiva de resolução
-- mainSolver :: String -> Int -> String
-- mainSolver xs lim = ...


-- functest xs lim pos = zip [0..] (foldl (\acc x -> acc ++ [fit (xs, lim) ((getHoles xs)!!pos) x]) [] [0..lim])
-- resto xs lim pos = [fst x | x <- possiveis, snd x]
--     where possiveis = funcaux xs lim pos





solve :: (String, Int) -> [Int] -> Int -> Maybe String
solve (xs, lim) holes holePosicao
    | length holes          == holePosicao    = Just xs             --caso base, todos os holes foram preenchidos
    | length restantes      == 0              = Nothing             --não há mais valores possíveis
    | length selecionados   == 0              = Nothing  
    | otherwise                               = head selecionados   --seleciona o primeiro valor válido
    where
        selecionados = [x | x <- variantes, isJust x] -- seleciona os valores válidos, me retorna uma lista de Maybe String, se não houver nenhum valor válido, retorna []
        variantes    = [solve (set xs (holes!!holePosicao) r, lim) holes (holePosicao+1) | r <- restantes] --lista de todos os valores possíveis para o buraco, me retorna uma lista de Maybe String
        restantes    = [fst x | x <- possiveis, snd x] -- me uma lista de valores possíveis 
        possiveis    = zip [0..] (foldl (\acc x -> acc ++ [fit (xs, lim) (holes!!holePosicao) x]) [] [0..lim]) --lista de todos os valores possíveis para o buraco, me retorna uma lista de tuplas (valor, booleano)



mainSolver :: String -> Int -> String
mainSolver xs lim = fromJust $ solve (xs, lim) (getHoles xs) 0


main :: IO ()
main = do
    -- xs <- getLine
    -- lim <- readLn :: IO Int
    -- putStrLn $ mainSolver xs lim
    print $ mainSolver "01.2." 3 == "01320"
    print $ mainSolver ".0..231..5" 5 == "1045231045"
    print $ mainSolver "2..0..............3..........." 3 == "213021302130213021302130213021"
    print $ mainSolver "0..32..41." 5 == "0413250413"
    print $ mainSolver "9....7.620.5318....." 9 == "95318746209531874620"