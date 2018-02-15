accessing
gameState
	^ gameState ifNil: [ gameState := EndOfTurn new. ]