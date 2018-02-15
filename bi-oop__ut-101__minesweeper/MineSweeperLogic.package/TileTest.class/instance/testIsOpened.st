tests
testIsOpened
	| t |
	t := TileEmpty x: 4 y: 5.
	self assert: (t isOpened) equals: false.
	t open.
	self assert: (t isOpened). 