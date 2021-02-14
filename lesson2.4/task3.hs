class (Eq a, Enum a, Bounded a) => SafeEnum a where
  ssucc :: a -> a
  ssucc val 
    | val == maxBound  = minBound
    | otherwise        = succ val

  spred :: a -> a
  spred val  
    | val == minBound  = maxBound
    | otherwise        = pred val

instance SafeEnum Bool 

instance SafeEnum Int

instance SafeEnum Char

