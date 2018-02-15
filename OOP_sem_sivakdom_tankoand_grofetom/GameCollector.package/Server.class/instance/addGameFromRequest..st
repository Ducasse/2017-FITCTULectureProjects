adding
addGameFromRequest: req
	| game |
	
	game := Game withName: (req at: #name) 
					 withDesc: (req at: #description) 
					 withLength: (req at: #length).
	
	games addGame: game.