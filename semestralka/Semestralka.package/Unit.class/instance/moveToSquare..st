GameLogic
moveToSquare: moveToSquare
	| moveFromSquare |
	moveFromSquare := self square.
	self square: moveToSquare.
	self notifyMoveFrom: moveFromSquare getPosition To: moveToSquare getPosition.