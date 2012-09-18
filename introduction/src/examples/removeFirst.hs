removeFirst :: Int -> [Int] -> [Int]
removeFirst x [] = []
removeFirst x (y:ys) 
  | x == y = ys
  | otherwise = y : removeFirst x ys 