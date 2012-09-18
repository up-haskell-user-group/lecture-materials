prefix :: String -> String -> Bool
prefix [] ys = True
prefix xs [] = False
prefix (x:xs) (y:ys) = (x == y) && prefix xs ys

substring :: String -> String -> Bool
substring xs [] = False
substring xs (y:ys)
  | prefix xs (y:ys) == True = True
  | otherwise = substring xs ys