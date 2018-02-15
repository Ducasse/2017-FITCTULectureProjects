tests
testMark
	| t |
	t := TileEmpty x: 4 y: 5.
	self assert: (t isMarked) equals: false.
	t mark.
	self assert: (t isMarked). 