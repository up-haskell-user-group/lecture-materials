count :: Char -> String -> Int
count a [] = 0
count a (x:xs)
  | a == x = 1 + count a xs
  | otherwise = count a xs