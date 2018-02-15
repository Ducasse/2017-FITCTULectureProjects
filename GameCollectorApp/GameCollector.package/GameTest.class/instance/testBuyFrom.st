tests
testBuyFrom
	" buying a game should be enabled only in state  borrowed created desired sold"
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game buyFrom: 'aPlace'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'aPlace'.
	
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game buyFrom: 'different place'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game buyFrom: 'Place'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game buyFrom: 'Place'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game buyFrom: 'Place'.
	self assert: game state class equals: GameStateLended.
	self assert: game state person equals: 'Person'.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game buyFrom: 'Place'.
	self assert: game state class equals: GameStateLost.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 123).
	game buyFrom: 'Place'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.
