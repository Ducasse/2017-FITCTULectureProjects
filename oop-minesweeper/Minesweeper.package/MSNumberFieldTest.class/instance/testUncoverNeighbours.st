test actions
testUncoverNeighbours
	| field n1 n2 n3 |
	field := MSNumberField new.
	field number: 1.
	n1 := MSNumberField new.
	n2 := MSNumberField new.
	n3 := MSMineField new.
	field addNeighbour: n1.
	field addNeighbour: n2.
	field addNeighbour: n3.

	self assert: field covered equals: true.
	self assert: n1 covered equals: true.
	self assert: n2 covered equals: true.
	self assert: n3 covered equals: true.
	
	field uncover.
	self assert: field covered equals: false.
	self assert: n1 covered equals: true.
	self assert: n2 covered equals: true.
	self assert: n3 covered equals: true.
	
	field uncoverNeighbours.
	self assert: field covered equals: false.
	self assert: n1 covered equals: true.
	self assert: n2 covered equals: true.
	self assert: n3 covered equals: true.
	
	n3 mark.
	field uncoverNeighbours.
	self assert: field covered equals: false.
	self assert: n1 covered equals: false.
	self assert: n2 covered equals: false.
	self assert: n3 covered equals: true.
	