searching in game board
bfsOn: aSquare withUnit: aUnit withVisited: visitedTiles
	| tmpMoveCost tmpAvailableMoves cannotPassOtherPlayersUnit squareList moveList processSquare |
	squareList := LinkedList new.
	moveList := LinkedList new.
	squareList addFirst: aSquare.
	moveList addFirst: aUnit unitType move.
	visitedTiles add: aSquare.
	
	[squareList isNotEmpty] whileTrue: [
		processSquare := squareList last. squareList removeLast.
		tmpAvailableMoves := moveList last. moveList removeLast.		
		
		(self getAdjacentSquares: processSquare) do: [ :adjSquare |
			tmpMoveCost := aUnit costMoveAtSquare: adjSquare.
			adjSquare getObject amIUnit
				ifTrue: [ cannotPassOtherPlayersUnit := (adjSquare getObject playerOwner ~= aUnit playerOwner) ]
	   			ifFalse:[ cannotPassOtherPlayersUnit := false ].
			
			( ( (visitedTiles includes: adjSquare) not ) &
			  ( (cannotPassOtherPlayersUnit) not )       &
			  (tmpAvailableMoves  - tmpMoveCost  >= 0) )
				ifTrue: [
					squareList addFirst: adjSquare.
					moveList addFirst: (tmpAvailableMoves - tmpMoveCost).
					visitedTiles add: adjSquare.
				].
		].
	].	
	