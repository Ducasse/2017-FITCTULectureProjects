test actions
testSetupGrid
	| grid mineCount gameProperties |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	
	grid setupGrid.
	
	grid grid do: [ :field |
		self assert: field notNil.	
	].

	mineCount := self countMines: (grid grid).	

	self assert: mineCount equals: (gameProperties mineCount).	
	
	self verifyNeighbours: (grid grid).