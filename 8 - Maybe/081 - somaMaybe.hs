somaMaybe Nothing Nothing = Nothing
somaMaybe Nothing (Just b) = Just(b)
somaMaybe (Just a) Nothing = Just(a)
somaMaybe (Just a) (Just b) = Just(a + b)

main = do
    somaMaybe Just(5) Just(7) == Just(12)
    somaMaybe Just(5) Nothing == Just(5)
    somaMaybe Nothing Just(3) == Just(3)
    somaMaybe Nothing Nothing == Nothing