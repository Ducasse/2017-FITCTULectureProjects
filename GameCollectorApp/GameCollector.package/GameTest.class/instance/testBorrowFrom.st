tests
testBorrowFrom
	" borrowing a game should be enabled only in state created and desired "
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game borrowFrom: 'differentPerson'.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateBought.
	self assert: game state place equals: 'Place'.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateLended.
	self assert: game state person equals: 'Person'.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateLost.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 123).
	game borrowFrom: 'Person'.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'Person'.
	self assert: game state price equals: 123.