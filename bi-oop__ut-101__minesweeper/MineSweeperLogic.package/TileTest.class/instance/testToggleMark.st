tests
testToggleMark
	| t |
	t := TileEmpty x: 4 y: 5.
	self assert: (t isMarked) equals: false.
	t toggleMark.
	self assert: (t isMarked). 
	t toggleMark.
	self assert: (t isMarked) equals: false.
	 