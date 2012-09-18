_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
_zipWith _ [] _ = []
_zipWith _ _ [] = []
_zipWith f (x:xs) (y:ys) = f x y : _zipWith f xs ys 