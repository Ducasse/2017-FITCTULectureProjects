initialization
gameState
	^ gameState ifNil: [ gameState := AttackState new. ]