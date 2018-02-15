tests
testEndTile
	| queue tile |
	queue := TileQueue new.
	tile := MapTileGrass new.
	
	self assert: (queue endTile) equals: nil.
	queue endTile: tile.
	self assert: (queue endTile) == tile.
	queue clear.
	self assert: (queue endTile) equals: nil.