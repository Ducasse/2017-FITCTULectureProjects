tests
testOffset
	| s |
	s := Shape2DTestChild new.
	self assert: s offset equals: 0 @ 0.
	s offset: 5 @ 10.
	self assert: s offset equals: 5 @ 10.