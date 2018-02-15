tests
testIsMine
	| field |
	field := MSMineField new.
	self assert: field isMine equals: true.