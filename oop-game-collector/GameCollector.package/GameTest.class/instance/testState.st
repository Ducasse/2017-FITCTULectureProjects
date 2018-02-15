tests - accessing
testState
	|game|
	game := Game new.
	game state: GameState new setSold.
	^ self assert: game state isSold.