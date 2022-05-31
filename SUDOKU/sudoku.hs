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
set xs index value = (take(index xs)) ++ [value] ++ (drop (index + 1) xs)

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

-- main :: IO ()
-- main = do
    -- xs <- getLine
    -- lim <- readLn :: IO Int
    -- putStrLn $ mainSolver xs lim
