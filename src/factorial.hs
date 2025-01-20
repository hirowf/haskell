-- 3! = 3 * 2 * 1 = 6
-- 4! = 4 * 3 * 2 * 1 = 24
-- 1! = 0!  = 1

-- case 1 : factorial (n) = 1 if n = 0 
-- case 2 : factorial (n) = factorial (n - 1) * n if n >= 1

-- example: n = 3

-- factorial (3)  = factorial (3 - 1 = 2) * 3
-- factorial (2) = factorial (2 - 1 = 1 ) * 2
-- factorial (1) = factorial(1 - 1 = 0) * 1

-- fact :: (Eq a, Num a) => a -> a
fact 0 = 1
fact n = fact(n - 1) * n
