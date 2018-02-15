tests
testIsMine
	| field |
	field := MSNumberField new.
	self assert: field isMine equals: false.