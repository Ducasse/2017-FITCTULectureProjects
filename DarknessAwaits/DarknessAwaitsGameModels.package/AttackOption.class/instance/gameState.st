accessing
gameState
	^ gameState ifNil: [ gameState := AttackInProgressState new. ]