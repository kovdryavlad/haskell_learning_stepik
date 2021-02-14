-- GHCi> perms [1,2,3]
-- [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

-- I don't have solution for now

perms :: [a] -> [[a]]
perms []       = [[]]
perms [x]      = [[x]]
perms (x:xs)   = -- concatMap (\l -> [[x] ++ l,  l ++ [x]]) (perms xs)
    map (\l -> [x] ++ l) (perms xs) ++
    map (\l -> l ++ [x]) (perms xs)  
                 

-- perms (x:y:[]) = [[x,y], [y,x]]
-- perms (x:y:xs) =  
--     map (\l -> [x,y] ++ l) (perms xs) ++
--     map (\l -> [y,x] ++ l) (perms xs) ++ 
--     map (\l -> [x] ++ l ++ [y] ) (perms xs) ++ 
--     map (\l -> [y] ++ l ++ [x] ) (perms xs) ++ 
--     map (\l -> l ++ [x,y]) (perms xs) ++
--     map (\l -> l ++ [y,x]) (perms xs)  
  --  [[x,y] ++ (perms xs)]
    --[([[y,x]] ++ (perms xs))]
-- perms (x:y:xs) = [
--         [[x,y]] ++ (perms xs), 
--         [[y,x]] ++ (perms xs)
--     ]
--perms (x:y:xs) = map (\l -> l ++ xs)) (perms [x,y]) 

