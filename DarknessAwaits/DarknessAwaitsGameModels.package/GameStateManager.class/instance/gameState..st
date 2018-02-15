accessing
gameState: newState
	gameState := newState.
	newLevel ifTrue: [ self initialNewLevel ].
	self announcer announce: GameStateChangedAnnouncement new.
	(gameState isMemberOf: EndOfTurn) ifTrue:[ gameManager clickActionData: nil].
	
	(((gameManager fightOrderQueue first) isMemberOf: Monster) & (newState isMemberOf: MoveState)) ifTrue: [ gameManager endOfTurn.
		self gameState: MoveState new. ]