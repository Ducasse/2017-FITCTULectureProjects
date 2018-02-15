test private
testPlaceMines
	| grid mineCount gameProperties |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	
	grid placeMines.
	
	mineCount := self countMines: (grid grid).

	self assert: (gameProperties mineCount) equals: mineCount.