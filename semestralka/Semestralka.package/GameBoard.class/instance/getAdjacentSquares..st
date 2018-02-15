searching in game board
getAdjacentSquares: aSquare
	| adjacentTiles positionOfAdjacentSquare |
	adjacentTiles := OrderedCollection new.
	{(1 @ 0). (0 @ 1). (-1 @ 0). (0 @ -1)}
		do: [ :dirPoint | 
			positionOfAdjacentSquare := aSquare getPosition + dirPoint.
			( ( positionOfAdjacentSquare <= self getSize ) &
		     ( positionOfAdjacentSquare >= (1@1) )          )
				ifTrue: [ adjacentTiles
						add: (self getSquare: positionOfAdjacentSquare) ] ].
	^ adjacentTiles