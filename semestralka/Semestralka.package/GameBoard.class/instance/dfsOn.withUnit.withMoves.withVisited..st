searching in game board
dfsOn: aSquare withUnit: aUnit withMoves: availableMoves withVisited: visitedTiles
	| tmpMoveCost tmpAvailableMoves cannotPassOtherPlayersUnit |
	tmpMoveCost := aUnit costMoveAtSquare: aSquare.
	tmpAvailableMoves := availableMoves.
	Transcript show: 'wanna move at: ' , aSquare getPosition asString , ' moveCost: ', tmpMoveCost asString,
	                 ' with available moves: ' , availableMoves asString.
	aSquare getObject amIUnit
		ifTrue: [ cannotPassOtherPlayersUnit := (aSquare getObject playerOwner ~= aUnit playerOwner) ]
	   ifFalse:[ cannotPassOtherPlayersUnit := false ].
	( ( visitedTiles includes: aSquare ) | ( tmpAvailableMoves - tmpMoveCost < 0 ) | (cannotPassOtherPlayersUnit) )
		ifTrue: [ Transcript cr. ^ self ].
	
	tmpAvailableMoves := tmpAvailableMoves - tmpMoveCost.
	visitedTiles add: aSquare.
	Transcript show: '==>  move there: ' , aSquare getPosition asString, ' with rest moves: ' , tmpAvailableMoves asString.
	Transcript cr.
	(self getAdjacentSquares: aSquare)
		do: [ :adjTile | 
			self
				dfsOn: adjTile
				withUnit: aUnit
				withMoves: tmpAvailableMoves
				withVisited: visitedTiles ]