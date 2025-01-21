{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}

guard x
  | x == 0 = 0
  | x == 1 = 1
  | otherwise = 10

-- m_and :: Bool -> Bool -> Bool

-- m_and False _ = False
-- m_and _ False = False
-- m_and True True = True
