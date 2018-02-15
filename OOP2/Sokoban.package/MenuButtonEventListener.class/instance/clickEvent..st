mouse handlers
clickEvent: anEvent
	| game |
	game := Sokoban currentGame.
	game currentLevelById: anEvent currentTarget levelNum