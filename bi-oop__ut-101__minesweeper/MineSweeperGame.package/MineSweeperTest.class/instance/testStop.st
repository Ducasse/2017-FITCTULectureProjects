tests
testStop
	(MineSweeper x: 10 y: 11 mines: 12; uniqueInstance) start stop.
	self assert: MineSweeper uniqueInstance exists not.