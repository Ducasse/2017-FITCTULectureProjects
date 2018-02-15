searching in game board
validMoveToSquare: aSquare
	^ (self reachableMoveSquaresForCurrentUnit) includes: aSquare