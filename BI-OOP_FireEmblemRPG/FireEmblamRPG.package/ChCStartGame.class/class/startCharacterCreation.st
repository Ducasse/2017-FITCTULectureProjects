accessing
startCharacterCreation
 | game grid |
	game := ChCCompleteModel new.
	grid := ChCCompleteElement new.
	grid menuGameModel: game.
	^grid.