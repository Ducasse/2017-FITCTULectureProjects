tests
testOffset
	| c |
	c := Camera new.
	self assert: c offset equals: 0@0.
	c offset: 1@1.
	self assert: c offset equals: 1@1.