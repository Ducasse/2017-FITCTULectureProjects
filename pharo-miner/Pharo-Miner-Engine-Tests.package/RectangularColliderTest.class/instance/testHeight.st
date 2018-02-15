tests
testHeight
	| c |
	c := RectangularCollider new.
	c height: 2.
	self assert: c height equals: 2