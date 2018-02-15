accessing
gameInstance: input
	gameInstance := input.
	boxCnt := gameInstance getBoxCnt.
	self changeScore: (Array newFrom: #(0 0 0)).