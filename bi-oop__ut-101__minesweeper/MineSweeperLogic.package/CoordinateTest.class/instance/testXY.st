tests
testXY
	| c |
	c := Coordinate x: 3 y: 4.
	self assert: (c x) equals: 3.
	self assert: (c y) equals: 4.