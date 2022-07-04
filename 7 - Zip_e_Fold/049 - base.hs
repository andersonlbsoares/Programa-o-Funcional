--mudança de base com zip

text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
pegarValor x = (text !! x)

-- vetor y = zip [0..] alf
    -- where alf = map (\x -> x) (take y text)
-- base x y = snd ((vetor y) !! x)

base 0 b = []
base n b = base (n `div` b) b ++ [pegarValor (n `mod` b)]