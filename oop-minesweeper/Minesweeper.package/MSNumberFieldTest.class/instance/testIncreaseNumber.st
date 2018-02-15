test actions
testIncreaseNumber
	| field |
	field := MSNumberField new.
	self assert: field number equals: 0.
	field increaseNumber.
	self assert: field number equals: 1.
	field increaseNumber.
	self assert: field number equals: 2.