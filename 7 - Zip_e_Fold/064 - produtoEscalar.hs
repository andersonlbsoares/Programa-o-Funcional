
pE xs ys = zip xs ys
produtoEscalar xs ys = sum ( [ x * y | (x,y) <- (pE xs ys) ] )

