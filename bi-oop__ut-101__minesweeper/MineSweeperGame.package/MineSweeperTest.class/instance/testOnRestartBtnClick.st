tests
testOnRestartBtnClick
	|coord|
	
	coord := Coordinate new.
	10 timesRepeat: [
			MineSweeper x: 10 y: 10 mines: 20.
			coord x: 10 atRandom; y: 10 atRandom.
			MineSweeper uniqueInstance onClickEvent:  1 coord: coord.
			MineSweeper uniqueInstance onRestartBtnClick .
			self assert: (MineSweeper uniqueInstance board
				apiIsOpenedAtX: coord x Y: coord y) not  ].
	MineSweeper uniqueInstance stop.