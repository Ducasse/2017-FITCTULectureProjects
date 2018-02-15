tests
testX
	| c |
	c := Coordinate x: 3 y: 4.
	c x: 6.
	self assert: (c x) equals: 6.