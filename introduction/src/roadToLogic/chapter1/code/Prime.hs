{-# LANGUAGE CPP, TemplateHaskell #-}
-----------------------------------------------------------------------------
-- Module      :  UPHSS.Prime
-- Copyright   :  GPL
-- License     :  AllRightsReserved
--
-- Maintainer  :  Fritz Solms
-- Stability   :  its Haskell - what do you expect?
-- Portability :  ditto
-- |
-----------------------------------------------------------------------------

module UPHSS.Prime (
divides,
isPrime,
primeFactors,
main
) where

import Control.Monad (unless)
import System.Exit (exitFailure)
import Test.QuickCheck.All (quickCheckAll)

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

-- Determines whether provided integer is a prime number
isPrime :: Integer -> Bool
isPrime n	| n <= 1    = False
            | otherwise = ld n == n
-- Truth properties for isPrime (for unit testing)            
prop_primeIsFactor	n	| isPrime n	= length (filter (== 0) (map(\x -> rem n x) [2..(n-1)])) == 0
						| otherwise	= True

-- Determine prime factors list
primeFactors :: Integer -> [Integer]
primeFactors n	| n < 1		= error "can only calc prime factors of n>1"
				| n == 1	= []
				| otherwise	= p : primeFactors (div n p) where p = ld n

-- Entry point for unit tests.
test_prime = do
    allPass <- $quickCheckAll -- Run QuickCheck on all prop_ functions
    unless allPass exitFailure
            
primeApp = do
	putStr "Enter number to test for prime: "
	inp <- getLine
	let n = read inp::Integer
	let isAPrime = isPrime n
	putStrLn ""
	if isAPrime
		then putStrLn (inp ++ " is a prime.")		 
		else putStrLn (inp ++ " is not a prime.")
	primeApp
	
#ifndef MAIN_FUNCTION
#define MAIN_FUNCTION primeApp
#endif
main = MAIN_FUNCTION	


