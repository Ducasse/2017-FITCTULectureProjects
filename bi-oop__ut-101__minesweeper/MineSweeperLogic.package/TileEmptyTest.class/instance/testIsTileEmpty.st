tests
testIsTileEmpty
	| t |
	t := TileEmpty x: 1 y: 1.
	self assert: t isTileEmpty. 