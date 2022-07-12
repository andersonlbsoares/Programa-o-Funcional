import Data.Maybe(fromJust)

function zs zipado
    |null(zs) = []
    |otherwise = fromJust (lookup (head zs) zipado) : function (tail zs) zipado

selec xs ys = function ys (zip [0..] xs)
