accessing
start
 | game grid|
	game := MenuGameModel new.
	grid := MenuGameElement new.
	grid menuGameModel: game.
	^grid.