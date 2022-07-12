import Data.Maybe(fromJust,isNothing)

filterMaybe vet = foldl removerNothing [] vet
  where removerNothing acc x = if isNothing x then acc else acc ++ [fromJust x]

main = do
    print $ filterMaybe [Just 5,Nothing,Just 7,Nothing] -- [5, 7]