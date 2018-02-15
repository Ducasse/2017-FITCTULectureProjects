temporal for remove
moveWithoutClickOnGameboard: aGameboard
| squareToMove AIPoint PseudoAI isUnitOnPoint gameBoardSize |
	"dummy AI"
	"-----------------------------------------"
	gameBoardSize := aGameboard getSize.
	PseudoAI := [ (gameBoardSize x atRandom)@(gameBoardSize y atRandom) ].
	isUnitOnPoint := [ :aPoint | ((aGameboard getSquare: aPoint) getObject) notNil ].
	
	AIPoint := PseudoAI value.
	[ (AIPoint > gameBoardSize) | (isUnitOnPoint value: AIPoint) ]
		whileTrue: [ AIPoint := PseudoAI value ].
	
	squareToMove := aGameboard getSquare: AIPoint.
	"-----------------------------------------"
	
	self makeMove: squareToMove onGameBoard: aGameboard.
	