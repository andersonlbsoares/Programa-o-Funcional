--lista de todos os numeros primos até n
primo x
    | x == 1 = False
    | x == 2 = True
    | x == 3 = True
    | x == 5 = True
    | x == 7 = True
    | otherwise =
        if (mod x 2 == 0)
            then False
            else if (mod x 3 == 0)
                then False
                else if (mod x 5 == 0)
                    then False
                    else if (mod x 7 == 0)
                        then False
                        else True

primoo = zip [0..] (primo <$> [0..])

ehPrimo x = snd (primoo !! x)
--lista de todos os numeros primos até n
primos x = takeWhile(<= x)$ filter (ehPrimo) [0..x]

factors x = reverse $ compac $ factors' x []

factors' x ys
    | x > 1 = factors' (x `div` (primeiroDivisivel x (primos x))) [(primeiroDivisivel x (primos x))]++ys
    | otherwise = ys

primeiroDivisivel y (x:xs)
    |   y `mod` x == 0 = x
    |   otherwise = primeiroDivisivel y xs


pegarIguais xs = takeWhile (== head xs) xs

compac xs 
    |xs == [] = []
    |otherwise = ( head (pegarIguais xs), length (pegarIguais xs) ) : compac (drop (length (pegarIguais xs)) xs)
    
main = do
    print $ factors 36 == [(2,2),(3,2)]
    print $ factors 50 == [(2,1),(5,2)]
    print $ factors 78 == [(2,1),(3,1),(13,1)]
    print $ factors 60 == [(2,2),(3,1),(5,1)]
    print $ factors 3361743 == [(3,4),(7,3),(11,2)]