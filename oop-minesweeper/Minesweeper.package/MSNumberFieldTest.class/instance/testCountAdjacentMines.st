test actions
testCountAdjacentMines
	| field |
	field := MSNumberField new.
	field countAdjacentMines.
	
	self assert: field number equals: 0.
	
	field addNeighbour: MSMineField new.
	field addNeighbour: MSNumberField new.
	field addNeighbour: MSMineField new.
	
	field countAdjacentMines.
	self assert: field number equals: 2.