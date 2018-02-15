tests
testNextTurn
	|currentlyPlayingPlayer board|
	board := GameBoard new.

	currentlyPlayingPlayer := board currentlyPlayingPlayer.
	board setNextTurn.
	self assert: (currentlyPlayingPlayer ~= (board currentlyPlayingPlayer)).
	
	currentlyPlayingPlayer := board currentlyPlayingPlayer.
	board setNextTurn.
	self assert: (currentlyPlayingPlayer ~= (board currentlyPlayingPlayer)).