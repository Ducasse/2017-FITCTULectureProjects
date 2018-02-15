initialization
addGame
	| game |
	game := Game new.
	game title: 'Název hry'.
	list addGame: game.
	self refreshView