test actions
testTooManyFlaggedNeighbours
	| field n1 n2 |
	field := MSNumberField new.
	field number: 1.
	n1 := MSNumberField new.
	n2 := MSNumberField new.
	field addNeighbour: n1.
	field addNeighbour: n2.
	self assert: field tooManyFlaggedNeighbours equals: false.
	n1 mark.
	self assert: field tooManyFlaggedNeighbours equals: false.
	n2 mark.
	self assert: field tooManyFlaggedNeighbours equals: true.