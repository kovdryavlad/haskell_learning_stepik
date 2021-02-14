fibonacci :: Integer -> Integer
fibonacci n | n == 0     = 0
            | n == 1     = 1
            | n == (-1)  = 1
            | n == (-2)  = (-1)
            | n > 0      = helper_pos 0 0 1 n
            | n < 0      = helper_neg 0 0 1 n

-- I imagined that negative indexes go to the right side of axis like:
-- (indx)  0  -1  -2  -3  -4  -5  -6  -7  ...
-- (val)   0   1  -1   2  -3   5  -8  13  ...


helper_pos currentN x y n = if currentN < n
                                then helper_pos (currentN + 1) y (x + y) n
                                else x

helper_neg currentN x y n = if currentN > n
                                then helper_neg (currentN - 1) y (x - y) n
                                else x