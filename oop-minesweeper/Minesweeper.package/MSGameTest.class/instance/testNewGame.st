tests
testNewGame
	| game gameProperties1 |
	gameProperties1 := MSHardGameProperties new.
	game := MSGame newGame: 'hard'.
	self assert: game grid gameProperties mineCount equals: gameProperties1 mineCount.
	self assert: game grid gameProperties size equals: gameProperties1 size.
	