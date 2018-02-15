instance creation
withDifficulty: aDifficulty space: space
	| game gameView gridSize |
	game := MSGame newGame: aDifficulty.
	
	gameView := self new.
	gameView game: game.
	gameView gridView grid: (game grid).
	gameView gridView prepareGrid.
	gameView space: space.
	
	space root removeChildren.
	space root addChild: gameView.
	gridSize := gameView gridView gridSize. 
	space extent: (gridSize y + 11) @ (gridSize x + 53).