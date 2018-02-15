methods
x: xReal y: yReal
	|xOffset yOffset xInteger yInteger xFade yFade corners|
	xInteger := xReal floor.
	yInteger := yReal floor.
	
	xOffset := xReal - xInteger.
	yOffset := yReal - yInteger.
	
	xInteger := xInteger % 256.
	yInteger := yInteger % 256.
	
	corners :=
		{ xInteger + (permutation at: (yInteger + 1)) .
			xInteger + (permutation at: (yInteger + 2)) .
			xInteger + 1 + (permutation at: (yInteger + 1)) .
			xInteger + 1 + (permutation at: (yInteger + 2))
		} 
		with:
		{ { xOffset . yOffset  } .
			{ xOffset . yOffset - 1 } .
			{ xOffset - 1 . yOffset } .
			{ xOffset - 1 . yOffset - 1 }
		}
		collect: [ :i :xy |
			PerlinNoiseGenerator dotProduct: (gradient at: (i % 12 + 1)) with: xy.
		].
	
	xFade := PerlinNoiseGenerator fade: xOffset.
	yFade := PerlinNoiseGenerator fade: yOffset.

	^ (PerlinNoiseGenerator interpolate: {
        PerlinNoiseGenerator interpolate: { (corners at: 1) . (corners at: 3) . xFade } .
        PerlinNoiseGenerator interpolate: { (corners at: 2) . (corners at: 4) . xFade } .
        yFade
 			}) / 2.0 + 0.5.