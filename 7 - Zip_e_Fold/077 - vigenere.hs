import Data.Maybe (fromJust)

alfabeto = zip ['A'..] [0..]

aumentarString a b = last $ take (length a) $ take (length a) <$> iterate (++b) b
zippar vet1 vet2 = zip vet1 (aumentarString vet1 vet2)

unir' acc tupla = acc ++ [(fromJust $ lookup (fst tupla) alfabeto) + (fromJust $ lookup (snd tupla) alfabeto)]
unir vet = foldl unir' [] vet

buscar acc elemento = acc ++ [fst $ alfabeto !! (elemento `mod` 26)]
codificar vet = foldl buscar [] vet

vigenere vet1 vet2 =  codificar $ unir (zippar vet1 vet2)


-- vet1 (ANDERSON)
-- vet2 (ABABABAB)
-- vet3 (AODFRTOO)

main = do
    print $ vigenere "ATACARBASESUL" "LIMAO" -- == "LBMCOCJMSSDCX"
    print $ vigenere "ABACATE" "A" -- == "ABACATE" 
    print $ vigenere "ABACATE" "B" -- == "BCBDBUF" 
    print $ vigenere "ABACATE" "AB" -- == "ACADAUE" 