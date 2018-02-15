test actions
testUncoverAll
	| grid gameProperties |
	gameProperties := MSMediumGameProperties new.
	grid := MSGrid withGameProperties: gameProperties.
	
	grid setupGrid.
	
	grid grid do: [ :field |
		self assert: field covered.
	].
	
	grid uncoverAll.
	
	grid grid do: [ :field |
		self assert: (field covered not).	
	].
	