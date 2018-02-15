tests - accessing
testGenre
	|game|
	game := Game new.
	game genre: GameGenre new setAction.
	^ self assert: game genre isAction.