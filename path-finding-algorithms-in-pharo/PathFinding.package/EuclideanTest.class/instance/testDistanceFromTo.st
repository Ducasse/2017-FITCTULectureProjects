tests
testDistanceFromTo
	| tileA tileB distance |
	
	tileA := MapTileGrass new.
	tileA x: 6.
	tileA y: 2.
	
	tileB := MapTileGrass new.
	tileB x: 9.
	tileB y: 6.
	
	distance := Euclidean distanceFrom: tileA to: tileB.
	self assert: distance equals: 5.
