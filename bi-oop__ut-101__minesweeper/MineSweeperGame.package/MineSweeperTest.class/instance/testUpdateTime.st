tests
testUpdateTime
	MineSweeper x: 10 y: 11 mines: 12.
	10 timesRepeat: [ MineSweeper uniqueInstance updateTime ].
	self assert: MineSweeper uniqueInstance time equals: 10.