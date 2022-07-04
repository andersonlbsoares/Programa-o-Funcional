
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

primos = zip [0..] (primo <$> [0..])

ehPrimo x = snd (primos !! x)