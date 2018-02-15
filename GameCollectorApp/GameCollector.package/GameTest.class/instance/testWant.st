tests
testWant
	" wanting a game should be enabled only in state sold created "
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game want.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
		
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game want.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game want.
	self assert: game state class equals: GameStateDesired.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game want.
	self assert: game state class equals: GameStateDesired.
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game want.
	self assert: game state class equals: GameStateLended.
	self assert: game state person equals: 'Person'.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game want.
	self assert: game state class equals: GameStateLost.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 123).
	game want.
	self assert: game state class equals: GameStateDesired.