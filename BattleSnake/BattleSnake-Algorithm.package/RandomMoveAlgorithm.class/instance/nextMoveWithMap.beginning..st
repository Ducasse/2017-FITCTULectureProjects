calculating
nextMoveWithMap: aMap beginning: aPoint
	| moves |
	moves := aMap possibleVisitableTiles: aPoint.
	moves isEmpty
		ifFalse: [ ^ moves atRandom key ].
	^ #up