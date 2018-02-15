tests
testGrid
	| game g1 |
	game := MSGame newGame: 'hard'.

	g1 := MSGrid withGameProperties: MSEasyGameProperties new.
	game grid: g1.
	self assert: game grid equals: g1.