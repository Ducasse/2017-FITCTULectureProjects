tests
testGameNew
	| game |
	game := Game new withName: 'Diablo' withPlatform: 'PC'.
	self assert: game name equals: 'Diablo'.
	self assert: game platform equals: 'PC'.
	self assert: game state class equals: GameStateCreated.
