calcCylinderArea :: Double -> Double -> Double
calcCylinderArea r h = 
	let	sideArea = r * h
		topArea = pi * r ^ 2
	in sideArea + 2 * topArea		
		