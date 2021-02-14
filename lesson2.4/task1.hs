class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab arg
        | doesEnrageGork arg && doesEnrageMork arg = stomp (stab arg)
        | doesEnrageGork arg                       = stab arg
        | doesEnrageMork arg                       = stomp arg
        | otherwise                                = arg