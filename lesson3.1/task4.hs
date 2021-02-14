isPalindrome :: Eq a => [a] -> Bool
isPalindrome v = v == reverse' v

reverse' l = rev l [] where
    rev []     a = a
    rev (x:xs) a = rev xs (x:a)

