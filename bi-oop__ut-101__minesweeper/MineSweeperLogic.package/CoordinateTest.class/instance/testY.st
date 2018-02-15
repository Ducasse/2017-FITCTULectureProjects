tests
testY
	| c |
	c := Coordinate x: 3 y: 4.
	c y: 7.
	self assert: (c y) equals: 7.