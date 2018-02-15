initialization
readLevelsList
	| fileStream line t |
	t := 0.
	fileStream := FileStream fileNamed: Sokoban resourcesPath , levelListPath.
	line := fileStream nextLine.
	[ line = nil ]
		whileFalse: [ 
		  self addLevelByFilename: line id: t .line := fileStream nextLine.
			t := t + 1 ]