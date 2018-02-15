tests
testWidth
	| c |
	c := RectangularCollider new.
	c width: 2.
	self assert: c width equals: 2