interior :: [a] -> [a]
interior xs = reverse $ drop 1 $ reverse $ drop 1 xs