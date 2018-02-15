adding
updateGame: game id: id
	games at: id put: game.
	^self.