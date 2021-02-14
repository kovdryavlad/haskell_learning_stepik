integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = 
    let 
        steps = 1000000
        h = (b - a) / steps
        x_i i = h * i + a 
        half val = val / 2
        
        sum' i i_topBorder acc = if i < i_topBorder
                                    then sum' (i + 1) i_topBorder (acc + f (x_i i))
                                    else acc
    
    in h * (half (f a + f b) + sum' 1 (steps - 1) 0)