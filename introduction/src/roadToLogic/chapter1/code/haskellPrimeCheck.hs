-- determines whether provided integer is a prime number
isPrime :: Integer -> Bool
isPrime n	| n <= 1    = False
            | otherwise = ld n == n
-- unit tests for isPrime            
prop_primeIsFactor	n	| isPrime n	= length (filter (== 0) (map(\x -> rem n x) [2..(n-1)])) == 0
						| otherwise	= True
