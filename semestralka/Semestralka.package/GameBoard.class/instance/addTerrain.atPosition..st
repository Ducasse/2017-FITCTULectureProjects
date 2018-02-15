contentGeneration
addTerrain: aTypeTerrain atPosition: aPoint
	| placeAtSquare |
	placeAtSquare := (self getSquare: aPoint).
	placeAtSquare setTerrain: aTypeTerrain new.	