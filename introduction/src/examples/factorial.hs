module Fritz.Test
(factorial)
where
-- | A factorial function in Haskell
factorial :: Integer -> Integer
-- | The 'factorial' function calculates the factorial of an intege
factorial 0 = 1
factorial n = n * factorial (n-1)
