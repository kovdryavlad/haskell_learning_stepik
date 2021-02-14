-- data Odd = Odd Integer deriving (Eq,Show)
-- не убирайте комментарий с предыдущей строки
-- определение Odd уже присутствует в вызывающей программе

-- I don't know how to solve it 

instance Enum Odd where
    succ x = x + 2
    pred x = x - 2
    
    -- toEnum :: Int -> a
    
    -- toEnum x = Odd x
    -- fromEnum x = toInteger x

    -- enumFrom a = a : enumFrom (a + 1)
    -- enumFromThen a second = a : enumFrom (second - a)
    
    -- enumFromTo a b = 
    --     | a <= b    = a : enumFromTo (a + 1) b
    --     | otherwise = []

    -- enumFromThenTo a second b = 
    --     | a <= b    = a : enumFromTo (second - a) b
    --     | otherwise = []
         

    -- toEnum :: Int -> a
    -- fromEnum :: a -> Int

    -- enumFrom :: a -> [a]
    -- enumFromThen :: a -> a -> [a]
    
    -- enumFromTo :: a -> a -> [a]
    -- enumFromThenTo :: a -> a -> a -> [a]

