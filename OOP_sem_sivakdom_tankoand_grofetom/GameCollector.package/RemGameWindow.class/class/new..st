instance creation
new: game
	| window |
	window := self basicNew.
	window
		game: game;
		initialize.
	^ window