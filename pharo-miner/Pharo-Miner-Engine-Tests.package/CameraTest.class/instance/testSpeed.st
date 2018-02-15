tests
testSpeed
	| c |
	c := Camera new.
	self assert: c speed equals: 1.
	c speed: 0.5.
	self assert: c speed equals: 0.5.