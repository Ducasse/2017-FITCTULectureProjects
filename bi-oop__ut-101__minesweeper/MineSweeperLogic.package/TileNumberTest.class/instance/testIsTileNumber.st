tests
testIsTileNumber
	| t |
	t := TileNumber x: 1 y: 1.
	self assert: t isTileNumber. 