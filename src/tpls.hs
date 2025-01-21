{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}
import Distribution.Simple.Utils (xargs)

-- x , y
-- (1 , 2)
-- (2 , 4)

-- (3,6)

-- static structure after the creation we can`t modify
-- heterogeneous tuples
func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a, b) (c, d) = (a + c, b + d)

-- elements with differents types
-- ("char", 73)

ns :: (String, String, String)
ns = ("char", "char2", "char3")

selec_f (x, _, _) = x

selec_s (_, y, _) = y

selec_t (_, _, z) = z
