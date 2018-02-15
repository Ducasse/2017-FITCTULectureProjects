tests
testNextToSnake
	| map tiles bfs snakeCoord |
	snakeCoord := 2 @ 2.
	bfs := BFSMoveAlgorithm new.
	map := Map withX: 3 Y: 3.
	tiles := Array new: 3.
	1 to: 3 do: [ :i | 
		tiles at: i put: (Array new: 3).
		1 to: 3 do: [ :j | (tiles at: i) at: j put: EmptyTile new ] ].
	(tiles at: 1) at: 2 put: FoodTile new.
	(tiles at: 2) at: 2 put: SnakeTile new.
	map tiles: tiles.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #left.
	map resetVisited.
	(tiles at: 1) at: 2 put: EmptyTile new.
	(tiles at: 2) at: 1 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #up.
	map resetVisited.
	(tiles at: 2) at: 1 put: EmptyTile new.
	(tiles at: 3) at: 2 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #right.
	map resetVisited.
	(tiles at: 3) at: 2 put: EmptyTile new.
	(tiles at: 2) at: 3 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #down