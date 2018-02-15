heuristics
distanceFrom: tileA to: tileB
	| diffX diffY |
	diffX := (tileA x) - (tileB x).
	diffY := (tileA y) - (tileB y).
	
	^ ((diffX * diffX) + (diffY * diffY)) sqrt.
