test actions
testNumber
	| field |
	field := MSNumberField new.
	self assert: field number equals: 0.
	field number: 7.
	self assert: field number equals: 7.