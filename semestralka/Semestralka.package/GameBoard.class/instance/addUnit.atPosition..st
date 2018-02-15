contentGeneration
addUnit: aUnit atPosition: aPoint
	| placeAtSquare |
	placeAtSquare := (self getSquare: aPoint).
	aUnit square: placeAtSquare.	
	placeAtSquare setObject: aUnit.
	
	unitList addLast: aUnit.