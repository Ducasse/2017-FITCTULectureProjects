tests
testLendTo
	" lending a game should be enabled only in state bought "
	| game |
	
	" borrow test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBorrowed fromPerson: 'Person').
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateBorrowed.
	self assert: game state person equals: 'Person'.
	
	" bought test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateBought fromWhere: 'Place').
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateLended.
	self assert: game state person equals: 'aPerson'.

	" created test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateCreated new.
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateCreated.
		
	" desired test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  GameStateDesired new.
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateDesired.
	
	" lended test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLended toWho: 'Person' prevState: GameStateCreated new).
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateLended.
	self assert: game state person equals: 'Person'.
	
	" lost test "
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateLost previousState: GameStateCreated new).
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateLost.
	
	" sold test"
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	game state:  (GameStateSold toWho: 'Person' forWhat: 123).
	game lendTo: 'aPerson'.
	self assert: game state class equals: GameStateSold.
	self assert: game state person equals: 'Person'.
	self assert: game state price equals: 123.
