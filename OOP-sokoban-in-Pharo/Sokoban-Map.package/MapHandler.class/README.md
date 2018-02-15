I am  an abstract class that serves as a parent for classes dealing with maps for Sokoban game.

I can list saved games or regular Sokoban game levels.
I always use current directory as the base  where I expect directories containing map  files.
I care only about files having '.oop' suffix.

I wotk as an independent class. I only need a filesystem to work with.

Public API and Key Messages

Instances of me should be created using 'new' message.
listLevels - returns list of available Sokoban game levels
listSavedGames - return list of available Sokobane saved games.

    Instance Variables
	dir:		current directory containing folder and filles to work with.
	mapSuffix:		suffix for files I can interact with.