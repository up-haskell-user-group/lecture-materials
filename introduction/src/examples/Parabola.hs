{-# LANGUAGE CPP, TemplateHaskell #-}
-----------------------------------------------------------------------------
-- Module      :  UPHSS.StringUtils
-- Copyright   :  GPL
-- License     :  AllRightsReserved
--
-- Maintainer  :  Fritz Solms
-- Stability   :  its Haskell - what do you expect?
-- Portability :  ditto
-- |
-----------------------------------------------------------------------------

module UPHSS.StringUtils (
count
) where

-- counts the number of occurances of a character in a string
count :: Char -> String -> Int
count a [] = 0
count a (x:xs)
  | a == x = 1 + count a xs
  | otherwise = count a xs