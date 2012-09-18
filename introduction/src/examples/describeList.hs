describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of	[] -> " empty"
												[x] -> " a singleton list"
												[x:xs] -> " a multi-element list"