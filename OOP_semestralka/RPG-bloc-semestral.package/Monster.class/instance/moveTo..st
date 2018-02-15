path commands
moveTo: aPoint
"Moves monster to a point. Also changes the game board"
|distance GB|

	(self canMoveTo: (aPoint x) Y: (aPoint y))
	ifFalse: [ ^false ].
	
	GB := (self gameBoard).	
	distance := (GB bfs: (self positionWithinArray) pointEnd: aPoint) size.
	
	movementCurrent := (movementCurrent - distance).
	(self position: aPoint).
^true