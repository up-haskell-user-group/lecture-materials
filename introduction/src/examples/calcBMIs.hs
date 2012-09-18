calcBMIs :: [(Double,Double)] -> [Double]
calcBMIs xs = [bmi h w | (h, w) <- xs]
  where bmi height weight = weight / height ^ 2