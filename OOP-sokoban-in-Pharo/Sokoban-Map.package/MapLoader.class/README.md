I am a class responsible for loading and providing maps and levels for Sokoban game.

I can load and validate map or saved game.
In case map load fails, I let my user know for what reason.
In case map load succeeds, I return loaded map as 2D array.

I wotk as an independent class. I only need a filesystem to work with.

loadLevel: aLevelName - loads a map named as provided parameter. E.g:
loadLevel: 'myLevel.oop'
loadSavedGame: aGamename - loads a saved game named as provided parameter. E.g:
loadSavedGame: 'mySavedGame.oop'

    Instance Variables
	blocks:		var containg count of each map element (box, wall...)
	debug:		variable used for debugging purposes.
	fs:		filestream used to load a map/saved game
	height:		height of a map
	isSavedGame:		boolean var stating whether loaded file is a saved game.
	map:		loaded map/saved game as 2D array.
	moves:		number of moves in a saved game
	width:		width of loaded map/saved game