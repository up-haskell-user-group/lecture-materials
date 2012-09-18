-- Check whether integer d divides integer n (without remainder)
divides :: Integer -> Integer -> Bool
divides d n = rem n d == 0

-- Determine smallest divider large than k
ldf :: Integer -> Integer -> Integer
ldf k n | divides k n   = k
        | k^2 > n       = n
        | otherwise     = ldf (k+1) n

-- Determine smallest divider >1 of n
ld :: Integer -> Integer
ld n = ldf 2 n

