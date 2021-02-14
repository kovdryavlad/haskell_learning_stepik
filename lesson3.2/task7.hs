-- GHCi> max3 [7,2,9] [3,6,8] [1,8,10]
-- [7,8,10]
-- GHCi> max3 "AXZ" "YDW" "MLK"
-- "YXZ"

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 = zipWith3 (\x y z -> max (max x y) z)
