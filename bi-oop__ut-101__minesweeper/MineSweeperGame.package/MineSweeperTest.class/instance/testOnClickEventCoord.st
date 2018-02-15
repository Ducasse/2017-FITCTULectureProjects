tests
testOnClickEventCoord
	|coord|
	
	coord := Coordinate new.
	10 timesRepeat: [ "left click test"
			MineSweeper x: 10 y: 10 mines: 20.
			coord x: 10 atRandom; y: 10 atRandom.
			MineSweeper uniqueInstance onClickEvent: 1 coord: coord.
			self assert: (MineSweeper uniqueInstance board
				apiIsOpenedAtX: coord x Y: coord y) ].
	
	10 timesRepeat: [ "right click test"
			MineSweeper x: 10 y: 10 mines: 20.
			coord x: 10 atRandom; y: 10 atRandom.
			MineSweeper uniqueInstance onClickEvent: 3 coord: coord.
			self assert: (MineSweeper uniqueInstance board
				apiIsMarkedAtX: coord x Y: coord y) ]