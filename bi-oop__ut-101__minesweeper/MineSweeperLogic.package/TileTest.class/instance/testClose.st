tests
testClose
	| t |
	t := TileEmpty x: 4 y: 5.
	t open.
	self assert: (t isOpened).
	t close.
	self assert: (t isOpened) equals: false. 