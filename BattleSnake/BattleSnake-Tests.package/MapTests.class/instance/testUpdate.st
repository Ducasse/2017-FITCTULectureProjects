tests
testUpdate
	|map gameInfo snake snake2 iteration possibleMoves|
	
	map := Map withX: 20 Y: 30.
	map := self fillMapWithEmptyTiles: map.
	
	gameInfo := GameInfo new.
	snake:= Snake new coordinates: {1@1. 1@2 }; name: 'snaki'; yourself.
	gameInfo dead_snakes: { snake }.
	
	snake2 := Snake new coordinates: {6@6. 6@7 }; name: 'snaki2'; yourself.
	gameInfo snakes: { snake2 }.
	
	gameInfo food: { 1@2. 4@5 }.
	
	map update: gameInfo.
	
	possibleMoves := Dictionary new.
	possibleMoves at: #up put: (6@4); at: #left put: (5@5); at: #right put: (7@5).
	iteration := 0.
	(map possibleVisitableTiles: 6 @ 5) do: [ :move | 
			self assert: iteration < 3.
			self assert: move value equals: (possibleMoves at: move key).
			iteration := iteration + 1 ].
	
	