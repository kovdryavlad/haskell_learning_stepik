-- GHCi> qsort [1,3,2,5]
-- [1,2,3,5]

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [x] = [x]
qsort (x:xs) = (
            qsort (filter (< x) xs)   ++    -- elements less than x
            (x:filter (== x) xs)      ++    -- elements equals to x (with x)
            qsort (filter (> x) xs)         -- elements grater than x
        )


-- qsort :: Ord a => [a] -> [a]
-- qsort [] = []
-- qsort [x] = [x]
-- qsort (x:xs) = (
--             qsort (filter (< x) xs)   ++    -- elements less than x
--             [x]                       ++    -- x
--             filter (== x) xs          ++    -- elements equals to x 
--             qsort (filter (> x) xs)         -- elements grater than x
--         )



