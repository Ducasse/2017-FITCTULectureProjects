tests
testExists
	MineSweeper x: 10 y: 11 mines: 12.
	self assert: MineSweeper uniqueInstance exists not.
	MineSweeper uniqueInstance ui show.
	self assert: MineSweeper uniqueInstance exists.
	MineSweeper uniqueInstance ui close.