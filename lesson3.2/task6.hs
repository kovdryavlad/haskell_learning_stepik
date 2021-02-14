-- GHCi> delAllUpper "Abc IS not ABC"
-- "Abc not"

import Data.Char

delAllUpper :: String -> String
-- delAllUpper = unwords . filter (\x -> any isLower x) . words

-- delAllUpper x = (unwords (filter (\x ->any isLower x)  (words x)))

-- delAllUpper x = (unwords (filter (any isLower) (words x)))

delAllUpper= unwords . filter (any isLower) . words
