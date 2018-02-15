This class represents battlefield in game. It encapsulates list of tiles (MAP) and provides extended functions for operetions on map.

Methods:
calculateIndes:
	This method provides recalculation of index 	based on coordinates. Thanks to it, we can save 	2D array into 1D
gameManager
	just a getter
gameManager:
	just a setter
generateMap
	sets basic layout of map. For now it only creates 	X*X map of tiles.
gridSize
	returns size of one side of map, now it is 	constants, because we do not support different 	sizes of map
map
	just a getter, returns array of tiles (MAP)
putCharacter:AtPosition
	accepts GameCharacter and Postition as 	arguments. Sets game characters position and 	sets position's gamecharacter at specified 	position.
tileAtIndex:
	returns map tile at specified index
tileAtPosition:
	returns map tile at specified position 