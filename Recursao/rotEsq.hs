rotEsq 0 xs = xs
rotEsq x xs = (rotEsq (x-1) ((tail xs)++[head xs]))