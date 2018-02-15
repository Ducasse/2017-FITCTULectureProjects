accessing
gameState
	^ gameState ifNil: [ gameState := AttackState new. ]