tests
testStart
	(MineSweeper x: 10 y: 11 mines: 12; uniqueInstance) start.
	self assert: MineSweeper uniqueInstance exists.
	MineSweeper uniqueInstance stop.