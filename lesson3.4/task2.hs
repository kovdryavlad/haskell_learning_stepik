-- GHCi> lengthList [7,6,5]
-- 3

lengthList :: [a] -> Int
lengthList = foldr (\x s -> 1 + s) 0
