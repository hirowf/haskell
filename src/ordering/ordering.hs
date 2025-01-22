module Ordering (get_minor) where

list :: [Int]
list = [5, 76, 82, 3, 1]

get_minor :: [Int] -> Int
get_minor [x] = x
get_minor [] = 0
get_minor (x : xs)
  | x < get_minor xs = x
  | otherwise = get_minor xs

remove_minor :: [Int] -> [Int]
-- remove_minor [] = []
remove_minor (x : xs)
  | x == get_minor (x : xs) = xs
  | otherwise = x : remove_minor xs

-- [Int] -> acc -> list
aux_ordering :: [Int] -> [Int] -> [Int]
aux_ordering ordered_list [] = ordered_list
-- [2,3,4]++[2]
aux_ordering ordered_list (x : xs) = aux_ordering (ordered_list ++ [get_minor (x : xs)]) (remove_minor (x : xs))

ordering :: [Int] -> [Int]
ordering [] = []
ordering list = aux_ordering [] list
