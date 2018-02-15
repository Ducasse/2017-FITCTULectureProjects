accessing
doActionOn: aGameManager data: data
	aGameManager endOfTurn.
	aGameManager gameStateManager gameState: MoveState  new.