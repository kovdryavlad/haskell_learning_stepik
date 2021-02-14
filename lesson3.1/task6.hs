-- GHCi> groupElems []
-- []
-- GHCi> groupElems [1,2]
-- [[1],[2]]
-- GHCi> groupElems [1,2,2,2,4]
-- [[1],[2,2,2],[4]]
-- GHCi> groupElems [1,2,3,2,4]
-- [[1],[2],[3],[2],[4]]

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems l = reverse (helper [] [] l) where
    helper res     [] (y:ys) = helper res [y] ys 
    helper res (x:xs)     [] = ((x : xs) : res)
    helper res (x:xs) (y:ys) = if x == y
                                    then helper res (x : y : xs) ys
                                    else helper ((x : xs) : res)  [y] ys 


-- res -  result list 
--   x - list with grouped elements (list with the same elements)
--   y - other part of input list (to process)
