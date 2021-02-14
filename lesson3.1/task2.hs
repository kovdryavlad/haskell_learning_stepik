nTimes:: a -> Int -> [a]
nTimes val n =
    let
        generate_lst lst counter = if counter > 0
                                        then generate_lst (val : lst) (counter - 1)
                                        else lst
    in generate_lst [] n
