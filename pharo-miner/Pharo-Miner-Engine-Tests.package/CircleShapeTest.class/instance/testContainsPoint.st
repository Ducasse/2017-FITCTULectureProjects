tests
testContainsPoint
	| c |
	c := CircleShape new
		offset: 2 @ 3;
		radius: 5.
	self assert: (c containsPoint: c offset).
	self assert: (c containsPoint: 0 @ 0).
	self assert: (c containsPoint: 10 @ 10) not.
	self assert: (c containsPoint: 7 @ 3)