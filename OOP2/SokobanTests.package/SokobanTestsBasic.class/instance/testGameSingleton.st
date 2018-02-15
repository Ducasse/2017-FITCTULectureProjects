tests
testGameSingleton
	| game1 game2 |
	game1 := Sokoban currentGame.
	game2 := Sokoban currentGame.
	self assert: game1 equals: game2