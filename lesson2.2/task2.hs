-- implement swap using just 
-- curry uncurry flip (,) const
-- tip: swap = f (g h)

-- inp: swap (1,'A')
-- res: ('A',1)

-- curry   :: ((a, b) -> c) -> a -> b -> c    -- Defined in `Data.Tuple'
-- uncurry :: (a -> b -> c) -> (a, b) -> c    -- Defined in `Data.Tuple'
-- flip    :: (a -> b -> c) -> b -> a -> c    -- Defined in `GHC.Base'
-- (,)     :: a -> b -> (a, b)
-- const   :: a -> b -> a                     -- Defined in `GHC.Base'


swap' x = f (g h) x
h = (,)
g = flip
f = uncurry