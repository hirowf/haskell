{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}
{-# HLINT ignore "Use foldr" #-}

size_list [] = 0
size_list (x : xs) = 1 + size_list xs

comp_list :: [Int] -> [Int] -> Bool
comp_list [] [] = True
comp_list _ [] = False
comp_list [] _ = False
comp_list (a : b) (c : d)
  | a == c = comp_list b d
  | otherwise = False

inv_aux :: [t] -> [t] -> [t]
inv_aux [] l_inv = l_inv
-- [1,2,3]++[4] = [1,2,3,4]
inv_aux (x : xs) l_inv = inv_aux xs l_inv ++ [x]

inv_list :: [t] -> [t]
inv_list [] = []
inv_list l = inv_aux l []

fn_inv_list :: [t] -> [t]
fn_inv_list [] = []
fn_inv_list (x : xs) = fn_inv_list xs ++ [x]
