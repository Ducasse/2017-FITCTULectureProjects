tests
testRefreshBoard
	|coord|
	
	coord := Coordinate new.
	10 timesRepeat: [ "left click test"
			MineSweeper x: 10 y: 10 mines: 20.
			coord x: 10 atRandom; y: 10 atRandom.
			
			MineSweeper uniqueInstance board apiOpenAtX: coord x Y: coord y.
			
			MineSweeper uniqueInstance ui uiBoard children do: [ :elem|
				(coord x = elem coord x) & (coord y = elem coord y) ifTrue: [
					self assert: elem isClicked not] "not open?"
				].
			
			MineSweeper uniqueInstance refreshBoard.
			
			MineSweeper uniqueInstance ui uiBoard children do: [ :elem|
				(coord x = elem coord x) & (coord y = elem coord y) ifTrue: [
					self assert: elem isClicked] "open?"
				].
			].