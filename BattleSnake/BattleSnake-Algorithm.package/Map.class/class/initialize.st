initialization
initialize
	possibleMoves := Array new: 4.
	possibleMoves at: 1 put: #down -> (0@1).
	possibleMoves at: 2 put: #up -> (0@(-1)).
	possibleMoves at: 3 put: #left -> ((-1)@0).
	possibleMoves at: 4 put: #right -> (1@0).