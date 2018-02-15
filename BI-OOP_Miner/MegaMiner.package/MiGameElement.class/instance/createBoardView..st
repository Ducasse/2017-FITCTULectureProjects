initialization
createBoardView: aGame
	boardView := MiBoardElement new.
	boardView model: aGame.
	self addChild: boardView.
	boardView remakeBoardInstant.