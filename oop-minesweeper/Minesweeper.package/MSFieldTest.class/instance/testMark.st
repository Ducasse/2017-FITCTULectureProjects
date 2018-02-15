tests
testMark
	| field |
	field := MSNumberField new.
	self assert: field marked equals: false.
	field mark.
	self assert: field marked equals: true.
	field unmark.
	self assert: field marked equals: false.