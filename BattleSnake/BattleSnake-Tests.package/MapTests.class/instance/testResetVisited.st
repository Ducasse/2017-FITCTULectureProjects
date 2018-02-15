tests
testResetVisited
	| map |
	map := Map withX: 20 Y: 30.
	map := self fillMapWithEmptyTiles: map.
	
	((map tiles at: 5) at: 6) visited: true.
	((map tiles at: 1) at: 1) visited: true.
	((map tiles at: 3) at: 20) visited: true.
	
	map resetVisited.
	
	1 to: map sizeX do:
		[ :i | 1 to: map sizeY do: [ :j | self assert: ((map tiles at: i) at: j) visited equals: false ] ]