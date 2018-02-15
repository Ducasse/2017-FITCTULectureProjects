This is main class of game. It handles the game and gives orders to other components of game.

In initialize method it loads all settings from Json structures. After that it loads all items and monster and Caches them. This game will have small database so we can afford it.

methods:
battlelmap
	returns Instance of battlemap
battlemap:
	sets instance battlemap
loadGameModelItems
	loads items and monsters from Json
loadGlobalSettings
	loads global settings from json
play
	initialize battlefield, sets location of heroes on 
	and initialize grafical playground
player
	getter for player
player:
	setter for player
setLocationOfHeroes
	takes hero as argument and places them each 	to another (TEST METHOD)