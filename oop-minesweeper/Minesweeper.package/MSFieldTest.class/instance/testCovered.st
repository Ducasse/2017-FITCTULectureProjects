tests
testCovered
	| field |
	field := MSNumberField new.
	self assert: field covered equals: true.
	field uncover.
	self assert: field covered equals: false.