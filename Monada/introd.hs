import Data.List (elemIndex) --1° 
import Data.Maybe            --2°


-- 1° forma de lidar com o maybe

purifica Nothing = -1
purifica (Just x) = x

indexOf y xs = purifica $ elemIndex y xs


-- 2° forma de lidar com o maybe

indexOf2 y xs = fromMaybe (-1) (elemIndex y xs)

-- 3° forma de lidar com o maybe

indexOf3 y xs = fromJust (elemIndex y xs)
