-- if n = 0, then fib(n) = 0
-- if n = 1, then fib(n) = 1

{-

example: n = 3

fib(3) = fib(n - 1 = 2) + fib(n - 1 = 1) = 1 + 1 = 2
fib(1) = 1
fib(2) = fib(1) + fib(0) = 1 + 0 = 1
fib(0)

-}

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + (n - 2)
