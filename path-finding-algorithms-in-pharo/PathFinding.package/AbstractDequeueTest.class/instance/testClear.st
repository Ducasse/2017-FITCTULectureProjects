tests
testClear
	| queue tile |
	queue := TileQueue new.
	tile := MapTileGrass new.
	
	self assert: (queue isEmpty) equals: true.
	queue push: tile.
	self assert: (queue isEmpty) equals: false.
	queue clear.
	self assert: (queue isEmpty) equals: true.