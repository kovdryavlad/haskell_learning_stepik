-- GHCi> meanList [1,2,3,4]
-- 2.5

meanList = divFun . foldr (\curr (sum,len) -> (sum + curr, len+1)) (0,0)

divFun (x,y) = x / y  