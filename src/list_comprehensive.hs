-- [x | x <- [1,2,3]]
-- [x * x | x <- [1,2,3,4]]
-- [x | x <- [1 .. 10], mod x 2 == 0]

pair :: Int -> Bool
pair x = mod x 2 == 0

list :: [Int]
list = [x | x <- [1 .. 10], pair x]

list2 = [x * 2 | x <- [1 .. 10], x < 5]
