data Polynomial = Line Float Float | Parabola Float Float Float 
	deriving (Show)
	
value :: Polynomial -> Float -> Float
value (Line m c) x = m*x + c
value (Parabola a b c) x = a*x^2 + b*x + c	
	
roots :: Polynomial -> [Float]
roots (Line m c) = [-c/m]
roots (Parabola a b c) = 
	let rdet = sqrt(b^2-4*a*c)
	in [(-b-rdet)/(2*a),(-b+rdet)/(2*a)]
	
turningPoint :: Polynomial -> [(Float,Float)]
turningPoint (Line _ _) = []
turningPoint (Parabola a b c) =
	let	x = -b / (2*a)
	in [(x, value (Parabola a b c) x)] 
		
		
