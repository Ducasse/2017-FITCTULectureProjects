tests-accessing
testTileInstance
	|tile|
	tile := Tile index: 0.
	tile forceLayout.
	self assert: tile width equals: 48.
	self assert: tile height equals: 48.