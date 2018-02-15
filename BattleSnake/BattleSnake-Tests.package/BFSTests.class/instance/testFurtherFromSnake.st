tests
testFurtherFromSnake
	| map tiles bfs snakeCoord |
	snakeCoord := 3 @ 3.
	bfs := BFSMoveAlgorithm new.
	map := Map withX: 5 Y: 5.
	tiles := Array new: 5.
	1 to: 5 do: [ :i | 
		tiles at: i put: (Array new: 5).
		1 to: 5 do: [ :j | (tiles at: i) at: j put: EmptyTile new ] ].
	(tiles at: 1) at: 3 put: FoodTile new.
	(tiles at: 3) at: 3 put: SnakeTile new.
	map tiles: tiles.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #left.
	map resetVisited.
	(tiles at: 1) at: 3 put: EmptyTile new.
	(tiles at: 3) at: 1 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #up.
	map resetVisited.
	(tiles at: 3) at: 1 put: EmptyTile new.
	(tiles at: 5) at: 3 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #right.
	map resetVisited.
	(tiles at: 5) at: 3 put: EmptyTile new.
	(tiles at: 3) at: 5 put: FoodTile new.
	self assert: (bfs nextMoveWithMap: map beginning: snakeCoord) equals: #down