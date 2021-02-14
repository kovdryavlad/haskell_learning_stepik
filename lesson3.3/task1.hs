-- take 10 $ fibStream
-- [0,1,1,2,3,5,8,13,21,34]

fibStream :: [Integer]
fibStream = 0 : 1 : zipWith (\x y -> x + y) (fib 0 1) (fib 1 1)

fib a b = a : fib b (a + b)