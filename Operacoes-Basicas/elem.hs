-- Retorna bool sem usar a função elem
pertence :: Eq t => t -> [t] -> Bool
pertence y [] = False
pertence y (x:xy) = y == x || pertence y xy

-- retorna o numero
pertence2 :: Eq a => a -> [a] -> [a]
pertence2 x xs = filter (\y -> x == y) xs

-- usa a propria função do haskell
pertence3 :: (Foldable t, Eq a) => a -> t a -> Bool
pertence3 x xs = elem x xs