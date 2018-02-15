tests
testSellToFor
	" wanting a game should be enabled only in state bought created lended "
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
		
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'aPerson'.
	self assert: game state price equals: 123.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'aPerson'.
	self assert: game state price equals: 123.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateDesired.
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'aPerson'.
	self assert: game state price equals: 123.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateLost.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 456).
	game sellTo: 'aPerson' For: 123.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'Person'.
	self assert: game state price equals: 456.
	