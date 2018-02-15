tests
testAccessing
	MineSweeper x: 10 y: 11 mines: 12.
	self assert: MineSweeper uniqueInstance board isNil not.
	self assert: MineSweeper uniqueInstance ui isNil not.
	self assert: MineSweeper uniqueInstance exists not.
	self assert: MineSweeper uniqueInstance time equals: 0.