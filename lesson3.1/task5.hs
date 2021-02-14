-- GHCi> sum3 [1,2,3] [4,5] [6]
-- [11,7,3]

sum2 :: Num a => [a] -> [a] -> [a]
sum2      []      [] = []
sum2      []  (b:bs) = b : sum2 [] bs
sum2  (a:as)      [] = a : sum2 as []
sum2  (a:as)  (b:bs) = (a + b) : sum2 as bs



sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3     []      []      [] = []
sum3 as  bs  cs = sum2 (sum2 as bs) cs

