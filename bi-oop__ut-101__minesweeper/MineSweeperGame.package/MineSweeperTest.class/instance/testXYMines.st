tests
testXYMines
	MineSweeper x: 10 y: 11 mines: 12.
	self assert: MineSweeper uniqueInstance board x equals: 10.
	self assert: MineSweeper uniqueInstance board y equals: 11.
	self assert: MineSweeper uniqueInstance board mines equals: 12.