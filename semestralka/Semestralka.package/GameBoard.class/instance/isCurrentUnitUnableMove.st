gameLogic
isCurrentUnitUnableMove
	^ (self reachableMoveSquaresForCurrentUnit size = 1).