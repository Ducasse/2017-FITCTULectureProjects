instance creation
withDifficulty: aDifficulty
	| space |
	space := BlSpace new.
	space title: 'Minesweeper';
		resizable: false.
	
	self withDifficulty: aDifficulty space: space.
	
	space show.