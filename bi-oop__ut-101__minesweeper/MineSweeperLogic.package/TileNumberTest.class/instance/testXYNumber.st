tests
testXYNumber
	| t |
	t := TileNumber x: 1 y: 2 number: 3.
	self assert: t getCoordinate x equals: 1. 
	self assert: t getCoordinate y equals: 2. 
	self assert: t number equals: 3. 