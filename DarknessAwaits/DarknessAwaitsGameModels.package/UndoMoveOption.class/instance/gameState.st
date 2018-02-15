initialization
gameState
	^ gameState ifNil: [ gameState := MoveState new. ]