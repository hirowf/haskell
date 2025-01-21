```haskell
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

-- function that checks if two lists are equal.
-- two lists are considered equal if:
--    1. they have the same number of elements.
--    2. they contain the same elements.
--    3. the elments are in the same positions

comp_list :: [Int] -> [Int] -> Bool
comp_list [] [] = True
comp_list _ [] = False
comp_list [] _ = False
comp_list (a : b) (c : d)
  | a == c = comp_list b d
  | otherwise = False



```
