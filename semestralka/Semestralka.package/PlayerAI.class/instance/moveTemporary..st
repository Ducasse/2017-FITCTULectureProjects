temporal for remove
moveTemporary: aGame
	| squareToMove AIPoint PseudoAI isUnitOnPoint gameBoardSize |
	"dummy AI"
	"-----------------------------------------"
	gameBoardSize := aGame activeGameBoard getSize.
	PseudoAI := [ (gameBoardSize x atRandom)@(gameBoardSize y atRandom) ].
	isUnitOnPoint := [ :aPoint | ((aGame activeGameBoard getSquare: aPoint) getObject) notNil ].
	
	AIPoint := PseudoAI value.
	[ (AIPoint > gameBoardSize) | (isUnitOnPoint value: AIPoint) ]
		whileTrue: [ AIPoint := PseudoAI value ].
	
	squareToMove := aGame activeGameBoard getSquare: AIPoint.
	"-----------------------------------------"
	
aGame makeMoveOnTarget: squareToMove.
aGame prepareAttack.