tests
testRestart
	(MineSweeper x: 10 y: 11 mines: 12; uniqueInstance) start.
	MineSweeper uniqueInstance board apiOpenAtX: 1 Y: 1.
	MineSweeper uniqueInstance restart.
	self assert: (MineSweeper uniqueInstance board apiIsOpenedAtX: 1 Y: 1) not.
	MineSweeper uniqueInstance stop.