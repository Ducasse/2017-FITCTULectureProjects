tests
testNumber
	| t |
	t := TileNumber x: 1 y: 1.
	t number: 3.
	self assert: t number equals: 3. 