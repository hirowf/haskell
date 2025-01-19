-- 4 = 1 + 2 + 3 + 4 = 10
-- 3 = 1 + 2 + 3 = 6

-- sum(n)
-- if n = 1, then sum(n) = 1
-- if n > 1, then sum(n) = sum(n - 1) + 1

-- sum 1  = 1
-- sum n = sum(n - 1) + n

sumFn 1 = 1 
sumFn n = sumFn(n-1) + n
