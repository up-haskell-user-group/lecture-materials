-- line count application

--main interact lineCount
--    where lineCount input = show (length (lines input)) ++ "\n"

main = interact lineCount
  where lineCount input = show (length (lines input)) ++ "\n"
