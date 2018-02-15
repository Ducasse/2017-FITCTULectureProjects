as yet unclassified
startGame
	| unitOnTurn |
	unitOnTurn := gameBoard getUnitList onTurn.
	playerOnTurn := unitOnTurn playerOwner.
	playerOnTurn moveWithoutClickOnGameboard: self gameBoard.