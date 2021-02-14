-- GHCi> toString (False,())
-- "(false,unit type)"
-- GHCi> toString (True,False)
-- "(true,false)"

-- This part musn't be pasted to solution box
class Printable a where
    toString :: a -> [Char]

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"
-- End of unnecessary  part


-- Solution

instance (Printable a, Printable b) => Printable (a, b) where
    toString (x, y) = "(" ++ toString x ++ "," ++ toString y ++ ")"

-- End of solution