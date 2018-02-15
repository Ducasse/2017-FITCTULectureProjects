tests
testPossibleVisitableTiles
	| map iteration possibleMoves|
	
	map := Map withX: 20 Y: 30.
	map := self fillMapWithEmptyTiles: map.
	((map tiles at: 3) at: 20) visited: true.
	
	iteration := 0.
	
	possibleMoves := Dictionary new.
	possibleMoves at: #up put: (3@18); at: #left put: (2@19); at: #right put: (4@19).
	
	(map possibleVisitableTiles: 3 @ 19)
		do: [ :move | 
			self assert: iteration < 3.
			self assert: move value equals: (possibleMoves at: move key).
			iteration := iteration + 1 ].
		
	iteration := 0.
	
	possibleMoves := Dictionary new.
	possibleMoves at: #up put: (20@29); at: #left put: (19@30).
	
	(map possibleVisitableTiles: 20 @ 30)
		do: [ :move | 
			self assert: iteration < 2.
			self assert: move value equals: (possibleMoves at: move key).
			iteration := iteration + 1 ].