rotDir 0 xs = xs
rotDir x xs = (rotDir (x-1) ((last xs):(init xs)))