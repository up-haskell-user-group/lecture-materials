calcBMI :: Double -> Double -> String
calcBMI height weight
	| bmi <= 18.5 = "You are a bag full of bones."
	| otherwise = "Congrats!! You are a Hippo."
	where	bmi = weight / height ^ 2