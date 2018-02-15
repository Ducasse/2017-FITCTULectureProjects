tests - accessing
testCompleted
	|game1 game2|
	game1 := Game new.
	game2 := Game new.
	game1 completed: true.
	game2 completed: false.
	^ self assert: (game1 completed = true) & (game2 completed = false).