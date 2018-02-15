tests
testGenerateNumbers
	| b |
	b := Board x: 3 y: 3 mines: 0.
	b setMineAtX: 2 Y: 2.
	b setMineAtX: 1 Y: 1.
	b setMineAtX: 1 Y: 3.
	b setMineAtX: 2 Y: 1.
	b generateNumbers.
	
	self assert: ((b getTileAtX: 1 Y: 2) number) equals: 4.
	self assert: ((b getTileAtX: 3 Y: 1) number) equals: 2.
	self assert: ((b getTileAtX: 3 Y: 2) number) equals: 2.
	self assert: ((b getTileAtX: 2 Y: 3) number) equals: 2.
	self assert: ((b getTileAtX: 3 Y: 3) number) equals: 1.
	