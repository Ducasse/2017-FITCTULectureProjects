adding
addGame: game
	game id: increment.
	games addLast: game.
	increment := increment+1.
	^self.
	