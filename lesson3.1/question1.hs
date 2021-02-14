sndHead = snd . head

sndHead1 ((,) x y : z) = x
sndHead2 ((,) y x : z) = x -- correct
sndHead3 ((,) y z : x) = x
sndHead4 ((:) ((,) _ x) y) = x -- correct
sndHead5 ((,) ((:) _ _) x) = x
sndHead6 ((_, x) : _) = x  -- correct

lst = [(1,2),(3,4),(5,6)]