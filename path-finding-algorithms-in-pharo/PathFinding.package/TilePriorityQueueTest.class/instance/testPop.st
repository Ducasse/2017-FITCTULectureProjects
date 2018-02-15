tests
testPop
	| queue distances tileA tileB tileC |
	distances := Dictionary new.
	
	tileA := MapTileGrass new.
	tileA x: 3.
	tileA y: 3.
	
	tileB := MapTileGrass new.
	tileB x: 2.
	tileB y: 2.
	
	tileC := MapTileGrass new.
	tileC x: 4.
	tileC y: 4.
	
	distances at: tileA put: 15.
	distances at: tileB put: 4.
	distances at: tileC put: 10.
	
	queue := TilePriorityQueue new.
	queue distances: distances.
	
	queue push: tileA.
	queue push: tileB.
	queue push: tileC.
	
	self assert: queue pop == tileB.
