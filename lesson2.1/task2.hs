import Data.Function

multSecond = g `on` h

g = (*)
h = snd

--example
--inp: multSecond ('A',2) ('E',7)
--out: 14