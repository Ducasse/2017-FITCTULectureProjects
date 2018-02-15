tests-accesing
testLoadingFromFile
	|board p1 p2|
	p1 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
	p2 := PlayerHuman new playerName: 'Marge' ; race: 'Human'.
	board := GameBoard loadFromFile: 'map1.txt' playerHuman: p2 playerOrc: p1.
	
	self assert: ((board getSquare: 4@3) getTerrain) equals: (Tree new).
	self assert: ((board getSquare: 5@4) getTerrain) equals: (Sand new).
	self assert: ((board getSquare: 4@4) getTerrain) equals: (Grass new).
	self assert: ((board getSquare: 1@1) getTerrain) equals: (Water new).
	self assert: ((board getSquare: 6@6) getObject unitType) equals: (UnitTypeSoldier).
	self assert: ((board getSquare: 6@6) getObject square) equals: (board getSquare: 6@6).
	self assert: ((board getSquare: 6@6) getObject health) equals: 40.
	self assert: ((board getSquare: 6@6) getObject experience) equals: 0.
	self assert: ((board getSquare: 6@6) getObject playerOwner) equals: p1.