tests
testAddNeighbour
	| field n1 n2 n3 neighbours |

	field := MSNumberField new.
	n1 := MSNumberField new.
	n2 := MSNumberField new.
	n3 := MSMineField new.
	
	neighbours := Set new.
	neighbours add: n1.
	neighbours add: n2.
	neighbours add: n3.
	
	field addNeighbour: n1.
	field addNeighbour: n2.
	field addNeighbour: n3.
	self assert: field neighbours equals: neighbours.