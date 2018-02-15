initialization
gameState
	^ gameState ifNil: [ gameState := MoveInProgressState new. ]