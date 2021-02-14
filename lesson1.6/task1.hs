seqA :: Integer -> Integer
seqA n 
    | n == 0     = 1
    | n == 1     = 2
    | n == 2     = 3
    | otherwise  = 
        let
            helper currN a b c = if currN < n
                                    then helper (currN + 1) b c (c + b - 2 * a) 
                                    else a
        in helper 0 1 2 3

-- currN represents index if sequense
-- a is element of currN index
-- b is element of currN + 1 index
-- c is element of currN + 2 index