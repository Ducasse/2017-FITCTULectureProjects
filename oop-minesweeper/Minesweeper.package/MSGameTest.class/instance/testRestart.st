tests
testRestart
	| game |
	game := MSGame newGame: 'hard'.
	game grid firstMove: false.
	
	game restart.

	self assert: game grid firstMove equals: true.