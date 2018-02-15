searching in game board
computeReachableSquareForMove: anUnit
	| squareWhereStanding reachableSquare availableMoves |
	reachableSquare := Set new.
	squareWhereStanding := anUnit square.
	availableMoves := (anUnit unitType move) + (anUnit costMoveAtSquare: squareWhereStanding).
	"we have to add cost of squareWhereStanding to available moves because DFS takes moves also from first square where unit stands if DFS ignore this first square we could only write 'availableMoves := anUnit unitType move"
	
"	self dfsOn: squareWhereStanding withUnit: anUnit withMoves: availableMoves withVisited: reachableSquare.
	reachableSquare :=
	reachableSquare reject: [ :aSquare |
			(aSquare getObject amIUnit)
				ifTrue:  [(aSquare getObject playerOwner race = anUnit playerOwner race)]
				ifFalse: [false]
			].
	
	reachableSquare add: squareWhereStanding."
	
	self bfsOn: squareWhereStanding withUnit: anUnit withVisited: reachableSquare.
	reachableSquare :=
	reachableSquare reject: [ :aSquare |
			(aSquare getObject amIUnit)
				ifTrue:  [(aSquare getObject playerOwner race = anUnit playerOwner race)]
				ifFalse: [false]
			].	
	reachableSquare add: squareWhereStanding.
	^ reachableSquare.
	