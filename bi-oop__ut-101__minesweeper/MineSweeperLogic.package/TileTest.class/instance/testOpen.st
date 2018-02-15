tests
testOpen
	| t |
	t := TileEmpty x: 4 y: 5.
	t open.
	self assert: (t isOpened).