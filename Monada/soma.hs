import Data.List (elemIndex)

-- com o pattern math
purifica Nothing Nothing = Nothing
purifica (Just x) (Just y) = Just $ x + y
purifica Nothing (Just y) = Just y
purifica (Just x) Nothing = Just x

soma :: Maybe Int -> Maybe Int ->  Maybe Int  
soma a b = purifica a b

--sem o pattern math 

soma2 :: Maybe Int -> Maybe Int ->  Maybe Int  
soma2 x y
    | (isJust x) && (isJust y) = Just $ fromJust x + fromJust y
    | (isNothing x) && (isNothing y) = Nothing
    | (isJust x) && Nothing = x
    | otherwise = y 

