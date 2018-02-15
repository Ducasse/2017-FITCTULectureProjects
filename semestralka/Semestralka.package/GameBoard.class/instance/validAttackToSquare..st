searching in game board
validAttackToSquare: aSquare
	^ (self reachableAttackSquaresForCurrentUnit) includes: aSquare