tests
testReturn
	" returning a game should be enabled only in state lended lost "
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game return.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
		
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game return.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game return.
	self assert: game state class equals: GameStateCreated.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game return.
	self assert: game state class equals: GameStateDesired.
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game return.
	self assert: game state class equals: GameStateCreated.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game return.
	self assert: game state class equals: GameStateCreated.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 123).
	game return.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'Person'.
	self assert: game state price equals: 123.