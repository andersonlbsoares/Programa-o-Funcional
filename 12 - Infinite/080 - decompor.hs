decompor x 
    | x  > 9 = decompor (x `div` 10) ++ [x `mod` 10]
    | otherwise = [x]

decomporIterate x = reverse $ take (length y) $ (`mod`10) <$> (iterate (\x -> x `div` 10) x)
    where y = show x 
