sum'n'count :: Integer -> (Integer, Integer)
sum'n'count 0 = (0, 1) 
sum'n'count x =
    let 
        digitsSum' n
            | n == 0    = 0
            | otherwise = (n `mod` 10) + digitsSum' (n `div` 10)
        
        digitsNum' n acc
            | n == 0    = acc
            | otherwise = digitsNum' (n `div` 10)  (acc + 1)

        digitsSum = digitsSum' $ abs x
        digitsNum = digitsNum' (abs x) 0
    in (digitsSum, digitsNum)


--digitsSum' n
--    | n == 0    = 0
--    | otherwise = (n `mod` 10) + digitsSum' (n `div` 10)

--digitsNum' n acc
--    | n == 0    = acc
--    | otherwise = digitsNum' (n `div` 10)  (acc + 1)