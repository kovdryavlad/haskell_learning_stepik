oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
-- oddsOnly lst = 
--     let
--         get_odds acc_lst (x:xs) = if xs == []
--                                         then if odd x
--                                                 then (acc_lst ++ [x])
--                                                 else acc_lst
--                                         else if odd x
--                                                 then get_odds (acc_lst ++ [x]) xs
--                                                 else get_odds acc_lst xs
--     in get_odds [] lst



oddsOnly lst = 
    let
        get_odds acc_lst (x:xs) = if xs == []
                                        then if odd x
                                                then x : acc_lst
                                                else acc_lst
                                        else if odd x
                                                then get_odds (x : acc_lst) xs
                                                else get_odds acc_lst xs
    in reverse (get_odds [] lst)

