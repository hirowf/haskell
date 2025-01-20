-- class  (Ord a) => Ix a  where
--     range       :: (a,a) -> [a]
--     index       :: (a,a) a -> Int
--     inRange     :: (a,a) -> a -> Bool

-- ['a', 'b', 'c'] -> "abc"
-- [True, False, False] -> [True, False, False]
-- ["Marcos"] -> [[Char]]
-- [(1,2),(3,4)] -> [(1,2),(3,4)] check

-- head [1,2,3] 1
-- tail [1,2,3] [2,3]
-- head ["marcos"] "marcos"
-- head "marcos" 'm'
-- tail "marcos" "arcos"

-- size_list :: Num a1 => [a2] -> a1
size_list [] = 0

size_list (x:xs) = 1 + size_list xs
