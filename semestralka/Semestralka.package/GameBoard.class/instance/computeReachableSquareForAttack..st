searching in game board
computeReachableSquareForAttack: anUnit
	| squareWhereStanding adjacentSquare playerOfUnit |
	playerOfUnit := anUnit playerOwner.
	squareWhereStanding := anUnit square.
	adjacentSquare := self getAdjacentSquares: squareWhereStanding.
	
	adjacentSquare := adjacentSquare
		select: [ :aSquare | 	aSquare getObject amIUnit ].
	adjacentSquare := adjacentSquare
		reject: [ :aSquare | 	
				(aSquare getObject playerOwner race = playerOfUnit race) ].
	
	^ adjacentSquare asSet.
	
	
	
	
	